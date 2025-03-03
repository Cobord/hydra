// Note: this is an automatically generated file. Do not edit.

package hydra.ext.java.language;

/**
 * Language constraints and reserved words for Java
 */
public interface Language {
  Integer javaMaxTupleLength = 9;
  
  static hydra.coders.Language javaLanguage() {
    return new hydra.coders.Language(new hydra.coders.LanguageName("hydra.ext.java"), new hydra.coders.LanguageConstraints(hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.mantle.EliminationVariant.List(),
      new hydra.mantle.EliminationVariant.Optional(),
      new hydra.mantle.EliminationVariant.Product(),
      new hydra.mantle.EliminationVariant.Record(),
      new hydra.mantle.EliminationVariant.Union(),
      new hydra.mantle.EliminationVariant.Wrap())), hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.mantle.LiteralVariant.Boolean_(),
      new hydra.mantle.LiteralVariant.Float_(),
      new hydra.mantle.LiteralVariant.Integer_(),
      new hydra.mantle.LiteralVariant.String_())), hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.core.FloatType.Float32(),
      new hydra.core.FloatType.Float64())), hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.mantle.FunctionVariant.Elimination(),
      new hydra.mantle.FunctionVariant.Lambda(),
      new hydra.mantle.FunctionVariant.Primitive())), hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.core.IntegerType.Bigint(),
      new hydra.core.IntegerType.Int8(),
      new hydra.core.IntegerType.Int16(),
      new hydra.core.IntegerType.Int32(),
      new hydra.core.IntegerType.Int64(),
      new hydra.core.IntegerType.Uint16())), hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.mantle.TermVariant.Application(),
      new hydra.mantle.TermVariant.Function(),
      new hydra.mantle.TermVariant.Let(),
      new hydra.mantle.TermVariant.List(),
      new hydra.mantle.TermVariant.Literal(),
      new hydra.mantle.TermVariant.Map(),
      new hydra.mantle.TermVariant.Optional(),
      new hydra.mantle.TermVariant.Product(),
      new hydra.mantle.TermVariant.Record(),
      new hydra.mantle.TermVariant.Set(),
      new hydra.mantle.TermVariant.Union(),
      new hydra.mantle.TermVariant.Variable(),
      new hydra.mantle.TermVariant.Wrap())), hydra.lib.sets.FromList.apply(java.util.Arrays.asList(
      new hydra.mantle.TypeVariant.Annotated(),
      new hydra.mantle.TypeVariant.Application(),
      new hydra.mantle.TypeVariant.Function(),
      new hydra.mantle.TypeVariant.Lambda(),
      new hydra.mantle.TypeVariant.List(),
      new hydra.mantle.TypeVariant.Literal(),
      new hydra.mantle.TypeVariant.Map(),
      new hydra.mantle.TypeVariant.Optional(),
      new hydra.mantle.TypeVariant.Product(),
      new hydra.mantle.TypeVariant.Record(),
      new hydra.mantle.TypeVariant.Set(),
      new hydra.mantle.TypeVariant.Union(),
      new hydra.mantle.TypeVariant.Variable(),
      new hydra.mantle.TypeVariant.Wrap())), (java.util.function.Function<hydra.core.Type, Boolean>) (s6 -> ((s6)).accept(new hydra.core.Type.PartialVisitor<>() {
      @Override
      public Boolean otherwise(hydra.core.Type instance) {
        return true;
      }
      
      @Override
      public Boolean visit(hydra.core.Type.Product instance) {
        return hydra.lib.equality.LtInt32.apply(
          hydra.lib.lists.Length.apply((instance.value)),
          (hydra.ext.java.language.Language.javaMaxTupleLength));
      }
    }))));
  }
  
  static java.util.Set<String> reservedWords() {
    java.util.List<String> specialNames = java.util.Arrays.asList("Elements");
    java.util.List<String> literals = java.util.Arrays.asList(
      "false",
      "null",
      "true");
    java.util.List<String> keywords = java.util.Arrays.asList(
      "abstract",
      "assert",
      "boolean",
      "break",
      "byte",
      "case",
      "catch",
      "char",
      "class",
      "const",
      "continue",
      "default",
      "do",
      "double",
      "else",
      "enum",
      "extends",
      "final",
      "finally",
      "float",
      "for",
      "goto",
      "if",
      "implements",
      "import",
      "instanceof",
      "int",
      "interface",
      "long",
      "native",
      "new",
      "package",
      "private",
      "protected",
      "public",
      "return",
      "short",
      "static",
      "strictfp",
      "super",
      "switch",
      "synchronized",
      "this",
      "throw",
      "throws",
      "transient",
      "try",
      "void",
      "volatile",
      "while");
    java.util.List<String> classNames = java.util.Arrays.asList(
      "AbstractMethodError",
      "Appendable",
      "ArithmeticException",
      "ArrayIndexOutOfBoundsException",
      "ArrayStoreException",
      "AssertionError",
      "AutoCloseable",
      "Boolean",
      "BootstrapMethodError",
      "Byte",
      "CharSequence",
      "Character",
      "Class",
      "ClassCastException",
      "ClassCircularityError",
      "ClassFormatError",
      "ClassLoader",
      "ClassNotFoundException",
      "ClassValue",
      "CloneNotSupportedException",
      "Cloneable",
      "Comparable",
      "Compiler",
      "Deprecated",
      "Double",
      "Enum",
      "EnumConstantNotPresentException",
      "Error",
      "Exception",
      "ExceptionInInitializerError",
      "Float",
      "IllegalAccessError",
      "IllegalAccessException",
      "IllegalArgumentException",
      "IllegalMonitorStateException",
      "IllegalStateException",
      "IllegalThreadStateException",
      "IncompatibleClassChangeError",
      "IndexOutOfBoundsException",
      "InheritableThreadLocal",
      "InstantiationError",
      "InstantiationException",
      "Integer",
      "InternalError",
      "InterruptedException",
      "Iterable",
      "LinkageError",
      "Long",
      "Math",
      "NegativeArraySizeException",
      "NoClassDefFoundError",
      "NoSuchFieldError",
      "NoSuchFieldException",
      "NoSuchMethodError",
      "NoSuchMethodException",
      "NullPointerException",
      "Number",
      "NumberFormatException",
      "Object",
      "OutOfMemoryError",
      "Override",
      "Package",
      "Process",
      "ProcessBuilder",
      "Readable",
      "ReflectiveOperationException",
      "Runnable",
      "Runtime",
      "RuntimeException",
      "RuntimePermission",
      "SafeVarargs",
      "SecurityException",
      "SecurityManager",
      "Short",
      "StackOverflowError",
      "StackTraceElement",
      "StrictMath",
      "String",
      "StringBuffer",
      "StringBuilder",
      "StringIndexOutOfBoundsException",
      "SuppressWarnings",
      "System",
      "Thread",
      "ThreadDeath",
      "ThreadGroup",
      "ThreadLocal",
      "Throwable",
      "TypeNotPresentException",
      "UnknownError",
      "UnsatisfiedLinkError",
      "UnsupportedClassVersionError",
      "UnsupportedOperationException",
      "VerifyError",
      "VirtualMachineError",
      "Void");
    return hydra.lib.sets.FromList.apply(hydra.lib.lists.Concat.apply(java.util.Arrays.asList(
      (specialNames),
      (classNames),
      (keywords),
      (literals))));
  }
}