// Note: this is an automatically generated file. Do not edit.

package hydra.ext.scala.meta;

import java.io.Serializable;

public class Importee_Name implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.scala.meta.Importee_Name");
  
  public static final hydra.core.Name FIELD_NAME_NAME = new hydra.core.Name("name");
  
  public final hydra.ext.scala.meta.Name name;
  
  public Importee_Name (hydra.ext.scala.meta.Name name) {
    java.util.Objects.requireNonNull((name));
    this.name = name;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Importee_Name)) {
      return false;
    }
    Importee_Name o = (Importee_Name) (other);
    return name.equals(o.name);
  }
  
  @Override
  public int hashCode() {
    return 2 * name.hashCode();
  }
}