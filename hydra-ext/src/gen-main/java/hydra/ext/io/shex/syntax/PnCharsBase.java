// Note: this is an automatically generated file. Do not edit.

package hydra.ext.io.shex.syntax;

import java.io.Serializable;

public abstract class PnCharsBase implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.io.shex.syntax.PnCharsBase");
  
  public static final hydra.core.Name FIELD_NAME_REGEX = new hydra.core.Name("regex");
  
  public static final hydra.core.Name FIELD_NAME_REGEX2 = new hydra.core.Name("regex2");
  
  private PnCharsBase () {
  
  }
  
  public abstract <R> R accept(Visitor<R> visitor) ;
  
  public interface Visitor<R> {
    R visit(Regex instance) ;
    
    R visit(Regex2 instance) ;
  }
  
  public interface PartialVisitor<R> extends Visitor<R> {
    default R otherwise(PnCharsBase instance) {
      throw new IllegalStateException("Non-exhaustive patterns when matching: " + (instance));
    }
    
    default R visit(Regex instance) {
      return otherwise((instance));
    }
    
    default R visit(Regex2 instance) {
      return otherwise((instance));
    }
  }
  
  public static final class Regex extends hydra.ext.io.shex.syntax.PnCharsBase implements Serializable {
    public final String value;
    
    public Regex (String value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Regex)) {
        return false;
      }
      Regex o = (Regex) (other);
      return value.equals(o.value);
    }
    
    @Override
    public int hashCode() {
      return 2 * value.hashCode();
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
  
  public static final class Regex2 extends hydra.ext.io.shex.syntax.PnCharsBase implements Serializable {
    public final String value;
    
    public Regex2 (String value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Regex2)) {
        return false;
      }
      Regex2 o = (Regex2) (other);
      return value.equals(o.value);
    }
    
    @Override
    public int hashCode() {
      return 2 * value.hashCode();
    }
    
    @Override
    public <R> R accept(Visitor<R> visitor) {
      return visitor.visit(this);
    }
  }
}