// Note: this is an automatically generated file. Do not edit.

package hydra.ext.scala.meta;

import java.io.Serializable;

public class Data_ForYield implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.scala.meta.Data_ForYield");
  
  public static final hydra.core.Name FIELD_NAME_ENUMS = new hydra.core.Name("enums");
  
  public final java.util.List<hydra.ext.scala.meta.Enumerator> enums;
  
  public Data_ForYield (java.util.List<hydra.ext.scala.meta.Enumerator> enums) {
    java.util.Objects.requireNonNull((enums));
    this.enums = enums;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Data_ForYield)) {
      return false;
    }
    Data_ForYield o = (Data_ForYield) (other);
    return enums.equals(o.enums);
  }
  
  @Override
  public int hashCode() {
    return 2 * enums.hashCode();
  }
}