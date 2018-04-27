#!/bin/bash 

show_menu()
{
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #Yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}**********************************H1-B APPLICATIONS BY TUSHAR**********************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU} Prerequisites(Enter here first to start HDFS in order to run Queries)${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} Queries ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} Exit Application${NORMAL}"
    echo -e "${MENU}****************************************************************************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to exit. ${NORMAL}"
    read opt
}

show_submenu1(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}***********************PREREQUISITES***********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} Connect to HDFS & Job History Server ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 2)${MENU} Run JPS ${NORMAL}" #The jps tool lists the instrumented HotSpot Java Virtual Machines (JVMs) on the target system. The tool is limited to reporting information on JVMs for which it has the access permissions.
        echo -e "${MENU}**${NUMBER} 3)${MENU} Show tables in Hive DB ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 4)${MENU} Show tables in MySQL DB ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 5)${MENU} Open MySQL ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 6)${MENU} Open Hive ${NORMAL}"	
	echo -e "${MENU}**${NUMBER} 7)${MENU} Close HDFS & Job History Server ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 8)${MENU} Open Eclipse IDE ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 9)${MENU} Exit to Main Menu ${NORMAL}"
 	echo -e "${MENU}***********************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to main menu. ${NORMAL}"	
	read option1
}

show_submenu2(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}**********************QUERIES**********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} Run Queries ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 2)${MENU} Delete Queries ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 3)${MENU} Exit to Main Menu${NORMAL}"
        echo -e "${MENU}***************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to main menu. ${NORMAL}"	
	read option2
}

show_submenu2_1()
{
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}**********************RUN QUERIES**********************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1.1) ${MENU} Is the number of petitions with Data Engineer job title increasing over time?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1.2) ${MENU} Find top 5 job titles who are having highest avg growth in applications. ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2.1) ${MENU} Which part of the US has the most Data Engineer jobs for each year? ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2.2) ${MENU} Find top 5 locations in the US who have got certified visa for each year.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3) ${MENU}   Which industry(soc_name) has the most number of Certified Data Scientist positions?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4) ${MENU}   Which top 5 employers file the most petitions each year? ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5.1) ${MENU} Find the most popular top 10 job positions for H1B visa applications for each year for total applications?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5.2) ${MENU} Find the most popular top 10 job positions for H1B visa applications for each year for only certified applications?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6) ${MENU}   Find the percentage and the count of each case status on total applications for each year. Create a graph depicting the pattern of all cases over the period of time.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 7) ${MENU}   Create a bar graph to depict the number of applications for each year.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 8) ${MENU}   Find the average Prevailing Wage for each Job for each Year. Arrange output in descending order.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 9) ${MENU}   Which are the employers along with the number of petitions who have the success rate more than 70% in petitions (total petitions filed equal to or more than 1000)?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 10) ${MENU}  Which are the job positions along with the number of petitions which have the success rate more than 70% in petitions (total petitions filed equal to or more than 1000)? ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 11) ${MENU}  Export result for option number 10 to MySQL database.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 12) ${MENU}  Exit to previous menu.${NORMAL}"
    echo -e "${MENU}*******************************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"
    read option2_1
}

show_submenu2_2()
{
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo -e "${MENU}**********************DELETE QUERIES**********************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1.1) ${MENU} Is the number of petitions with Data Engineer job title increasing over time?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1.2) ${MENU} Find top 5 job titles who are having highest avg growth in applications. ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2.1) ${MENU} Which part of the US has the most Data Engineer jobs for each year? ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3) ${MENU}   Which industry(soc_name) has the most number of Certified Data Scientist positions?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4) ${MENU}   Which top 5 employers file the most petitions each year? ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5.1) ${MENU} Find the most popular top 10 job positions for H1B visa applications for each year for total applications?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5.2) ${MENU} Find the most popular top 10 job positions for H1B visa applications for each year for for only certified applications?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6) ${MENU}   Find the percentage and the count of each case status on total applications for each year. Create a graph depicting the pattern of all cases over the period of time.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 7) ${MENU}   Create a bar graph to depict the number of applications for each year.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 9) ${MENU}   Which are the employers along with the number of petitions who have the success rate more than 70% in petitions (total petitions filed equal to or more than 1000)?${NORMAL}"
    echo -e "${MENU}**${NUMBER} 10) ${MENU}  Which are the job positions along with the number of petitions which have the success rate more than 70% in petitions (total petitions filed equal to or more than 1000)? ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 11) ${MENU}  Export result for option number 10 to MySQL database.${NORMAL}"
    echo -e "${MENU}**${NUMBER} 12) ${MENU}  Exit to previous menu.${NORMAL}"
    echo -e "${MENU}**********************************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"
    read option2_2
}

show_submenu2_1_1b_r(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}**********************RUN QUERIES OPTION 1.2**********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} Certified ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 2)${MENU} Certified Withdrawn ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 3)${MENU} Denied${NORMAL}"
	echo -e "${MENU}**${NUMBER} 4)${MENU} Withdrawn${NORMAL}"	
	echo -e "${MENU}**${NUMBER} 5)${MENU} Exit to previous Menu${NORMAL}"
        echo -e "${MENU}******************************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"	
	read option2_1_1b_r
}

show_submenu2_2_1b_d(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}**********************DELETE QUERIES OPTION 1.2**********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} Certified ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 2)${MENU} Certified Withdrawn ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 3)${MENU} Denied${NORMAL}"
	echo -e "${MENU}**${NUMBER} 4)${MENU} Withdrawn${NORMAL}"	
	echo -e "${MENU}**${NUMBER} 5)${MENU} Exit to previous Menu${NORMAL}"
        echo -e "${MENU}*********************************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"	
	read option2_2_1b_d
}

show_submenu2_1_4(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}***********************RUN QUERIES OPTION 4***********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} CERTIFIED ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 2)${MENU} CERTIFIED-WITHDRAWN ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 3)${MENU} DENIED ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 4)${MENU} WITHDRAWN ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 5)${MENU} Exit to previous Menu ${NORMAL}"
	echo -e "${MENU}******************************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"	
	read option2_1_4
}

show_submenu2_2_4(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}***********************DELETE QUERIES OPTION 4***********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} CERTIFIED ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 2)${MENU} CERTIFIED-WITHDRAWN ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 3)${MENU} DENIED ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 4)${MENU} WITHDRAWN ${NORMAL}"
	echo -e "${MENU}**${NUMBER} 5)${MENU} Exit to previous Menu ${NORMAL}"
	echo -e "${MENU}******************************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"	
	read option2_2_4
}

show_submenu2_1_5a(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}**********************RUN QUERIES OPTION 5.1**********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} All records in one file-Time consuming method. ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 2)${MENU} Records displayed per user selection of year-Quick method. ${NORMAL}"	
	echo -e "${MENU}**${NUMBER} 3)${MENU} Exit to previous Menu${NORMAL}"
        echo -e "${MENU}******************************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"	
	read option2_1_5a
}

show_submenu2_1_8(){
	NORMAL=`echo "\033[m"`
    	MENU=`echo "\033[36m"` #Blue
    	NUMBER=`echo "\033[33m"` #Yellow
    	FGRED=`echo "\033[41m"`
    	RED_TEXT=`echo "\033[31m"`
    	ENTER_LINE=`echo "\033[33m"`
	echo -e "${MENU}**********************RUN QUERIES OPTION 8**********************${NORMAL}"
	echo -e "${MENU}**${NUMBER} 1)${MENU} Certified ${NORMAL}"
        echo -e "${MENU}**${NUMBER} 2)${MENU} Certified Withdrawn ${NORMAL}"	
	echo -e "${MENU}**${NUMBER} 3)${MENU} Exit to previous Menu${NORMAL}"
        echo -e "${MENU}******************************************************************${NORMAL}"
	echo -e "${ENTER_LINE}Please select a menu option by entering the corresponding number or ${RED_TEXT}press enter to return to previous menu. ${NORMAL}"	
	read option2_1_8
}

function option_picked() 
{
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE="$1"  #modified to post the correct option selected
    echo -e "${COLOR}${MESSAGE}${RESET}"
}

clear
show_menu
while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then 
	clear;
            exit;
    else
        case $opt in
        
	1) clear;
        option_picked "Please select a menu option by entering the corresponding number";
	show_submenu1
	while [ option1 != '' ]
    		do
    		if [[ $option1 = "" ]]; then 
		clear;
            	 show_menu;break;
    		else	
		case $option1 in
			1) clear;
				option_picked "Connect to HDFS & Job History Server"
      				start-all.sh;
				mr-jobhistory-daemon.sh start historyserver;
				show_submenu1;
			;;	  
	
			2) clear;
				option_picked "Run JPS"
				jps;	
				show_submenu1;	
		        ;;
			
			3) clear;
				option_picked "Show all tables in 'h1b' DB in Hive"
				hive -e "use h1b; 
				show tables;";	
				show_submenu1;	
		        ;;

			4) clear;
				option_picked "Show all tables in MySQL DB named 'h1b'"
				mysql -u root -p'abcd' -e "use h1b; 
				show tables;";
				show_submenu1;
			;;

			5) clear;
				option_picked "Open MySQL"
				mysql -u root -p; 
				show_submenu1;
			;;
			
			6) clear;
				option_picked "Open Hive"
				hive;
				show_submenu1;
			;;			

			7) clear;
				option_picked "Disconnect from HDFS & Job History Server"
				stop-all.sh;
				mr-jobhistory-daemon.sh stop historyserver;
				show_submenu1;
			;;
			
			8) clear;
				option_picked "Open Eclipse"
				gnome-terminal --window-with-profile=Eclipse;
				show_submenu1;
			;;
			
			9) clear;
				show_menu;
				break;
			;;
			
			*) clear;
	        		option_picked "Invalid option. Please pick an option[1-9] from the menu";
	        		show_submenu1;
			;;
		esac
		fi
		done
	
        ;;

        2) clear;
        option_picked "Please select a menu option by entering the corresponding number";
	show_submenu2
	while [ option2 != '' ]
    		do
    		if [[ $option2 = "" ]]; then 
		clear;
            	 show_menu;break;
    		else	
		case $option2 in
			1) clear;
				option_picked "Run Queries-Please select a menu option by entering the corresponding number"
				show_submenu2_1
				while [ option2_1 != '' ]
    				do
    				if [[ $option2_1 = "" ]]; then 
					clear;
            	 			show_submenu2;break;
    				else	
					case $option2_1 in
						1.1) clear;
        						option_picked "1.1) Is the number of petitions with Data Engineer job title increasing over time?";
								pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_001_a.pig;
							hadoop fs -get /h1b/queries/pigqueries/Q_001_a/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
							gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_a/p*;
							show_submenu2_1;							
							;;
						1.2) clear;
							option_picked "1.2) Find top 5 job titles who are having highest growth in applications. Please select a menu option by entering the corresponding number.";
							show_submenu2_1_1b_r
							while [ option2_1_1b_r != '' ]
						    		do
						    		if [[ $option2_1_1b_r = "" ]]; then 
								clear;
							    	 show_submenu2_1;break;
						    		else	
								case $option2_1_1b_r in
									1) clear;
										option_picked "Certified";
						      				pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_001_b_certified.pig;
										hadoop fs -get /h1b/queries/pigqueries/Q_001_b_certified/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
										gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_certified/p*;
										show_submenu2_1_1b_r;							
									
									;;	  
	
									2) clear;
										option_picked "Certified Withdrawn";
						      				pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_001_b_certified_withdrawn.pig;
										hadoop fs -get /h1b/queries/pigqueries/Q_001_b_certified_withdrawn/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
										gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_certified_withdrawn/p*;
										show_submenu2_1_1b_r;							
									
									;;	
			
									3) clear;
										option_picked "Denied";
						      				pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_001_b_denied.pig;
										hadoop fs -get /h1b/queries/pigqueries/Q_001_b_denied/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
										gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_denied/p*;
										show_submenu2_1_1b_r;							
									
									;;	

									4) clear;
										option_picked "Withdrawn";
						      				pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_001_b_withdrawn.pig;
										hadoop fs -get /h1b/queries/pigqueries/Q_001_b_withdrawn/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
										gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_withdrawn/p*;
										show_submenu2_1_1b_r;							
									
									;;	
									5) clear;
										show_submenu2_1;
										break;
									;;
			
									*) clear;
										option_picked "Invalid option. Please pick an option[1-5] from the menu";
										show_submenu2_1_1b_r;
									;;
								esac
								fi
								done
						;; 
						2.1) clear;
							option_picked "2.1) Which part of the US has the most Data Engineer jobs for each year?";
							hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_002a.jar Q_002a /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_002a;
							hadoop fs -get /h1b/queries/mapreducequeries/Q_002a/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_002a;
							gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_002a/p*;
							show_submenu2_1;
							;;

						2.2) clear;
							option_picked "2.2) Find top 5 locations in the US who have got certified visa for each year.";
							echo -e "Enter the year (2011,2012,2013,2014,2015,2016)"
								read var
							    hive -e " select worksite,count(worksite) as total,year from h1b.h1b_final where year ='$var' and case_status='CERTIFIED' group by worksite,year order by total desc limit 5;" 
							show_submenu2_1;
							;;  

						3) clear;
							option_picked "3) Which industry(SOC_NAME) has the most number of Data Scientist positions?[certified]";
							hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_003.jar Q_003 /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_003;
							hadoop fs -get /h1b/queries/mapreducequeries/Q_003/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_003;
							gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_003/p*;
							show_submenu2_1;
							;;
						4) clear;
							option_picked "4) Which top 5 employers file the most petitions each year?";
							show_submenu2_1_4
							while [ option2_1_4 != '' ]
						    		do
						    		if [[ $option2_1_4 = "" ]]; then 
								clear;
							    	 show_submenu2_1;break;
						    		else	
								case $option2_1_4 in
									1) clear;
										option_picked "Certified";
						      				hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_004C.jar Q_004C /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_004C;
										hadoop fs -get /h1b/queries/mapreducequeries/Q_004C/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004C;
										gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004C/p*;
										show_submenu2_1_4;							
									
									;;	  
	
									2) clear;
										option_picked "Certified Withdrawn";
						      				hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_004CW.jar Q_004CW /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_004CW;
										hadoop fs -get /h1b/queries/mapreducequeries/Q_004CW/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004CW;
										gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004CW/p*;
										show_submenu2_1_4;							
									
									;;	
			
									3) clear;
										option_picked "Denied";
						      				hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_004D.jar Q_004D /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_004D;
										hadoop fs -get /h1b/queries/mapreducequeries/Q_004D/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004D;
										gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004D/p*;
										show_submenu2_1_4;							
									
									;;	

									4) clear;
										option_picked "Withdrawn";
						      				hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_004W.jar Q_004W /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_004W;
										hadoop fs -get /h1b/queries/mapreducequeries/Q_004W/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004W;
										gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004W/p*;
										show_submenu2_1_4;							
									
									;;	
									5) clear;
										show_submenu2_1;
										break;
									;;
			
									*) clear;
										option_picked "Invalid option. Please pick an option[1-5] from the menu";
										show_submenu2_1_4;
									;;
								esac
								fi
								done
						;; 
							 
						5.1) clear;
							option_picked "5.1) Find the most popular top 10 job positions for H1B visa applications for each year for total applications. Please select a menu option by entering the corresponding number.";
							show_submenu2_1_5a
							while [ option2_1_5a != '' ]
    							do
    							if [[ $option2_1_5a = "" ]]; then 
								clear;
            	 						show_submenu2_1;break;
    							else	
								case $option2_1_5a in

							1) clear;
							option_picked "All records in one file-Time consuming method."
							hive -e "use h1b;
							create table q_005_1 as select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '2011' group by job_title,year order by temp desc limit 10;
							insert into table q_005_1 select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '2012' group by job_title,year order by temp desc limit 10;
							insert into table q_005_1 select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '2013' group by job_title,year order by temp desc limit 10;
							insert into table q_005_1 select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '2014' group by job_title,year order by temp desc limit 10;
							insert into table q_005_1 select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '2015' group by job_title,year order by temp desc limit 10;
							insert into table q_005_1 select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '2016' group by job_title,year order by temp desc limit 10;
							INSERT OVERWRITE DIRECTORY '/h1b/queries/hivequeries/Q_005_1' row format delimited fields terminated by '\t' select * from q_005_1 sort by year;";
							hadoop fs -get /h1b/queries/hivequeries/Q_005_1/ /home/hduser/HadoopFiles/H1B_Project/Hive/;
							gedit /home/hduser/HadoopFiles/H1B_Project/Hive/Q_005_1/0*;
							show_submenu2_1_5a;
							;;
							
							2) clear;
							option_picked "Records displayed per user selection of year-Quick method."
							echo -e "Enter the year (2011,2012,2013,2014,2015,2016)"
							read var
							echo "For the selected year, top 10 job positions are:-";
	   						hive -e "select job_title,count(job_title) as temp,year from h1b.h1b_final where year = '$var'  group by job_title,year order by temp desc limit 10";
        						show_submenu2_1_5a;
							;;

							3) clear;
							show_submenu2_1; break;
							;;

							*) clear;
							echo "Invalid option, please select option [1-3].";
							show_submenu2_1_5a;
							;;
							esac
							fi
							done
						;;
							
						5.2) clear;
						       	option_picked "5.2) Find the most popular top 10 job positions for H1B visa applications for each year for only certified applications?";
							hadoop jar /home/hduser/HadoopFiles/H1B_Project/MapReduce/JAR_Files/Q_005b.jar Q_005b /user/hive/warehouse/h1b.db/h1b_final /h1b/queries/mapreducequeries/Q_005b;
							hadoop fs -get /h1b/queries/mapreducequeries/Q_005b/p* /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_005b;
							gedit /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_005b/p*;
							show_submenu2_1;
							;;
						6) clear;
							option_picked "6) Find the percentage and the count of each case status on total applications for each year. Create a graph depicting the pattern of all cases over the period of time.";
							pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_006.pig;
							hadoop fs -get /h1b/queries/pigqueries/Q_006/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
							gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_006/p*;
							libreoffice -o /home/hduser/HadoopFiles/H1B_Project/Excel/Q_006.ods;
							show_submenu2_1;
							;;
						7) clear;
							option_picked "7) Create a bar graph to depict the number of applications for each year";
							hive -e "INSERT OVERWRITE DIRECTORY '/h1b/queries/hivequeries/Q_007' row format delimited fields terminated by '\t' select case_status,year,count(year) from h1b.h1b_final group by case_status,year order by year";
							hadoop fs -get /h1b/queries/hivequeries/Q_007/ /home/hduser/HadoopFiles/H1B_Project/Hive/;
							gedit /home/hduser/HadoopFiles/H1B_Project/Hive/Q_007/0*;
							libreoffice -o /home/hduser/HadoopFiles/H1B_Project/Excel/Q_007.ods;
							       show_submenu2_1;
								;;
						8) clear;
							 option_picked "8) Find the average Prevailing Wage for each Job for each Year (take part time and full time separate). Arrange the output in descending order - [Certified and Certified Withdrawn.]";
							 show_submenu2_1_8
							 while [ option2_1_8 != '' ]
						    		do
						    		if [[ $option2_1_8 = "" ]]; then 
								clear;
							    	 show_submenu2_1;break;
						    		else		
							       
							    case $option2_1_8 in
								 1) clear;
								 echo -e "Enter the year(2011,2012,2013,2014,2015,2016)"
								 read year
								 echo -e "Enter the choice Full time/Part time.(Y/N)"
								 read var	
								 option_picked "The average wage for CERTIFIED jobs are :-";
								 hive -e "select job_title,full_time_position,year,avg(prevailing_wage) as average from h1b.h1b_final where full_time_position ='$var' and year='$year' and case_status = 'CERTIFIED' group by job_title,full_time_position,year order by average desc";
								 show_submenu2_1_8;	
								 ;;

								 2) clear;	
								 echo -e "Enter the year(2011,2012,2013,2014,2015,2016)"
								 read year
								 echo -e "Enter the choice Full time/Part time.(Y/N)"
								 read var
								 option_picked "The average wage for CERTIFIED-WITHDRAWN jobs are :-";
								 hive -e "select job_title,full_time_position,year,avg(prevailing_wage) as average from h1b.h1b_final where full_time_position ='$var' and year='$year' and case_status = 'CERTIFIED-WITHDRAWN' group by job_title,full_time_position,year order by average desc";
								 show_submenu2_1_8;
								 ;;
							         
								 3) clear;
								 show_submenu2_1;break;
								 ;;
								 
								 *) echo "Invalid option. Please select one option among the options[1-3]."
								 show_submenu2_1_8;	
								 ;;
								esac
								fi
								done
								;;
						
						9) clear;
							option_picked "9) Which are the employers along with the number of petitions who have the success rate of more than 70% in petitions. (total petitions filed 1000 OR more than 1000)?";
							pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_009.pig;
							hadoop fs -get /h1b/queries/pigqueries/Q_009/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
							gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_009/p*;
							show_submenu2_1;							
							;;

						10) clear;
							option_picked "10) Which are the job positions along with the number of petitions which have the success rate of more than 70% in petitions (total petitions filed 1000 OR more than 1000)?";
							pig -f /home/hduser/HadoopFiles/H1B_Project/Pig/PigQueries/Q_010.pig;
							hadoop fs -get /h1b/queries/pigqueries/Q_010/ /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/;
							gedit /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_010/p*;
							show_submenu2_1;							
							;;

						11) clear;
							option_picked "11) Export result for option number 10 to MySQL database.";
							sqoop export --connect jdbc:mysql://localhost/h1b --username root --password 'abcd' --table q11 --export-dir /h1b/queries/pigqueries/Q_010/p* --update-mode allowinsert --update-key job_title --input-fields-terminated-by '\t';
							mysql -u root -p'abcd' -e 'select * from h1b.q11 order by success_rate desc;';
							show_submenu2_1;
							;;
			
						12) clear;
							show_submenu2;
							break;
							;;
			
						*) clear;
							option_picked "Invalid option. Please pick an option[1.1-12] from the menu";
							show_submenu2_1;
							;;	
					esac
					fi
					done
	
				;;
				  
	
			2) clear;
				option_picked "Delete Queries-Please select a menu option by entering the corresponding number"
					show_submenu2_2
					while [ option2_2 != '' ]
			    		do
			    		if [[ $option2_2 = "" ]]; then 
					clear;
				    	 show_submenu2;break;
			    		else	
					case $option2_2 in
						1.1) clear;
        						option_picked "1.1) Is the number of petitions with Data Engineer job title increasing over time?";
								hadoop fs -rmr /h1b/queries/pigqueries/Q_001_a;
							 rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_a;
							 show_submenu2_2;
						;;
						1.2) clear;
							option_picked "1.2) Find top 5 job titles who are having highest growth in applications. Please select a menu option by entering the corresponding number.";
							show_submenu2_2_1b_d
							while [ option2_2_1b_d != '' ]
						    		do
						    		if [[ $option2_2_1b_d = "" ]]; then 
								clear;
							    	 show_submenu2_2;break;
						    		else	
								case $option2_2_1b_d in
									1) clear;
										option_picked "Certified";
						      				hadoop fs -rmr /h1b/queries/pigqueries/Q_001_b_certified;
										rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_certified;
										show_submenu2_2_1b_d;							
									
									;;	  
	
									2) clear;
										option_picked "Certified Withdrawn";
						      				hadoop fs -rmr /h1b/queries/pigqueries/Q_001_b_certified_withdrawn;
										rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_certified_withdrawn;
										show_submenu2_2_1b_d;							
									
									;;	
			
									3) clear;
										option_picked "Denied";
						      				hadoop fs -rmr /h1b/queries/pigqueries/Q_001_b_denied;
										rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_denied;
										show_submenu2_2_1b_d;							
									
									;;	

									4) clear;
										option_picked "Withdrawn";
						      				hadoop fs -rmr /h1b/queries/pigqueries/Q_001_b_withdrawn;
										rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_001_b_withdrawn;
										show_submenu2_2_1b_d;							
									
									;;	
									5) clear;
										show_submenu2_2;
										break;
									;;
			
									*) clear;
										option_picked "Invalid option. Please pick an option[1-5] from the menu";
										show_submenu2_2_1b_d;
									;;
								esac
								fi
								done
	
							;; 

						2.1) clear;
							option_picked "2.1) Which part of the US has the most Data Engineer jobs for each year?";
							hadoop fs -rmr /h1b/queries/mapreducequeries/Q_002a;
							rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_002a/p*;
							show_submenu2_2;
							;;
			
						3) clear;
							option_picked "3) Which industry(SOC_NAME) has the most number of Data Scientist positions?[certified]";
							hadoop fs -rmr /h1b/queries/mapreducequeries/Q_003;
							rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_003/p*;
							show_submenu2_2;
							;;

						4) clear;
							option_picked "4) Which top 5 employers file the most petitions each year?";
							show_submenu2_2_4
							while [ option2_2_4 != '' ]
						    		do
						    		if [[ $option2_2_4 = "" ]]; then 
								clear;
							    	 show_submenu2_2;break;
						    		else	
								case $option2_2_4 in
									1) clear;
										option_picked "Certified";
										hadoop fs -rmr /h1b/queries/mapreducequeries/Q_004C;
										rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004C/p*;
										show_submenu2_2_4;							
									
									;;	  
	
									2) clear;
										option_picked "Certified Withdrawn";
						      				hadoop fs -rmr /h1b/queries/mapreducequeries/Q_004CW;
										rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004CW/p*;
										show_submenu2_2_4;							
									
									;;	
			
									3) clear;
										option_picked "Denied";
						      				hadoop fs -rmr /h1b/queries/mapreducequeries/Q_004D;
										rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004D/p*;
										show_submenu2_2_4;							
									
									;;	

									4) clear;
										option_picked "Withdrawn";
						      				hadoop fs -rmr /h1b/queries/mapreducequeries/Q_004W;
										rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_004W/p*;
										show_submenu2_2_4;							
									
									;;	
									5) clear;
										show_submenu2_2;
										break;
									;;
			
									*) clear;
										option_picked "Invalid option. Please pick an option[1-5] from the menu";
										show_submenu2_2_4;
									;;
								esac
								fi
								done
	
							;;
			
						5.1) clear;
							option_picked "5.1) Find the most popular top 10 job positions for H1B visa applications for each year for total applications?";
							hive -e "use h1b; drop table q_005_1;";
							hadoop fs -rmr /h1b/queries/hivequeries/Q_005_1;
							rm -r /home/hduser/HadoopFiles/H1B_Project/Hive/Q_005_1;
							show_submenu2_2;
						;;

						5.2) clear;
							option_picked "5.2) Find the most popular top 10 job positions for H1B visa applications for each year for only certified applications?";
							hadoop fs -rmr /h1b/queries/mapreducequeries/Q_005b;
							rm /home/hduser/HadoopFiles/H1B_Project/MapReduce/MapReduce_Output/Q_005b/p*;
							show_submenu2_2;
							;;
						
						6) clear;
							option_picked "6) Find the percentage and the count of each case status on total applications for each year. Create a graph depicting the pattern of all cases over the period of time.";
							 hadoop fs -rmr /h1b/queries/pigqueries/Q_006;
							 rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_006;
							 show_submenu2_2;
						;;
						
						7) clear;
							option_picked "7) Create a bar graph to depict the number of applications for each year";
							hadoop fs -rmr /h1b/queries/hivequeries/Q_007;
							rm -r /home/hduser/HadoopFiles/H1B_Project/Hive/Q_007;
							show_submenu2_2;
						;;						

						9) clear;
							 option_picked "9) Which are the job positions along with the number of petitions which have the success rate of more than 70% in petitions (total petitions filed 1000 OR more than 1000)?";
							 hadoop fs -rmr /h1b/queries/pigqueries/Q_009;
							 rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_009;
							 show_submenu2_2;
						;;

						10) clear;
							 option_picked "10) Which are the job positions along with the number of petitions which have the success rate of more than 70% in petitions (total petitions filed 1000 OR more than 1000)?";
							 hadoop fs -rmr /h1b/queries/pigqueries/Q_010;
							 rm -r /home/hduser/HadoopFiles/H1B_Project/Pig/PigOutput/Q_010;
							 show_submenu2_2;
						;;
						
						11) clear;
							option_picked "11) Export result for option number 10 to MySQL database.";
							mysql -u root -p'abcd' -e "use h1b;
							delete from q11 where success_rate>0 || success_rate=0 || success_rate<0;";
							show_submenu2_2;
						;;
						
						12) clear;
							show_submenu2;
							break;
							;;												
						
						*) clear;
							option_picked "Invalid option. Please pick an option[1.1-12] from the menu";
							show_submenu2_2;
						;;
					esac
					fi
					done
	
		        ;;
			
			3) clear;
				show_menu;
				break;
			;;

			*) clear;
	        		option_picked "Invalid option. Please pick an option[1-3] from the menu";
	        		show_submenu2;
			;;
		esac
		fi
		done
	
	;;

	3) clear;
		exit;
	;;

	\n) clear;
		exit;
        ;;

        *) clear;
        option_picked "Invalid option. Please pick an option[1-3] from the menu";
        show_menu;
        ;;

    esac
fi

done
