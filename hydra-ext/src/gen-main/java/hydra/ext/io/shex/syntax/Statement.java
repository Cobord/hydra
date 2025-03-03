// Note: this is an automatically generated file. Do not edit.

package hydra.ext.io.shex.syntax;

import java.io.Serializable;

public abstract class Statement implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.io.shex.syntax.Statement");
  
  public static final hydra.core.Name FIELD_NAME_DIRECTIVE = new hydra.core.Name("directive");
  
  public static final hydra.core.Name FIELD_NAME_NOT_START_ACTION = new hydra.core.Name("notStartAction");
  
  private Statement () {
  
  }
  
  public abstract <R> R accept(Visitor<R> visitor) ;
  
  public interface Visitor<R> {
    R visit(Directive instance) ;
    
    R visit(NotStartAction instance) ;
  }
  
  public interface PartialVisitor<R> extends Visitor<R> {
    default R otherwise(Statement instance) {
      throw new IllegalStateException("Non-exhaustive patterns when matching: " + (instance));
    }
    
    default R visit(Directive instance) {
      return otherwise((instance));
    }
    
    default R visit(NotStartAction instance) {
      return otherwise((instance));
    }
  }
  
  public static final class Directive extends hydra.ext.io.shex.syntax.Statement implements Serializable {
    public final hydra.ext.io.shex.syntax.Directive value;
    
    public Directive (hydra.ext.io.shex.syntax.Directive value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Directive)) {
        return false;
      }
      Directive o = (Directive) (other);
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
  
  public static final class NotStartAction extends hydra.ext.io.shex.syntax.Statement implements Serializable {
    public final hydra.ext.io.shex.syntax.NotStartAction value;
    
    public NotStartAction (hydra.ext.io.shex.syntax.NotStartAction value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof NotStartAction)) {
        return false;
      }
      NotStartAction o = (NotStartAction) (other);
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