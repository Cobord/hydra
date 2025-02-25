// Note: this is an automatically generated file. Do not edit.

package hydra.ast;

import java.io.Serializable;

/**
 * An operator expression
 */
public class OpExpr implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ast.OpExpr");
  
  public static final hydra.core.Name FIELD_NAME_OP = new hydra.core.Name("op");
  
  public static final hydra.core.Name FIELD_NAME_LHS = new hydra.core.Name("lhs");
  
  public static final hydra.core.Name FIELD_NAME_RHS = new hydra.core.Name("rhs");
  
  public final hydra.ast.Op op;
  
  public final hydra.ast.Expr lhs;
  
  public final hydra.ast.Expr rhs;
  
  public OpExpr (hydra.ast.Op op, hydra.ast.Expr lhs, hydra.ast.Expr rhs) {
    java.util.Objects.requireNonNull((op));
    java.util.Objects.requireNonNull((lhs));
    java.util.Objects.requireNonNull((rhs));
    this.op = op;
    this.lhs = lhs;
    this.rhs = rhs;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof OpExpr)) {
      return false;
    }
    OpExpr o = (OpExpr) (other);
    return op.equals(o.op) && lhs.equals(o.lhs) && rhs.equals(o.rhs);
  }
  
  @Override
  public int hashCode() {
    return 2 * op.hashCode() + 3 * lhs.hashCode() + 5 * rhs.hashCode();
  }
  
  public OpExpr withOp(hydra.ast.Op op) {
    java.util.Objects.requireNonNull((op));
    return new OpExpr(op, lhs, rhs);
  }
  
  public OpExpr withLhs(hydra.ast.Expr lhs) {
    java.util.Objects.requireNonNull((lhs));
    return new OpExpr(op, lhs, rhs);
  }
  
  public OpExpr withRhs(hydra.ast.Expr rhs) {
    java.util.Objects.requireNonNull((rhs));
    return new OpExpr(op, lhs, rhs);
  }
}