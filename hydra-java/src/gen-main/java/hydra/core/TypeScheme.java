// Note: this is an automatically generated file. Do not edit.

package hydra.core;

import java.io.Serializable;

/**
 * A type expression together with free type variables occurring in the expression
 */
public class TypeScheme implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.core.TypeScheme");
  
  public static final hydra.core.Name FIELD_NAME_VARIABLES = new hydra.core.Name("variables");
  
  public static final hydra.core.Name FIELD_NAME_TYPE = new hydra.core.Name("type");
  
  public final java.util.List<hydra.core.Name> variables;
  
  public final hydra.core.Type type;
  
  public TypeScheme (java.util.List<hydra.core.Name> variables, hydra.core.Type type) {
    java.util.Objects.requireNonNull((variables));
    java.util.Objects.requireNonNull((type));
    this.variables = variables;
    this.type = type;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof TypeScheme)) {
      return false;
    }
    TypeScheme o = (TypeScheme) (other);
    return variables.equals(o.variables) && type.equals(o.type);
  }
  
  @Override
  public int hashCode() {
    return 2 * variables.hashCode() + 3 * type.hashCode();
  }
  
  public TypeScheme withVariables(java.util.List<hydra.core.Name> variables) {
    java.util.Objects.requireNonNull((variables));
    return new TypeScheme(variables, type);
  }
  
  public TypeScheme withType(hydra.core.Type type) {
    java.util.Objects.requireNonNull((type));
    return new TypeScheme(variables, type);
  }
}