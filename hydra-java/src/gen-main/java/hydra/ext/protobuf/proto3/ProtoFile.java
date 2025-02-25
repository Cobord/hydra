// Note: this is an automatically generated file. Do not edit.

package hydra.ext.protobuf.proto3;

import java.io.Serializable;

/**
 * A .proto file, usually containing one or more enum or message type definitions
 */
public class ProtoFile implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.protobuf.proto3.ProtoFile");
  
  public static final hydra.core.Name FIELD_NAME_PACKAGE = new hydra.core.Name("package");
  
  public static final hydra.core.Name FIELD_NAME_IMPORTS = new hydra.core.Name("imports");
  
  public static final hydra.core.Name FIELD_NAME_TYPES = new hydra.core.Name("types");
  
  public static final hydra.core.Name FIELD_NAME_OPTIONS = new hydra.core.Name("options");
  
  public final hydra.ext.protobuf.proto3.PackageName package_;
  
  public final java.util.List<hydra.ext.protobuf.proto3.FileReference> imports;
  
  public final java.util.List<hydra.ext.protobuf.proto3.Definition> types;
  
  public final java.util.List<hydra.ext.protobuf.proto3.Option> options;
  
  public ProtoFile (hydra.ext.protobuf.proto3.PackageName package_, java.util.List<hydra.ext.protobuf.proto3.FileReference> imports, java.util.List<hydra.ext.protobuf.proto3.Definition> types, java.util.List<hydra.ext.protobuf.proto3.Option> options) {
    java.util.Objects.requireNonNull((package_));
    java.util.Objects.requireNonNull((imports));
    java.util.Objects.requireNonNull((types));
    java.util.Objects.requireNonNull((options));
    this.package_ = package_;
    this.imports = imports;
    this.types = types;
    this.options = options;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof ProtoFile)) {
      return false;
    }
    ProtoFile o = (ProtoFile) (other);
    return package_.equals(o.package_) && imports.equals(o.imports) && types.equals(o.types) && options.equals(o.options);
  }
  
  @Override
  public int hashCode() {
    return 2 * package_.hashCode() + 3 * imports.hashCode() + 5 * types.hashCode() + 7 * options.hashCode();
  }
  
  public ProtoFile withPackage(hydra.ext.protobuf.proto3.PackageName package_) {
    java.util.Objects.requireNonNull((package_));
    return new ProtoFile(package_, imports, types, options);
  }
  
  public ProtoFile withImports(java.util.List<hydra.ext.protobuf.proto3.FileReference> imports) {
    java.util.Objects.requireNonNull((imports));
    return new ProtoFile(package_, imports, types, options);
  }
  
  public ProtoFile withTypes(java.util.List<hydra.ext.protobuf.proto3.Definition> types) {
    java.util.Objects.requireNonNull((types));
    return new ProtoFile(package_, imports, types, options);
  }
  
  public ProtoFile withOptions(java.util.List<hydra.ext.protobuf.proto3.Option> options) {
    java.util.Objects.requireNonNull((options));
    return new ProtoFile(package_, imports, types, options);
  }
}