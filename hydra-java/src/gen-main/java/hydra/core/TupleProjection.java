// Note: this is an automatically generated file. Do not edit.

package hydra.core;

import java.io.Serializable;

/**
 * A tuple elimination; a projection from an integer-indexed product
 */
public class TupleProjection implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.core.TupleProjection");
  
  public static final hydra.core.Name FIELD_NAME_ARITY = new hydra.core.Name("arity");
  
  public static final hydra.core.Name FIELD_NAME_INDEX = new hydra.core.Name("index");
  
  /**
   * The arity of the tuple
   */
  public final Integer arity;
  
  /**
   * The 0-indexed offset from the beginning of the tuple
   */
  public final Integer index;
  
  public TupleProjection (Integer arity, Integer index) {
    java.util.Objects.requireNonNull((arity));
    java.util.Objects.requireNonNull((index));
    this.arity = arity;
    this.index = index;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof TupleProjection)) {
      return false;
    }
    TupleProjection o = (TupleProjection) (other);
    return arity.equals(o.arity) && index.equals(o.index);
  }
  
  @Override
  public int hashCode() {
    return 2 * arity.hashCode() + 3 * index.hashCode();
  }
  
  public TupleProjection withArity(Integer arity) {
    java.util.Objects.requireNonNull((arity));
    return new TupleProjection(arity, index);
  }
  
  public TupleProjection withIndex(Integer index) {
    java.util.Objects.requireNonNull((index));
    return new TupleProjection(arity, index);
  }
}