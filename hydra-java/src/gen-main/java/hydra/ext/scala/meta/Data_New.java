// Note: this is an automatically generated file. Do not edit.

package hydra.ext.scala.meta;

import java.io.Serializable;

public class Data_New implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.scala.meta.Data_New");
  
  public static final hydra.core.Name FIELD_NAME_INIT = new hydra.core.Name("init");
  
  public final hydra.ext.scala.meta.Init init;
  
  public Data_New (hydra.ext.scala.meta.Init init) {
    java.util.Objects.requireNonNull((init));
    this.init = init;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Data_New)) {
      return false;
    }
    Data_New o = (Data_New) (other);
    return init.equals(o.init);
  }
  
  @Override
  public int hashCode() {
    return 2 * init.hashCode();
  }
}