// Note: this is an automatically generated file. Do not edit.

package hydra.ext.org.ansi.sql.syntax;

import java.io.Serializable;

public class TableContentsSource_Subtable implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ext.org.ansi.sql.syntax.TableContentsSource_Subtable");
  
  public static final hydra.core.Name FIELD_NAME_TYPE = new hydra.core.Name("type");
  
  public static final hydra.core.Name FIELD_NAME_SUBTABLE = new hydra.core.Name("subtable");
  
  public static final hydra.core.Name FIELD_NAME_ELEMENTS = new hydra.core.Name("elements");
  
  public final hydra.ext.org.ansi.sql.syntax.PathResolvedUserDefinedTypeName type;
  
  public final hydra.util.Opt<hydra.ext.org.ansi.sql.syntax.SubtableClause> subtable;
  
  public final hydra.util.Opt<hydra.ext.org.ansi.sql.syntax.TableElementList> elements;
  
  public TableContentsSource_Subtable (hydra.ext.org.ansi.sql.syntax.PathResolvedUserDefinedTypeName type, hydra.util.Opt<hydra.ext.org.ansi.sql.syntax.SubtableClause> subtable, hydra.util.Opt<hydra.ext.org.ansi.sql.syntax.TableElementList> elements) {
    java.util.Objects.requireNonNull((type));
    java.util.Objects.requireNonNull((subtable));
    java.util.Objects.requireNonNull((elements));
    this.type = type;
    this.subtable = subtable;
    this.elements = elements;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof TableContentsSource_Subtable)) {
      return false;
    }
    TableContentsSource_Subtable o = (TableContentsSource_Subtable) (other);
    return type.equals(o.type) && subtable.equals(o.subtable) && elements.equals(o.elements);
  }
  
  @Override
  public int hashCode() {
    return 2 * type.hashCode() + 3 * subtable.hashCode() + 5 * elements.hashCode();
  }
  
  public TableContentsSource_Subtable withType(hydra.ext.org.ansi.sql.syntax.PathResolvedUserDefinedTypeName type) {
    java.util.Objects.requireNonNull((type));
    return new TableContentsSource_Subtable(type, subtable, elements);
  }
  
  public TableContentsSource_Subtable withSubtable(hydra.util.Opt<hydra.ext.org.ansi.sql.syntax.SubtableClause> subtable) {
    java.util.Objects.requireNonNull((subtable));
    return new TableContentsSource_Subtable(type, subtable, elements);
  }
  
  public TableContentsSource_Subtable withElements(hydra.util.Opt<hydra.ext.org.ansi.sql.syntax.TableElementList> elements) {
    java.util.Objects.requireNonNull((elements));
    return new TableContentsSource_Subtable(type, subtable, elements);
  }
}