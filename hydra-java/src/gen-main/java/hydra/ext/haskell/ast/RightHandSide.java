// Note: this is an automatically generated file. Do not edit.

package hydra.ext.haskell.ast;

import java.io.Serializable;

public class RightHandSide implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.haskell.ast.RightHandSide");
  
  public static final hydra.core.Name FIELD_NAME_VALUE = new hydra.core.Name("value");
  
  public final hydra.ext.haskell.ast.Expression value;
  
  public RightHandSide (hydra.ext.haskell.ast.Expression value) {
    java.util.Objects.requireNonNull((value));
    this.value = value;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof RightHandSide)) {
      return false;
    }
    RightHandSide o = (RightHandSide) (other);
    return value.equals(o.value);
  }
  
  @Override
  public int hashCode() {
    return 2 * value.hashCode();
  }
}