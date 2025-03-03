// Note: this is an automatically generated file. Do not edit.

package hydra.ext.org.apache.tinkerpop.gremlin;

import java.io.Serializable;

public abstract class HasArgs implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.org.apache.tinkerpop.gremlin.HasArgs");
  
  public static final hydra.core.Name FIELD_NAME_STRING = new hydra.core.Name("string");
  
  public static final hydra.core.Name FIELD_NAME_TRAVERSAL_TOKEN = new hydra.core.Name("traversalToken");
  
  private HasArgs () {
  
  }
  
  public abstract <R> R accept(Visitor<R> visitor) ;
  
  public interface Visitor<R> {
    R visit(String_ instance) ;
    
    R visit(TraversalToken instance) ;
  }
  
  public interface PartialVisitor<R> extends Visitor<R> {
    default R otherwise(HasArgs instance) {
      throw new IllegalStateException("Non-exhaustive patterns when matching: " + (instance));
    }
    
    default R visit(String_ instance) {
      return otherwise((instance));
    }
    
    default R visit(TraversalToken instance) {
      return otherwise((instance));
    }
  }
  
  public static final class String_ extends hydra.ext.org.apache.tinkerpop.gremlin.HasArgs implements Serializable {
    public final hydra.ext.org.apache.tinkerpop.gremlin.HasStringArgumentAndOptionalStringLiteralVarargs value;
    
    public String_ (hydra.ext.org.apache.tinkerpop.gremlin.HasStringArgumentAndOptionalStringLiteralVarargs value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof String_)) {
        return false;
      }
      String_ o = (String_) (other);
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
  
  public static final class TraversalToken extends hydra.ext.org.apache.tinkerpop.gremlin.HasArgs implements Serializable {
    public final hydra.ext.org.apache.tinkerpop.gremlin.HasTraversalTokenArgs value;
    
    public TraversalToken (hydra.ext.org.apache.tinkerpop.gremlin.HasTraversalTokenArgs value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof TraversalToken)) {
        return false;
      }
      TraversalToken o = (TraversalToken) (other);
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