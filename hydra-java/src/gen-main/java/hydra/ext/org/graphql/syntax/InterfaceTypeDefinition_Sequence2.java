// Note: this is an automatically generated file. Do not edit.

package hydra.ext.org.graphql.syntax;

import java.io.Serializable;

public class InterfaceTypeDefinition_Sequence2 implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.org.graphql.syntax.InterfaceTypeDefinition_Sequence2");
  
  public static final hydra.core.Name FIELD_NAME_DESCRIPTION = new hydra.core.Name("description");
  
  public static final hydra.core.Name FIELD_NAME_NAME = new hydra.core.Name("name");
  
  public static final hydra.core.Name FIELD_NAME_IMPLEMENTS_INTERFACES = new hydra.core.Name("implementsInterfaces");
  
  public static final hydra.core.Name FIELD_NAME_DIRECTIVES = new hydra.core.Name("directives");
  
  public final hydra.util.Opt<hydra.ext.org.graphql.syntax.Description> description;
  
  public final hydra.ext.org.graphql.syntax.Name name;
  
  public final hydra.ext.org.graphql.syntax.ImplementsInterfaces implementsInterfaces;
  
  public final hydra.util.Opt<hydra.ext.org.graphql.syntax.Directives> directives;
  
  public InterfaceTypeDefinition_Sequence2 (hydra.util.Opt<hydra.ext.org.graphql.syntax.Description> description, hydra.ext.org.graphql.syntax.Name name, hydra.ext.org.graphql.syntax.ImplementsInterfaces implementsInterfaces, hydra.util.Opt<hydra.ext.org.graphql.syntax.Directives> directives) {
    java.util.Objects.requireNonNull((description));
    java.util.Objects.requireNonNull((name));
    java.util.Objects.requireNonNull((implementsInterfaces));
    java.util.Objects.requireNonNull((directives));
    this.description = description;
    this.name = name;
    this.implementsInterfaces = implementsInterfaces;
    this.directives = directives;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof InterfaceTypeDefinition_Sequence2)) {
      return false;
    }
    InterfaceTypeDefinition_Sequence2 o = (InterfaceTypeDefinition_Sequence2) (other);
    return description.equals(o.description) && name.equals(o.name) && implementsInterfaces.equals(o.implementsInterfaces) && directives.equals(o.directives);
  }
  
  @Override
  public int hashCode() {
    return 2 * description.hashCode() + 3 * name.hashCode() + 5 * implementsInterfaces.hashCode() + 7 * directives.hashCode();
  }
  
  public InterfaceTypeDefinition_Sequence2 withDescription(hydra.util.Opt<hydra.ext.org.graphql.syntax.Description> description) {
    java.util.Objects.requireNonNull((description));
    return new InterfaceTypeDefinition_Sequence2(description, name, implementsInterfaces, directives);
  }
  
  public InterfaceTypeDefinition_Sequence2 withName(hydra.ext.org.graphql.syntax.Name name) {
    java.util.Objects.requireNonNull((name));
    return new InterfaceTypeDefinition_Sequence2(description, name, implementsInterfaces, directives);
  }
  
  public InterfaceTypeDefinition_Sequence2 withImplementsInterfaces(hydra.ext.org.graphql.syntax.ImplementsInterfaces implementsInterfaces) {
    java.util.Objects.requireNonNull((implementsInterfaces));
    return new InterfaceTypeDefinition_Sequence2(description, name, implementsInterfaces, directives);
  }
  
  public InterfaceTypeDefinition_Sequence2 withDirectives(hydra.util.Opt<hydra.ext.org.graphql.syntax.Directives> directives) {
    java.util.Objects.requireNonNull((directives));
    return new InterfaceTypeDefinition_Sequence2(description, name, implementsInterfaces, directives);
  }
}