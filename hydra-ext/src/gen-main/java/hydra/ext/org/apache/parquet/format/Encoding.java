// Note: this is an automatically generated file. Do not edit.

package hydra.ext.org.apache.parquet.format;

import java.io.Serializable;

/**
 * Encodings supported by Parquet.  Not all encodings are valid for all types.  These enums are also used to specify the encoding of definition and repetition levels. See the accompanying doc for the details of the more complicated encodings.
 */
public abstract class Encoding implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.org.apache.parquet.format.Encoding");
  
  public static final hydra.core.Name FIELD_NAME_PLAIN = new hydra.core.Name("plain");
  
  public static final hydra.core.Name FIELD_NAME_RLE = new hydra.core.Name("rle");
  
  public static final hydra.core.Name FIELD_NAME_BIT_PACKED = new hydra.core.Name("bitPacked");
  
  public static final hydra.core.Name FIELD_NAME_DELTA_BINARY_PACKED = new hydra.core.Name("deltaBinaryPacked");
  
  public static final hydra.core.Name FIELD_NAME_DELTA_LENGTH_BYTE_ARRAY = new hydra.core.Name("deltaLengthByteArray");
  
  public static final hydra.core.Name FIELD_NAME_DELTA_BYTE_ARRAY = new hydra.core.Name("deltaByteArray");
  
  public static final hydra.core.Name FIELD_NAME_RLE_DICTIONARY = new hydra.core.Name("rleDictionary");
  
  public static final hydra.core.Name FIELD_NAME_BYTE_STREAM_SPLIT = new hydra.core.Name("byteStreamSplit");
  
  private Encoding () {
  
  }
  
  public abstract <R> R accept(Visitor<R> visitor) ;
  
  public interface Visitor<R> {
    R visit(Plain instance) ;
    
    R visit(Rle instance) ;
    
    R visit(BitPacked instance) ;
    
    R visit(DeltaBinaryPacked instance) ;
    
    R visit(DeltaLengthByteArray instance) ;
    
    R visit(DeltaByteArray instance) ;
    
    R visit(RleDictionary instance) ;
    
    R visit(ByteStreamSplit instance) ;
  }
  
  public interface PartialVisitor<R> extends Visitor<R> {
    default R otherwise(Encoding instance) {
      throw new IllegalStateException("Non-exhaustive patterns when matching: " + (instance));
    }
    
    default R visit(Plain instance) {
      return otherwise((instance));
    }
    
    default R visit(Rle instance) {
      return otherwise((instance));
    }
    
    default R visit(BitPacked instance) {
      return otherwise((instance));
    }
    
    default R visit(DeltaBinaryPacked instance) {
      return otherwise((instance));
    }
    
    default R visit(DeltaLengthByteArray instance) {
      return otherwise((instance));
    }
    
    default R visit(DeltaByteArray instance) {
      return otherwise((instance));
    }
    
    default R visit(RleDictionary instance) {
      return otherwise((instance));
    }
    
    default R visit(ByteStreamSplit instance) {
      return otherwise((instance));
    }
  }
  
  /**
   * Default encoding.
   * BOOLEAN - 1 bit per value. 0 is false; 1 is true.
   * INT32 - 4 bytes per value.  Stored as little-endian.
   * INT64 - 8 bytes per value.  Stored as little-endian.
   * FLOAT - 4 bytes per value.  IEEE. Stored as little-endian.
   * DOUBLE - 8 bytes per value.  IEEE. Stored as little-endian.
   * BYTE_ARRAY - 4 byte length stored as little endian, followed by bytes.
   * FIXED_LEN_BYTE_ARRAY - Just the bytes.
   */
  public static final class Plain extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public Plain () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Plain)) {
        return false;
      }
      Plain o = (Plain) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Group packed run length encoding. Usable for definition/repetition levels encoding and Booleans (on one bit: 0 is false; 1 is true.)
   */
  public static final class Rle extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public Rle () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Rle)) {
        return false;
      }
      Rle o = (Rle) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Bit packed encoding.  This can only be used if the data has a known max width.  Usable for definition/repetition levels encoding.
   */
  public static final class BitPacked extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public BitPacked () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof BitPacked)) {
        return false;
      }
      BitPacked o = (BitPacked) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Delta encoding for integers. This can be used for int columns and works best on sorted data
   */
  public static final class DeltaBinaryPacked extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public DeltaBinaryPacked () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof DeltaBinaryPacked)) {
        return false;
      }
      DeltaBinaryPacked o = (DeltaBinaryPacked) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Encoding for byte arrays to separate the length values and the data. The lengths are encoded using DELTA_BINARY_PACKED
   */
  public static final class DeltaLengthByteArray extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public DeltaLengthByteArray () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof DeltaLengthByteArray)) {
        return false;
      }
      DeltaLengthByteArray o = (DeltaLengthByteArray) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Incremental-encoded byte array. Prefix lengths are encoded using DELTA_BINARY_PACKED. Suffixes are stored as delta length byte arrays.
   */
  public static final class DeltaByteArray extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public DeltaByteArray () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof DeltaByteArray)) {
        return false;
      }
      DeltaByteArray o = (DeltaByteArray) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Dictionary encoding: the ids are encoded using the RLE encoding
   */
  public static final class RleDictionary extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public RleDictionary () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof RleDictionary)) {
        return false;
      }
      RleDictionary o = (RleDictionary) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  /**
   * Encoding for floating-point data. K byte-streams are created where K is the size in bytes of the data type. The individual bytes of an FP value are scattered to the corresponding stream and the streams are concatenated. This itself does not reduce the size of the data but can lead to better compression afterwards.
   */
  public static final class ByteStreamSplit extends hydra.ext.org.apache.parquet.format.Encoding implements Serializable {
    public ByteStreamSplit () {
    
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof ByteStreamSplit)) {
        return false;
      }
      ByteStreamSplit o = (ByteStreamSplit) (other);
      return true;
    }
    
    @Override
    public int hashCode() {
      return 0;
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
}