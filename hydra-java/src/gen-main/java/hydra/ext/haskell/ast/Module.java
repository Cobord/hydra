// Note: this is an automatically generated file. Do not edit.

package hydra.ext.haskell.ast;

import java.io.Serializable;

public class Module implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.haskell.ast.Module");
  
  public static final hydra.core.Name FIELD_NAME_HEAD = new hydra.core.Name("head");
  
  public static final hydra.core.Name FIELD_NAME_IMPORTS = new hydra.core.Name("imports");
  
  public static final hydra.core.Name FIELD_NAME_DECLARATIONS = new hydra.core.Name("declarations");
  
  public final hydra.util.Opt<hydra.ext.haskell.ast.ModuleHead> head;
  
  public final java.util.List<hydra.ext.haskell.ast.Import> imports;
  
  public final java.util.List<hydra.ext.haskell.ast.DeclarationWithComments> declarations;
  
  public Module (hydra.util.Opt<hydra.ext.haskell.ast.ModuleHead> head, java.util.List<hydra.ext.haskell.ast.Import> imports, java.util.List<hydra.ext.haskell.ast.DeclarationWithComments> declarations) {
    java.util.Objects.requireNonNull((head));
    java.util.Objects.requireNonNull((imports));
    java.util.Objects.requireNonNull((declarations));
    this.head = head;
    this.imports = imports;
    this.declarations = declarations;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Module)) {
      return false;
    }
    Module o = (Module) (other);
    return head.equals(o.head) && imports.equals(o.imports) && declarations.equals(o.declarations);
  }
  
  @Override
  public int hashCode() {
    return 2 * head.hashCode() + 3 * imports.hashCode() + 5 * declarations.hashCode();
  }
  
  public Module withHead(hydra.util.Opt<hydra.ext.haskell.ast.ModuleHead> head) {
    java.util.Objects.requireNonNull((head));
    return new Module(head, imports, declarations);
  }
  
  public Module withImports(java.util.List<hydra.ext.haskell.ast.Import> imports) {
    java.util.Objects.requireNonNull((imports));
    return new Module(head, imports, declarations);
  }
  
  public Module withDeclarations(java.util.List<hydra.ext.haskell.ast.DeclarationWithComments> declarations) {
    java.util.Objects.requireNonNull((declarations));
    return new Module(head, imports, declarations);
  }
}