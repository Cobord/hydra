// Note: this is an automatically generated file. Do not edit.

package hydra.ext.java.syntax;

import java.io.Serializable;

public class NormalInterfaceDeclaration implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.java.syntax.NormalInterfaceDeclaration");
  
  public static final hydra.core.Name FIELD_NAME_MODIFIERS = new hydra.core.Name("modifiers");
  
  public static final hydra.core.Name FIELD_NAME_IDENTIFIER = new hydra.core.Name("identifier");
  
  public static final hydra.core.Name FIELD_NAME_PARAMETERS = new hydra.core.Name("parameters");
  
  public static final hydra.core.Name FIELD_NAME_EXTENDS = new hydra.core.Name("extends");
  
  public static final hydra.core.Name FIELD_NAME_BODY = new hydra.core.Name("body");
  
  public final java.util.List<hydra.ext.java.syntax.InterfaceModifier> modifiers;
  
  public final hydra.ext.java.syntax.TypeIdentifier identifier;
  
  public final java.util.List<hydra.ext.java.syntax.TypeParameter> parameters;
  
  public final java.util.List<hydra.ext.java.syntax.InterfaceType> extends_;
  
  public final hydra.ext.java.syntax.InterfaceBody body;
  
  public NormalInterfaceDeclaration (java.util.List<hydra.ext.java.syntax.InterfaceModifier> modifiers, hydra.ext.java.syntax.TypeIdentifier identifier, java.util.List<hydra.ext.java.syntax.TypeParameter> parameters, java.util.List<hydra.ext.java.syntax.InterfaceType> extends_, hydra.ext.java.syntax.InterfaceBody body) {
    java.util.Objects.requireNonNull((modifiers));
    java.util.Objects.requireNonNull((identifier));
    java.util.Objects.requireNonNull((parameters));
    java.util.Objects.requireNonNull((extends_));
    java.util.Objects.requireNonNull((body));
    this.modifiers = modifiers;
    this.identifier = identifier;
    this.parameters = parameters;
    this.extends_ = extends_;
    this.body = body;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof NormalInterfaceDeclaration)) {
      return false;
    }
    NormalInterfaceDeclaration o = (NormalInterfaceDeclaration) (other);
    return modifiers.equals(o.modifiers) && identifier.equals(o.identifier) && parameters.equals(o.parameters) && extends_.equals(o.extends_) && body.equals(o.body);
  }
  
  @Override
  public int hashCode() {
    return 2 * modifiers.hashCode() + 3 * identifier.hashCode() + 5 * parameters.hashCode() + 7 * extends_.hashCode() + 11 * body.hashCode();
  }
  
  public NormalInterfaceDeclaration withModifiers(java.util.List<hydra.ext.java.syntax.InterfaceModifier> modifiers) {
    java.util.Objects.requireNonNull((modifiers));
    return new NormalInterfaceDeclaration(modifiers, identifier, parameters, extends_, body);
  }
  
  public NormalInterfaceDeclaration withIdentifier(hydra.ext.java.syntax.TypeIdentifier identifier) {
    java.util.Objects.requireNonNull((identifier));
    return new NormalInterfaceDeclaration(modifiers, identifier, parameters, extends_, body);
  }
  
  public NormalInterfaceDeclaration withParameters(java.util.List<hydra.ext.java.syntax.TypeParameter> parameters) {
    java.util.Objects.requireNonNull((parameters));
    return new NormalInterfaceDeclaration(modifiers, identifier, parameters, extends_, body);
  }
  
  public NormalInterfaceDeclaration withExtends(java.util.List<hydra.ext.java.syntax.InterfaceType> extends_) {
    java.util.Objects.requireNonNull((extends_));
    return new NormalInterfaceDeclaration(modifiers, identifier, parameters, extends_, body);
  }
  
  public NormalInterfaceDeclaration withBody(hydra.ext.java.syntax.InterfaceBody body) {
    java.util.Objects.requireNonNull((body));
    return new NormalInterfaceDeclaration(modifiers, identifier, parameters, extends_, body);
  }
}