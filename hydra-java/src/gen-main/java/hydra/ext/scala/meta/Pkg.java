// Note: this is an automatically generated file. Do not edit.

package hydra.ext.scala.meta;

import java.io.Serializable;

public class Pkg implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.scala.meta.Pkg");
  
  public static final hydra.core.Name FIELD_NAME_NAME = new hydra.core.Name("name");
  
  public static final hydra.core.Name FIELD_NAME_REF = new hydra.core.Name("ref");
  
  public static final hydra.core.Name FIELD_NAME_STATS = new hydra.core.Name("stats");
  
  public final hydra.ext.scala.meta.Data_Name name;
  
  public final hydra.ext.scala.meta.Data_Ref ref;
  
  public final java.util.List<hydra.ext.scala.meta.Stat> stats;
  
  public Pkg (hydra.ext.scala.meta.Data_Name name, hydra.ext.scala.meta.Data_Ref ref, java.util.List<hydra.ext.scala.meta.Stat> stats) {
    java.util.Objects.requireNonNull((name));
    java.util.Objects.requireNonNull((ref));
    java.util.Objects.requireNonNull((stats));
    this.name = name;
    this.ref = ref;
    this.stats = stats;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Pkg)) {
      return false;
    }
    Pkg o = (Pkg) (other);
    return name.equals(o.name) && ref.equals(o.ref) && stats.equals(o.stats);
  }
  
  @Override
  public int hashCode() {
    return 2 * name.hashCode() + 3 * ref.hashCode() + 5 * stats.hashCode();
  }
  
  public Pkg withName(hydra.ext.scala.meta.Data_Name name) {
    java.util.Objects.requireNonNull((name));
    return new Pkg(name, ref, stats);
  }
  
  public Pkg withRef(hydra.ext.scala.meta.Data_Ref ref) {
    java.util.Objects.requireNonNull((ref));
    return new Pkg(name, ref, stats);
  }
  
  public Pkg withStats(java.util.List<hydra.ext.scala.meta.Stat> stats) {
    java.util.Objects.requireNonNull((stats));
    return new Pkg(name, ref, stats);
  }
}