// Note: this is an automatically generated file. Do not edit.

package hydra.ext.cypher.openCypher;

import java.io.Serializable;

public abstract class Query implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.cypher.openCypher.Query");
  
  public static final hydra.core.Name FIELD_NAME_REGULAR = new hydra.core.Name("regular");
  
  public static final hydra.core.Name FIELD_NAME_STANDALONE = new hydra.core.Name("standalone");
  
  private Query () {
  
  }
  
  public abstract <R> R accept(Visitor<R> visitor) ;
  
  public interface Visitor<R> {
    R visit(Regular instance) ;
    
    R visit(Standalone instance) ;
  }
  
  public interface PartialVisitor<R> extends Visitor<R> {
    default R otherwise(Query instance) {
      throw new IllegalStateException("Non-exhaustive patterns when matching: " + (instance));
    }
    
    default R visit(Regular instance) {
      return otherwise((instance));
    }
    
    default R visit(Standalone instance) {
      return otherwise((instance));
    }
  }
  
  public static final class Regular extends hydra.ext.cypher.openCypher.Query implements Serializable {
    public final hydra.ext.cypher.openCypher.RegularQuery value;
    
    public Regular (hydra.ext.cypher.openCypher.RegularQuery value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Regular)) {
        return false;
      }
      Regular o = (Regular) (other);
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
  
  public static final class Standalone extends hydra.ext.cypher.openCypher.Query implements Serializable {
    public final hydra.ext.cypher.openCypher.StandaloneCall value;
    
    public Standalone (hydra.ext.cypher.openCypher.StandaloneCall value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Standalone)) {
        return false;
      }
      Standalone o = (Standalone) (other);
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