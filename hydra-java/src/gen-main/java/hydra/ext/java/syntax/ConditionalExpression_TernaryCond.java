// Note: this is an automatically generated file. Do not edit.

package hydra.ext.java.syntax;

import java.io.Serializable;

public class ConditionalExpression_TernaryCond implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.java.syntax.ConditionalExpression_TernaryCond");
  
  public static final hydra.core.Name FIELD_NAME_COND = new hydra.core.Name("cond");
  
  public static final hydra.core.Name FIELD_NAME_IF_TRUE = new hydra.core.Name("ifTrue");
  
  public static final hydra.core.Name FIELD_NAME_IF_FALSE = new hydra.core.Name("ifFalse");
  
  public final hydra.ext.java.syntax.ConditionalOrExpression cond;
  
  public final hydra.ext.java.syntax.Expression ifTrue;
  
  public final hydra.ext.java.syntax.ConditionalExpression ifFalse;
  
  public ConditionalExpression_TernaryCond (hydra.ext.java.syntax.ConditionalOrExpression cond, hydra.ext.java.syntax.Expression ifTrue, hydra.ext.java.syntax.ConditionalExpression ifFalse) {
    java.util.Objects.requireNonNull((cond));
    java.util.Objects.requireNonNull((ifTrue));
    java.util.Objects.requireNonNull((ifFalse));
    this.cond = cond;
    this.ifTrue = ifTrue;
    this.ifFalse = ifFalse;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof ConditionalExpression_TernaryCond)) {
      return false;
    }
    ConditionalExpression_TernaryCond o = (ConditionalExpression_TernaryCond) (other);
    return cond.equals(o.cond) && ifTrue.equals(o.ifTrue) && ifFalse.equals(o.ifFalse);
  }
  
  @Override
  public int hashCode() {
    return 2 * cond.hashCode() + 3 * ifTrue.hashCode() + 5 * ifFalse.hashCode();
  }
  
  public ConditionalExpression_TernaryCond withCond(hydra.ext.java.syntax.ConditionalOrExpression cond) {
    java.util.Objects.requireNonNull((cond));
    return new ConditionalExpression_TernaryCond(cond, ifTrue, ifFalse);
  }
  
  public ConditionalExpression_TernaryCond withIfTrue(hydra.ext.java.syntax.Expression ifTrue) {
    java.util.Objects.requireNonNull((ifTrue));
    return new ConditionalExpression_TernaryCond(cond, ifTrue, ifFalse);
  }
  
  public ConditionalExpression_TernaryCond withIfFalse(hydra.ext.java.syntax.ConditionalExpression ifFalse) {
    java.util.Objects.requireNonNull((ifFalse));
    return new ConditionalExpression_TernaryCond(cond, ifTrue, ifFalse);
  }
}