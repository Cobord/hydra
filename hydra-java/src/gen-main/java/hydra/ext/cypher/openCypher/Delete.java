// Note: this is an automatically generated file. Do not edit.

package hydra.ext.cypher.openCypher;

import java.io.Serializable;

public class Delete implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.cypher.openCypher.Delete");
  
  public static final hydra.core.Name FIELD_NAME_DETACH = new hydra.core.Name("detach");
  
  public static final hydra.core.Name FIELD_NAME_EXPRESSIONS = new hydra.core.Name("expressions");
  
  public final Boolean detach;
  
  public final java.util.List<hydra.ext.cypher.openCypher.Expression> expressions;
  
  public Delete (Boolean detach, java.util.List<hydra.ext.cypher.openCypher.Expression> expressions) {
    java.util.Objects.requireNonNull((detach));
    java.util.Objects.requireNonNull((expressions));
    this.detach = detach;
    this.expressions = expressions;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Delete)) {
      return false;
    }
    Delete o = (Delete) (other);
    return detach.equals(o.detach) && expressions.equals(o.expressions);
  }
  
  @Override
  public int hashCode() {
    return 2 * detach.hashCode() + 3 * expressions.hashCode();
  }
  
  public Delete withDetach(Boolean detach) {
    java.util.Objects.requireNonNull((detach));
    return new Delete(detach, expressions);
  }
  
  public Delete withExpressions(java.util.List<hydra.ext.cypher.openCypher.Expression> expressions) {
    java.util.Objects.requireNonNull((expressions));
    return new Delete(detach, expressions);
  }
}