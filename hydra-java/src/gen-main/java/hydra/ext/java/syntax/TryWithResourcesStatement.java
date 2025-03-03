// Note: this is an automatically generated file. Do not edit.

package hydra.ext.java.syntax;

import java.io.Serializable;

public class TryWithResourcesStatement implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.java.syntax.TryWithResourcesStatement");
  
  public static final hydra.core.Name FIELD_NAME_RESOURCE_SPECIFICATION = new hydra.core.Name("resourceSpecification");
  
  public static final hydra.core.Name FIELD_NAME_BLOCK = new hydra.core.Name("block");
  
  public static final hydra.core.Name FIELD_NAME_CATCHES = new hydra.core.Name("catches");
  
  public static final hydra.core.Name FIELD_NAME_FINALLY = new hydra.core.Name("finally");
  
  public final hydra.ext.java.syntax.ResourceSpecification resourceSpecification;
  
  public final hydra.ext.java.syntax.Block block;
  
  public final hydra.util.Opt<hydra.ext.java.syntax.Catches> catches;
  
  public final hydra.util.Opt<hydra.ext.java.syntax.Finally> finally_;
  
  public TryWithResourcesStatement (hydra.ext.java.syntax.ResourceSpecification resourceSpecification, hydra.ext.java.syntax.Block block, hydra.util.Opt<hydra.ext.java.syntax.Catches> catches, hydra.util.Opt<hydra.ext.java.syntax.Finally> finally_) {
    java.util.Objects.requireNonNull((resourceSpecification));
    java.util.Objects.requireNonNull((block));
    java.util.Objects.requireNonNull((catches));
    java.util.Objects.requireNonNull((finally_));
    this.resourceSpecification = resourceSpecification;
    this.block = block;
    this.catches = catches;
    this.finally_ = finally_;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof TryWithResourcesStatement)) {
      return false;
    }
    TryWithResourcesStatement o = (TryWithResourcesStatement) (other);
    return resourceSpecification.equals(o.resourceSpecification) && block.equals(o.block) && catches.equals(o.catches) && finally_.equals(o.finally_);
  }
  
  @Override
  public int hashCode() {
    return 2 * resourceSpecification.hashCode() + 3 * block.hashCode() + 5 * catches.hashCode() + 7 * finally_.hashCode();
  }
  
  public TryWithResourcesStatement withResourceSpecification(hydra.ext.java.syntax.ResourceSpecification resourceSpecification) {
    java.util.Objects.requireNonNull((resourceSpecification));
    return new TryWithResourcesStatement(resourceSpecification, block, catches, finally_);
  }
  
  public TryWithResourcesStatement withBlock(hydra.ext.java.syntax.Block block) {
    java.util.Objects.requireNonNull((block));
    return new TryWithResourcesStatement(resourceSpecification, block, catches, finally_);
  }
  
  public TryWithResourcesStatement withCatches(hydra.util.Opt<hydra.ext.java.syntax.Catches> catches) {
    java.util.Objects.requireNonNull((catches));
    return new TryWithResourcesStatement(resourceSpecification, block, catches, finally_);
  }
  
  public TryWithResourcesStatement withFinally(hydra.util.Opt<hydra.ext.java.syntax.Finally> finally_) {
    java.util.Objects.requireNonNull((finally_));
    return new TryWithResourcesStatement(resourceSpecification, block, catches, finally_);
  }
}