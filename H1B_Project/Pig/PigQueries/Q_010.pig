register /usr/local/hive/lib/hive-exec-1.2.1.jar
register /usr/local/hive/lib/hive-common-1.2.1.jar

data = LOAD '/user/hive/warehouse/h1b.db/h1b_final' using PigStorage('\t') as(s_no:int, case_status:chararray, employer_name:chararray, soc_name:chararray, job_title:chararray, full_time_position:chararray, prevailing_wage:int, year:chararray, worksite:chararray, longitude:double, latitude:double);

RemoveHeader= filter data by $0>=1; 

A= group RemoveHeader by $4;                                       --Count Total Applications
A1= foreach A generate group,COUNT(RemoveHeader.$1);


B= filter RemoveHeader by $1 == 'CERTIFIED';                       --Count Total Applications = 'CERTIFIED'
B1= group B by $4;
B2= foreach B1 generate group,COUNT(B.$1);



C= filter RemoveHeader by $1 == 'CERTIFIED-WITHDRAWN';             --Count Total Applications = 'CERTIFIED-WITHDRAWN'
C1= group C by $4; 
C2= foreach C1 generate group,COUNT(C.$1);


joined1= join B2 by $0,C2 by $0,A1 by $0;

joined2= foreach joined1 generate $0,$1,$3,$5;

MidOutput= foreach joined2 generate $0,(float)($1+$2)*100/($3),$3;  --SUCCESS_RATE=(CERTIFIED+CERTIFIED-WITHDRAWN)/TOTAL X 100

SecondMidOutput= filter MidOutput by $1>70 and $2 >= 1000;	           --Filter by success-rate > 70% and petition count >= 1000


final= order SecondMidOutput by $1 DESC;
--dump final;
store final INTO '/h1b/queries/pigqueries/Q_010' using PigStorage('\t');
