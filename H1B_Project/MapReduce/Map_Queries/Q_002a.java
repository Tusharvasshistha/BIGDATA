import java.io.IOException;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.mapreduce.Partitioner;
import java.util.TreeMap;
import org.apache.hadoop.mapreduce.Reducer;

public class Q_002a {
	public static class Q_002a_Mapper extends
			Mapper<LongWritable, Text, Text, LongWritable> {
		LongWritable one = new LongWritable(1);

		public void map(LongWritable key, Text values, Context context)
				throws IOException, InterruptedException {
			try {
				if (key.get() > 0)

				{

					String[] token = values.toString().split("\t");
					if (token[4].equals("DATA ENGINEER")) {
						Text answer = new Text(token[8] + "\t" + token[7]);
						context.write(answer, one);
					}
				}
			} catch (ArrayIndexOutOfBoundsException e) {
				System.out.println(e.getMessage());
			} catch (ArithmeticException e1) {
				System.out.println(e1.getMessage());

			}

		}

	}

	public static class Q_002a_Partitioner extends Partitioner<Text, LongWritable> {
		@Override
		public int getPartition(Text key, LongWritable value, int numReduceTasks) {
			String[] str = key.toString().split("\t");
			if (str[1].equals("2011"))
				return 0;
			if (str[1].equals("2012"))
				return 1;
			if (str[1].equals("2013"))
				return 2;
			if (str[1].equals("2014"))
				return 3;
			if (str[1].equals("2015"))
				return 4;
			if (str[1].equals("2016"))
				return 5;
			else
				return 6;
		}
	}

	public static class Q_002a_Reducer extends
			Reducer<Text, LongWritable, NullWritable, Text> {
		private TreeMap<LongWritable, Text> Top5DataEngineer = new TreeMap<LongWritable, Text>();
		long sum = 0;

		public void reduce(Text key, Iterable<LongWritable> values,
				Context context) throws IOException, InterruptedException {
			sum = 0;
			for (LongWritable val : values) {
				sum += val.get();
			}
			Top5DataEngineer.put(new LongWritable(sum), new Text(key + "\t"
					+ sum));
			if (Top5DataEngineer.size() > 1)
				Top5DataEngineer.remove(Top5DataEngineer.firstKey());
		}

		protected void cleanup(Context context) throws IOException,
				InterruptedException {
			for (Text t : Top5DataEngineer.values())
				context.write(NullWritable.get(), t);
		}
	}

	public static void main(String args[]) throws IOException,
			InterruptedException, ClassNotFoundException {
		Configuration conf = new Configuration();
		Job job = Job.getInstance(conf, "Top  5 Data Engineer in a worksite");

		job.setJarByClass(Q_002a.class);
		job.setMapperClass(Q_002a_Mapper.class);
		job.setPartitionerClass(Q_002a_Partitioner.class);
		job.setReducerClass(Q_002a_Reducer.class);

		job.setNumReduceTasks(6);

		job.setMapOutputKeyClass(Text.class);
		job.setMapOutputValueClass(LongWritable.class);

		job.setOutputKeyClass(NullWritable.class);
		job.setOutputValueClass(Text.class);

		FileInputFormat.addInputPath(job, new Path(args[0]));
		FileOutputFormat.setOutputPath(job, new Path(args[1]));
		System.exit(job.waitForCompletion(true) ? 0 : 1);

	}

}