// Note: this is an automatically generated file. Do not edit.

package hydra.ast;

import java.io.Serializable;

/**
 * An operator symbol
 */
public class Op implements Serializable {
  public static final hydra.core.Name TYPE_NAME = new hydra.core.Name("hydra.ast.Op");
  
  public static final hydra.core.Name FIELD_NAME_SYMBOL = new hydra.core.Name("symbol");
  
  public static final hydra.core.Name FIELD_NAME_PADDING = new hydra.core.Name("padding");
  
  public static final hydra.core.Name FIELD_NAME_PRECEDENCE = new hydra.core.Name("precedence");
  
  public static final hydra.core.Name FIELD_NAME_ASSOCIATIVITY = new hydra.core.Name("associativity");
  
  public final hydra.ast.Symbol symbol;
  
  public final hydra.ast.Padding padding;
  
  public final hydra.ast.Precedence precedence;
  
  public final hydra.ast.Associativity associativity;
  
  public Op (hydra.ast.Symbol symbol, hydra.ast.Padding padding, hydra.ast.Precedence precedence, hydra.ast.Associativity associativity) {
    java.util.Objects.requireNonNull((symbol));
    java.util.Objects.requireNonNull((padding));
    java.util.Objects.requireNonNull((precedence));
    java.util.Objects.requireNonNull((associativity));
    this.symbol = symbol;
    this.padding = padding;
    this.precedence = precedence;
    this.associativity = associativity;
  }
  
  @Override
  public boolean equals(Object other) {
    if (!(other instanceof Op)) {
      return false;
    }
    Op o = (Op) (other);
    return symbol.equals(o.symbol) && padding.equals(o.padding) && precedence.equals(o.precedence) && associativity.equals(o.associativity);
  }
  
  @Override
  public int hashCode() {
    return 2 * symbol.hashCode() + 3 * padding.hashCode() + 5 * precedence.hashCode() + 7 * associativity.hashCode();
  }
  
  public Op withSymbol(hydra.ast.Symbol symbol) {
    java.util.Objects.requireNonNull((symbol));
    return new Op(symbol, padding, precedence, associativity);
  }
  
  public Op withPadding(hydra.ast.Padding padding) {
    java.util.Objects.requireNonNull((padding));
    return new Op(symbol, padding, precedence, associativity);
  }
  
  public Op withPrecedence(hydra.ast.Precedence precedence) {
    java.util.Objects.requireNonNull((precedence));
    return new Op(symbol, padding, precedence, associativity);
  }
  
  public Op withAssociativity(hydra.ast.Associativity associativity) {
    java.util.Objects.requireNonNull((associativity));
    return new Op(symbol, padding, precedence, associativity);
  }
}