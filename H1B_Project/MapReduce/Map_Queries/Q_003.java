import java.io.IOException;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import java.util.TreeMap;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

public class Q_003 {
	public static class Q_003Mapper extends
			Mapper<LongWritable, Text, Text, LongWritable> {

		public void map(LongWritable key, Text values, Context context)
				throws IOException, InterruptedException {
			try {
				if (key.get() > 0) {
					long count = 0;
					String[] token = values.toString().split("\t");

					if (token[4].equals("DATA SCIENTIST")) {
						if (token[1].equals("CERTIFIED")) {
							Text answer = new Text(token[3]);
							count++;
							context.write(answer, new LongWritable(count));
						}
					}
				}
			} catch (IndexOutOfBoundsException e) {
				System.out.println(e.getMessage());
			} catch (ArithmeticException e1) {
				System.out.println(e1.getMessage());

			}
		}
	}

	public static class Q_003Reducer extends
			Reducer<Text, LongWritable, NullWritable, Text> {
		private TreeMap<LongWritable, Text> DataScientistJobs = new TreeMap<LongWritable, Text>();

		public void reduce(Text key, Iterable<LongWritable> values,
				Context context) throws IOException, InterruptedException {

			long sum = 0;
			for (LongWritable val : values)
				sum += val.get();

			DataScientistJobs.put(new LongWritable(sum),
					new Text(key.toString() + "\t" + sum));
			if (DataScientistJobs.size() > 5)
				DataScientistJobs.remove(DataScientistJobs.firstKey());
		}

		protected void cleanup(Context context) throws IOException,
				InterruptedException {
			for (Text t : DataScientistJobs.descendingMap().values())
				context.write(NullWritable.get(), t);

		}

	}

	public static void main(String args[]) throws Exception {
		Configuration conf = new Configuration();
		Job job = Job.getInstance(conf, "Data Scientist jobs");

		job.setJarByClass(Q_003.class);
		job.setMapperClass(Q_003Mapper.class);
		job.setReducerClass(Q_003Reducer.class);
		job.setNumReduceTasks(1);

		job.setMapOutputKeyClass(Text.class);
		job.setMapOutputValueClass(LongWritable.class);

		job.setOutputKeyClass(NullWritable.class);
		job.setOutputValueClass(Text.class);

		FileInputFormat.addInputPath(job, new Path(args[0]));
		FileOutputFormat.setOutputPath(job, new Path(args[1]));

		System.exit(job.waitForCompletion(true) ? 1 : 0);

	}
}