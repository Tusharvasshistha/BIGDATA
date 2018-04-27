// ORM class for table 'q11'
// WARNING: This class is AUTO-GENERATED. Modify at your own risk.
//
// Debug information:
// Generated date: Fri Jan 19 13:22:35 IST 2018
// For connector: org.apache.sqoop.manager.MySQLManager
import org.apache.hadoop.io.BytesWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapred.lib.db.DBWritable;
import com.cloudera.sqoop.lib.JdbcWritableBridge;
import com.cloudera.sqoop.lib.DelimiterSet;
import com.cloudera.sqoop.lib.FieldFormatter;
import com.cloudera.sqoop.lib.RecordParser;
import com.cloudera.sqoop.lib.BooleanParser;
import com.cloudera.sqoop.lib.BlobRef;
import com.cloudera.sqoop.lib.ClobRef;
import com.cloudera.sqoop.lib.LargeObjectLoader;
import com.cloudera.sqoop.lib.SqoopRecord;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class q11 extends SqoopRecord  implements DBWritable, Writable {
  private final int PROTOCOL_VERSION = 3;
  public int getClassFormatVersion() { return PROTOCOL_VERSION; }
  protected ResultSet __cur_result_set;
  private String job_title;
  public String get_job_title() {
    return job_title;
  }
  public void set_job_title(String job_title) {
    this.job_title = job_title;
  }
  public q11 with_job_title(String job_title) {
    this.job_title = job_title;
    return this;
  }
  private java.math.BigDecimal success_rate;
  public java.math.BigDecimal get_success_rate() {
    return success_rate;
  }
  public void set_success_rate(java.math.BigDecimal success_rate) {
    this.success_rate = success_rate;
  }
  public q11 with_success_rate(java.math.BigDecimal success_rate) {
    this.success_rate = success_rate;
    return this;
  }
  private Integer petition_count;
  public Integer get_petition_count() {
    return petition_count;
  }
  public void set_petition_count(Integer petition_count) {
    this.petition_count = petition_count;
  }
  public q11 with_petition_count(Integer petition_count) {
    this.petition_count = petition_count;
    return this;
  }
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof q11)) {
      return false;
    }
    q11 that = (q11) o;
    boolean equal = true;
    equal = equal && (this.job_title == null ? that.job_title == null : this.job_title.equals(that.job_title));
    equal = equal && (this.success_rate == null ? that.success_rate == null : this.success_rate.equals(that.success_rate));
    equal = equal && (this.petition_count == null ? that.petition_count == null : this.petition_count.equals(that.petition_count));
    return equal;
  }
  public boolean equals0(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof q11)) {
      return false;
    }
    q11 that = (q11) o;
    boolean equal = true;
    equal = equal && (this.job_title == null ? that.job_title == null : this.job_title.equals(that.job_title));
    equal = equal && (this.success_rate == null ? that.success_rate == null : this.success_rate.equals(that.success_rate));
    equal = equal && (this.petition_count == null ? that.petition_count == null : this.petition_count.equals(that.petition_count));
    return equal;
  }
  public void readFields(ResultSet __dbResults) throws SQLException {
    this.__cur_result_set = __dbResults;
    this.job_title = JdbcWritableBridge.readString(1, __dbResults);
    this.success_rate = JdbcWritableBridge.readBigDecimal(2, __dbResults);
    this.petition_count = JdbcWritableBridge.readInteger(3, __dbResults);
  }
  public void readFields0(ResultSet __dbResults) throws SQLException {
    this.job_title = JdbcWritableBridge.readString(1, __dbResults);
    this.success_rate = JdbcWritableBridge.readBigDecimal(2, __dbResults);
    this.petition_count = JdbcWritableBridge.readInteger(3, __dbResults);
  }
  public void loadLargeObjects(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void loadLargeObjects0(LargeObjectLoader __loader)
      throws SQLException, IOException, InterruptedException {
  }
  public void write(PreparedStatement __dbStmt) throws SQLException {
    write(__dbStmt, 0);
  }

  public int write(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(job_title, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(success_rate, 2 + __off, 3, __dbStmt);
    JdbcWritableBridge.writeInteger(petition_count, 3 + __off, 4, __dbStmt);
    return 3;
  }
  public void write0(PreparedStatement __dbStmt, int __off) throws SQLException {
    JdbcWritableBridge.writeString(job_title, 1 + __off, 12, __dbStmt);
    JdbcWritableBridge.writeBigDecimal(success_rate, 2 + __off, 3, __dbStmt);
    JdbcWritableBridge.writeInteger(petition_count, 3 + __off, 4, __dbStmt);
  }
  public void readFields(DataInput __dataIn) throws IOException {
this.readFields0(__dataIn);  }
  public void readFields0(DataInput __dataIn) throws IOException {
    if (__dataIn.readBoolean()) { 
        this.job_title = null;
    } else {
    this.job_title = Text.readString(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.success_rate = null;
    } else {
    this.success_rate = com.cloudera.sqoop.lib.BigDecimalSerializer.readFields(__dataIn);
    }
    if (__dataIn.readBoolean()) { 
        this.petition_count = null;
    } else {
    this.petition_count = Integer.valueOf(__dataIn.readInt());
    }
  }
  public void write(DataOutput __dataOut) throws IOException {
    if (null == this.job_title) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, job_title);
    }
    if (null == this.success_rate) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.success_rate, __dataOut);
    }
    if (null == this.petition_count) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.petition_count);
    }
  }
  public void write0(DataOutput __dataOut) throws IOException {
    if (null == this.job_title) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    Text.writeString(__dataOut, job_title);
    }
    if (null == this.success_rate) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    com.cloudera.sqoop.lib.BigDecimalSerializer.write(this.success_rate, __dataOut);
    }
    if (null == this.petition_count) { 
        __dataOut.writeBoolean(true);
    } else {
        __dataOut.writeBoolean(false);
    __dataOut.writeInt(this.petition_count);
    }
  }
  private static final DelimiterSet __outputDelimiters = new DelimiterSet((char) 44, (char) 10, (char) 0, (char) 0, false);
  public String toString() {
    return toString(__outputDelimiters, true);
  }
  public String toString(DelimiterSet delimiters) {
    return toString(delimiters, true);
  }
  public String toString(boolean useRecordDelim) {
    return toString(__outputDelimiters, useRecordDelim);
  }
  public String toString(DelimiterSet delimiters, boolean useRecordDelim) {
    StringBuilder __sb = new StringBuilder();
    char fieldDelim = delimiters.getFieldsTerminatedBy();
    __sb.append(FieldFormatter.escapeAndEnclose(job_title==null?"null":job_title, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(success_rate==null?"null":success_rate.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(petition_count==null?"null":"" + petition_count, delimiters));
    if (useRecordDelim) {
      __sb.append(delimiters.getLinesTerminatedBy());
    }
    return __sb.toString();
  }
  public void toString0(DelimiterSet delimiters, StringBuilder __sb, char fieldDelim) {
    __sb.append(FieldFormatter.escapeAndEnclose(job_title==null?"null":job_title, delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(success_rate==null?"null":success_rate.toPlainString(), delimiters));
    __sb.append(fieldDelim);
    __sb.append(FieldFormatter.escapeAndEnclose(petition_count==null?"null":"" + petition_count, delimiters));
  }
  private static final DelimiterSet __inputDelimiters = new DelimiterSet((char) 9, (char) 10, (char) 0, (char) 0, false);
  private RecordParser __parser;
  public void parse(Text __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharSequence __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(byte [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(char [] __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(ByteBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  public void parse(CharBuffer __record) throws RecordParser.ParseError {
    if (null == this.__parser) {
      this.__parser = new RecordParser(__inputDelimiters);
    }
    List<String> __fields = this.__parser.parseRecord(__record);
    __loadFromFields(__fields);
  }

  private void __loadFromFields(List<String> fields) {
    Iterator<String> __it = fields.listIterator();
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.job_title = null; } else {
      this.job_title = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.success_rate = null; } else {
      this.success_rate = new java.math.BigDecimal(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.petition_count = null; } else {
      this.petition_count = Integer.valueOf(__cur_str);
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  private void __loadFromFields0(Iterator<String> __it) {
    String __cur_str = null;
    try {
    __cur_str = __it.next();
    if (__cur_str.equals("null")) { this.job_title = null; } else {
      this.job_title = __cur_str;
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.success_rate = null; } else {
      this.success_rate = new java.math.BigDecimal(__cur_str);
    }

    __cur_str = __it.next();
    if (__cur_str.equals("null") || __cur_str.length() == 0) { this.petition_count = null; } else {
      this.petition_count = Integer.valueOf(__cur_str);
    }

    } catch (RuntimeException e) {    throw new RuntimeException("Can't parse input data: '" + __cur_str + "'", e);    }  }

  public Object clone() throws CloneNotSupportedException {
    q11 o = (q11) super.clone();
    return o;
  }

  public void clone0(q11 o) throws CloneNotSupportedException {
  }

  public Map<String, Object> getFieldMap() {
    Map<String, Object> __sqoop$field_map = new TreeMap<String, Object>();
    __sqoop$field_map.put("job_title", this.job_title);
    __sqoop$field_map.put("success_rate", this.success_rate);
    __sqoop$field_map.put("petition_count", this.petition_count);
    return __sqoop$field_map;
  }

  public void getFieldMap0(Map<String, Object> __sqoop$field_map) {
    __sqoop$field_map.put("job_title", this.job_title);
    __sqoop$field_map.put("success_rate", this.success_rate);
    __sqoop$field_map.put("petition_count", this.petition_count);
  }

  public void setField(String __fieldName, Object __fieldVal) {
    if ("job_title".equals(__fieldName)) {
      this.job_title = (String) __fieldVal;
    }
    else    if ("success_rate".equals(__fieldName)) {
      this.success_rate = (java.math.BigDecimal) __fieldVal;
    }
    else    if ("petition_count".equals(__fieldName)) {
      this.petition_count = (Integer) __fieldVal;
    }
    else {
      throw new RuntimeException("No such field: " + __fieldName);
    }
  }
  public boolean setField0(String __fieldName, Object __fieldVal) {
    if ("job_title".equals(__fieldName)) {
      this.job_title = (String) __fieldVal;
      return true;
    }
    else    if ("success_rate".equals(__fieldName)) {
      this.success_rate = (java.math.BigDecimal) __fieldVal;
      return true;
    }
    else    if ("petition_count".equals(__fieldName)) {
      this.petition_count = (Integer) __fieldVal;
      return true;
    }
    else {
      return false;    }
  }
}
