// Note: this is an automatically generated file. Do not edit.

package hydra.ext.haskell.ast;

import java.io.Serializable;

/**
 * An import specification
 */
public abstract class SpecImport implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.haskell.ast.SpecImport");
  
  public static final hydra.core.Name FIELD_NAME_LIST = new hydra.core.Name("list");
  
  public static final hydra.core.Name FIELD_NAME_HIDING = new hydra.core.Name("hiding");
  
  private SpecImport () {
  
  }
  
  public abstract <R> R accept(Visitor<R> visitor) ;
  
  public interface Visitor<R> {
    R visit(List instance) ;
    
    R visit(Hiding instance) ;
  }
  
  public interface PartialVisitor<R> extends Visitor<R> {
    default R otherwise(SpecImport instance) {
      throw new IllegalStateException("Non-exhaustive patterns when matching: " + (instance));
    }
    
    default R visit(List instance) {
      return otherwise((instance));
    }
    
    default R visit(Hiding instance) {
      return otherwise((instance));
    }
  }
  
  public static final class List extends hydra.ext.haskell.ast.SpecImport implements Serializable {
    public final java.util.List<hydra.ext.haskell.ast.ImportExportSpec> value;
    
    public List (java.util.List<hydra.ext.haskell.ast.ImportExportSpec> value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof List)) {
        return false;
      }
      List o = (List) (other);
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
  
  public static final class Hiding extends hydra.ext.haskell.ast.SpecImport implements Serializable {
    public final java.util.List<hydra.ext.haskell.ast.ImportExportSpec> value;
    
    public Hiding (java.util.List<hydra.ext.haskell.ast.ImportExportSpec> value) {
      java.util.Objects.requireNonNull((value));
      this.value = value;
    }
    
    @Override
    public boolean equals(Object other) {
      if (!(other instanceof Hiding)) {
        return false;
      }
      Hiding o = (Hiding) (other);
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