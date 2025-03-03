-- | Test cases for primitive functions

module Hydra.Test.TestSuite where

import qualified Hydra.Core as Core
import qualified Hydra.Mantle as Mantle
import qualified Hydra.Testing as Testing
import Data.Int
import Data.List as L
import Data.Map as M
import Data.Set as S

allTests :: Testing.TestGroup
allTests = Testing.TestGroup {
  Testing.testGroupName = "All tests",
  Testing.testGroupDescription = Nothing,
  Testing.testGroupSubgroups = [
    formattingTests,
    inferenceTests,
    primitiveTests],
  Testing.testGroupCases = []}

formattingTests :: Testing.TestGroup
formattingTests = Testing.TestGroup {
  Testing.testGroupName = "formatting tests",
  Testing.testGroupDescription = Nothing,
  Testing.testGroupSubgroups = [],
  Testing.testGroupCases = [
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#1 (lower_snake_case -> UPPER_SNAKE_CASE)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseFromString = "a_hello_world_42_a42_42a_b",
        Testing.caseConversionTestCaseToString = "A_HELLO_WORLD_42_A42_42A_B"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#2 (lower_snake_case -> camelCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseFromString = "a_hello_world_42_a42_42a_b",
        Testing.caseConversionTestCaseToString = "aHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#3 (lower_snake_case -> PascalCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseFromString = "a_hello_world_42_a42_42a_b",
        Testing.caseConversionTestCaseToString = "AHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#4 (lower_snake_case -> lower_snake_case)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseFromString = "a_hello_world_42_a42_42a_b",
        Testing.caseConversionTestCaseToString = "a_hello_world_42_a42_42a_b"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#5 (UPPER_SNAKE_CASE -> lower_snake_case)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseFromString = "A_HELLO_WORLD_42_A42_42A_B",
        Testing.caseConversionTestCaseToString = "a_hello_world_42_a42_42a_b"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#6 (UPPER_SNAKE_CASE -> camelCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseFromString = "A_HELLO_WORLD_42_A42_42A_B",
        Testing.caseConversionTestCaseToString = "aHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#7 (UPPER_SNAKE_CASE -> PascalCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseFromString = "A_HELLO_WORLD_42_A42_42A_B",
        Testing.caseConversionTestCaseToString = "AHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#8 (UPPER_SNAKE_CASE -> UPPER_SNAKE_CASE)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseFromString = "A_HELLO_WORLD_42_A42_42A_B",
        Testing.caseConversionTestCaseToString = "A_HELLO_WORLD_42_A42_42A_B"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#9 (camelCase -> lower_snake_case)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseFromString = "aHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "a_hello_world42_a4242a_b"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#10 (camelCase -> UPPER_SNAKE_CASE)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseFromString = "aHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "A_HELLO_WORLD42_A4242A_B"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#11 (camelCase -> PascalCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseFromString = "aHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "AHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#12 (camelCase -> camelCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseFromString = "aHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "aHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#13 (PascalCase -> lower_snake_case)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionLowerSnake,
        Testing.caseConversionTestCaseFromString = "AHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "a_hello_world42_a4242a_b"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#14 (PascalCase -> UPPER_SNAKE_CASE)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionUpperSnake,
        Testing.caseConversionTestCaseFromString = "AHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "A_HELLO_WORLD42_A4242A_B"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#15 (PascalCase -> camelCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionCamel,
        Testing.caseConversionTestCaseFromString = "AHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "aHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []},
    Testing.TestCaseWithMetadata {
      Testing.testCaseWithMetadataName = "#16 (PascalCase -> PascalCase)",
      Testing.testCaseWithMetadataCase = (Testing.TestCaseCaseConversion (Testing.CaseConversionTestCase {
        Testing.caseConversionTestCaseFromConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseToConvention = Mantle.CaseConventionPascal,
        Testing.caseConversionTestCaseFromString = "AHelloWorld42A4242aB",
        Testing.caseConversionTestCaseToString = "AHelloWorld42A4242aB"})),
      Testing.testCaseWithMetadataDescription = Nothing,
      Testing.testCaseWithMetadataTags = []}]}

inferenceTests :: Testing.TestGroup
inferenceTests = Testing.TestGroup {
  Testing.testGroupName = "inference tests",
  Testing.testGroupDescription = Nothing,
  Testing.testGroupSubgroups = [
    Testing.TestGroup {
      Testing.testGroupName = "Application terms",
      Testing.testGroupDescription = (Just "Check a few hand-picked application terms"),
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "#1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
            Testing.inferenceTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionLambda (Core.Lambda {
                Core.lambdaParameter = (Core.Name "x"),
                Core.lambdaDomain = Nothing,
                Core.lambdaBody = (Core.TermVariable (Core.Name "x"))}))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "foo"))})),
            Testing.inferenceTestCaseOutput = Core.TypeScheme {
              Core.typeSchemeVariables = [],
              Core.typeSchemeType = (Core.TypeLiteral Core.LiteralTypeString)}})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "#2",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
            Testing.inferenceTestCaseInput = (Core.TermFunction (Core.FunctionLambda (Core.Lambda {
              Core.lambdaParameter = (Core.Name "x"),
              Core.lambdaDomain = Nothing,
              Core.lambdaBody = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermApplication (Core.Application {
                  Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.math.sub"))),
                  Core.applicationArgument = (Core.TermApplication (Core.Application {
                    Core.applicationFunction = (Core.TermApplication (Core.Application {
                      Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.math.add"))),
                      Core.applicationArgument = (Core.TermVariable (Core.Name "x"))})),
                    Core.applicationArgument = (Core.TermVariable (Core.Name "x"))}))})),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)))}))}))),
            Testing.inferenceTestCaseOutput = Core.TypeScheme {
              Core.typeSchemeVariables = [],
              Core.typeSchemeType = (Core.TypeFunction (Core.FunctionType {
                Core.functionTypeDomain = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32)),
                Core.functionTypeCodomain = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32))}))}})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "Function terms",
      Testing.testGroupDescription = (Just "Check a few hand-picked function terms"),
      Testing.testGroupSubgroups = [
        Testing.TestGroup {
          Testing.testGroupName = "Check lambdas",
          Testing.testGroupDescription = Nothing,
          Testing.testGroupSubgroups = [],
          Testing.testGroupCases = [
            Testing.TestCaseWithMetadata {
              Testing.testCaseWithMetadataName = "#1",
              Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
                Testing.inferenceTestCaseInput = (Core.TermFunction (Core.FunctionLambda (Core.Lambda {
                  Core.lambdaParameter = (Core.Name "x"),
                  Core.lambdaDomain = Nothing,
                  Core.lambdaBody = (Core.TermVariable (Core.Name "x"))}))),
                Testing.inferenceTestCaseOutput = Core.TypeScheme {
                  Core.typeSchemeVariables = [
                    Core.Name "t0"],
                  Core.typeSchemeType = (Core.TypeFunction (Core.FunctionType {
                    Core.functionTypeDomain = (Core.TypeVariable (Core.Name "t0")),
                    Core.functionTypeCodomain = (Core.TypeVariable (Core.Name "t0"))}))}})),
              Testing.testCaseWithMetadataDescription = Nothing,
              Testing.testCaseWithMetadataTags = []},
            Testing.TestCaseWithMetadata {
              Testing.testCaseWithMetadataName = "#2",
              Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
                Testing.inferenceTestCaseInput = (Core.TermFunction (Core.FunctionLambda (Core.Lambda {
                  Core.lambdaParameter = (Core.Name "x"),
                  Core.lambdaDomain = Nothing,
                  Core.lambdaBody = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt16 137)))}))),
                Testing.inferenceTestCaseOutput = Core.TypeScheme {
                  Core.typeSchemeVariables = [
                    Core.Name "t0"],
                  Core.typeSchemeType = (Core.TypeFunction (Core.FunctionType {
                    Core.functionTypeDomain = (Core.TypeVariable (Core.Name "t0")),
                    Core.functionTypeCodomain = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt16))}))}})),
              Testing.testCaseWithMetadataDescription = Nothing,
              Testing.testCaseWithMetadataTags = []}]},
        Testing.TestGroup {
          Testing.testGroupName = "Check list eliminations",
          Testing.testGroupDescription = Nothing,
          Testing.testGroupSubgroups = [],
          Testing.testGroupCases = [
            Testing.TestCaseWithMetadata {
              Testing.testCaseWithMetadataName = "#1",
              Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
                Testing.inferenceTestCaseInput = (Core.TermFunction (Core.FunctionElimination (Core.EliminationList (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.math.add")))))),
                Testing.inferenceTestCaseOutput = Core.TypeScheme {
                  Core.typeSchemeVariables = [],
                  Core.typeSchemeType = (Core.TypeFunction (Core.FunctionType {
                    Core.functionTypeDomain = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32)),
                    Core.functionTypeCodomain = (Core.TypeFunction (Core.FunctionType {
                      Core.functionTypeDomain = (Core.TypeList (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32))),
                      Core.functionTypeCodomain = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32))}))}))}})),
              Testing.testCaseWithMetadataDescription = Nothing,
              Testing.testCaseWithMetadataTags = []},
            Testing.TestCaseWithMetadata {
              Testing.testCaseWithMetadataName = "#2",
              Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
                Testing.inferenceTestCaseInput = (Core.TermApplication (Core.Application {
                  Core.applicationFunction = (Core.TermFunction (Core.FunctionElimination (Core.EliminationList (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.math.add")))))),
                  Core.applicationArgument = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)))})),
                Testing.inferenceTestCaseOutput = Core.TypeScheme {
                  Core.typeSchemeVariables = [],
                  Core.typeSchemeType = (Core.TypeFunction (Core.FunctionType {
                    Core.functionTypeDomain = (Core.TypeList (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32))),
                    Core.functionTypeCodomain = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32))}))}})),
              Testing.testCaseWithMetadataDescription = Nothing,
              Testing.testCaseWithMetadataTags = []},
            Testing.TestCaseWithMetadata {
              Testing.testCaseWithMetadataName = "#3",
              Testing.testCaseWithMetadataCase = (Testing.TestCaseInference (Testing.InferenceTestCase {
                Testing.inferenceTestCaseInput = (Core.TermApplication (Core.Application {
                  Core.applicationFunction = (Core.TermApplication (Core.Application {
                    Core.applicationFunction = (Core.TermFunction (Core.FunctionElimination (Core.EliminationList (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.math.add")))))),
                    Core.applicationArgument = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)))})),
                  Core.applicationArgument = (Core.TermList [
                    Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                    Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                    Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)),
                    Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 4)),
                    (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 5)))])})),
                Testing.inferenceTestCaseOutput = Core.TypeScheme {
                  Core.typeSchemeVariables = [],
                  Core.typeSchemeType = (Core.TypeLiteral (Core.LiteralTypeInteger Core.IntegerTypeInt32))}})),
              Testing.testCaseWithMetadataDescription = Nothing,
              Testing.testCaseWithMetadataTags = []}]}],
      Testing.testGroupCases = []}],
  Testing.testGroupCases = []}

listPrimitiveTests :: Testing.TestGroup
listPrimitiveTests = Testing.TestGroup {
  Testing.testGroupName = "hydra.lib.lists primitives",
  Testing.testGroupDescription = Nothing,
  Testing.testGroupSubgroups = [
    Testing.TestGroup {
      Testing.testGroupName = "apply",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.apply"))),
                Core.applicationArgument = (Core.TermList [
                  Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toUpper")),
                  (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toLower")))])})),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralString "One"),
                Core.TermLiteral (Core.LiteralString "Two"),
                (Core.TermLiteral (Core.LiteralString "Three"))])})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "ONE"),
              Core.TermLiteral (Core.LiteralString "TWO"),
              Core.TermLiteral (Core.LiteralString "THREE"),
              Core.TermLiteral (Core.LiteralString "one"),
              Core.TermLiteral (Core.LiteralString "two"),
              (Core.TermLiteral (Core.LiteralString "three"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "bind",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.bind"))),
                Core.applicationArgument = (Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 4)))])})),
              Core.applicationArgument = (Core.TermFunction (Core.FunctionLambda (Core.Lambda {
                Core.lambdaParameter = (Core.Name "x"),
                Core.lambdaDomain = Nothing,
                Core.lambdaBody = (Core.TermApplication (Core.Application {
                  Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.pure"))),
                  Core.applicationArgument = (Core.TermApplication (Core.Application {
                    Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.math.neg"))),
                    Core.applicationArgument = (Core.TermVariable (Core.Name "x"))}))}))})))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 (0-1))),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 (0-2))),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 (0-3))),
              (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 (0-4))))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "concat",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.concat"))),
              Core.applicationArgument = (Core.TermList [
                Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))],
                Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 4)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 5)))],
                (Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 6)),
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 7)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 8)))])])})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 4)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 5)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 6)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 7)),
              (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 8)))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "head",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.head"))),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))])})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "intercalate",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.intercalate"))),
                Core.applicationArgument = (Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)))])})),
              Core.applicationArgument = (Core.TermList [
                Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))],
                Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 4)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 5)))],
                (Core.TermList [
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 6)),
                  Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 7)),
                  (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 8)))])])})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 4)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 5)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 6)),
              Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 7)),
              (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 8)))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "intersperse",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.intersperse"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "and"))})),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralString "one"),
                Core.TermLiteral (Core.LiteralString "two"),
                (Core.TermLiteral (Core.LiteralString "three"))])})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "one"),
              Core.TermLiteral (Core.LiteralString "and"),
              Core.TermLiteral (Core.LiteralString "two"),
              Core.TermLiteral (Core.LiteralString "and"),
              (Core.TermLiteral (Core.LiteralString "three"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "last",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.last"))),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))])})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "length",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.length"))),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)),
                Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 2)),
                (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))])})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "map",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.map"))),
                Core.applicationArgument = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toUpper")))})),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralString "one"),
                (Core.TermLiteral (Core.LiteralString "two"))])})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "ONE"),
              (Core.TermLiteral (Core.LiteralString "TWO"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "pure",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.lists.pure"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "one"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "one")])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]}],
  Testing.testGroupCases = []}

primitiveTests :: Testing.TestGroup
primitiveTests = Testing.TestGroup {
  Testing.testGroupName = "Primitive functions",
  Testing.testGroupDescription = (Just "Test cases for primitive functions"),
  Testing.testGroupSubgroups = [
    listPrimitiveTests,
    stringPrimitiveTests],
  Testing.testGroupCases = []}

stringPrimitiveTests :: Testing.TestGroup
stringPrimitiveTests = Testing.TestGroup {
  Testing.testGroupName = "hydra.lib.strings primitives",
  Testing.testGroupDescription = Nothing,
  Testing.testGroupSubgroups = [
    Testing.TestGroup {
      Testing.testGroupName = "cat",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.cat"))),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralString "one"),
                Core.TermLiteral (Core.LiteralString "two"),
                (Core.TermLiteral (Core.LiteralString "three"))])})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString "onetwothree"))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "2",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.cat"))),
              Core.applicationArgument = (Core.TermList [
                Core.TermLiteral (Core.LiteralString ""),
                Core.TermLiteral (Core.LiteralString "one"),
                Core.TermLiteral (Core.LiteralString ""),
                (Core.TermLiteral (Core.LiteralString ""))])})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString "one"))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "3",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.cat"))),
              Core.applicationArgument = (Core.TermList [])})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString ""))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "length",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.length"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString ""))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 0)))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "2",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.length"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "a"))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 1)))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "3",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.length"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "one"))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralInteger (Core.IntegerValueInt32 3)))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "splitOn",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "ss"))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "Mississippi"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "Mi"),
              Core.TermLiteral (Core.LiteralString "i"),
              (Core.TermLiteral (Core.LiteralString "ippi"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "2",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "Mississippi"))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "Mississippi"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString ""),
              (Core.TermLiteral (Core.LiteralString ""))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "3",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString " "))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "one two three"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "one"),
              Core.TermLiteral (Core.LiteralString "two"),
              (Core.TermLiteral (Core.LiteralString "three"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "4",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString " "))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString " one two three "))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString ""),
              Core.TermLiteral (Core.LiteralString "one"),
              Core.TermLiteral (Core.LiteralString "two"),
              Core.TermLiteral (Core.LiteralString "three"),
              (Core.TermLiteral (Core.LiteralString ""))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "5",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString " "))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "  one two three"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString ""),
              Core.TermLiteral (Core.LiteralString ""),
              Core.TermLiteral (Core.LiteralString "one"),
              Core.TermLiteral (Core.LiteralString "two"),
              (Core.TermLiteral (Core.LiteralString "three"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "6",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "  "))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "  one two three"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString ""),
              (Core.TermLiteral (Core.LiteralString "one two three"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "6",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "aa"))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "aaa"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString ""),
              (Core.TermLiteral (Core.LiteralString "a"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "7",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "a"))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString ""))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "")])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "8",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString ""))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "abc"))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString ""),
              Core.TermLiteral (Core.LiteralString "a"),
              Core.TermLiteral (Core.LiteralString "b"),
              (Core.TermLiteral (Core.LiteralString "c"))])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "9",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermApplication (Core.Application {
                Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.splitOn"))),
                Core.applicationArgument = (Core.TermLiteral (Core.LiteralString ""))})),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString ""))})),
            Testing.evaluationTestCaseOutput = (Core.TermList [
              Core.TermLiteral (Core.LiteralString "")])})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "toLower",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toLower"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "One TWO threE"))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString "one two three"))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "2",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toLower"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "Abc123"))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString "abc123"))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]},
    Testing.TestGroup {
      Testing.testGroupName = "toUpper",
      Testing.testGroupDescription = Nothing,
      Testing.testGroupSubgroups = [],
      Testing.testGroupCases = [
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "1",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toUpper"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "One TWO threE"))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString "ONE TWO THREE"))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []},
        Testing.TestCaseWithMetadata {
          Testing.testCaseWithMetadataName = "2",
          Testing.testCaseWithMetadataCase = (Testing.TestCaseEvaluation (Testing.EvaluationTestCase {
            Testing.evaluationTestCaseEvaluationStyle = Testing.EvaluationStyleEager,
            Testing.evaluationTestCaseInput = (Core.TermApplication (Core.Application {
              Core.applicationFunction = (Core.TermFunction (Core.FunctionPrimitive (Core.Name "hydra.lib.strings.toUpper"))),
              Core.applicationArgument = (Core.TermLiteral (Core.LiteralString "Abc123"))})),
            Testing.evaluationTestCaseOutput = (Core.TermLiteral (Core.LiteralString "ABC123"))})),
          Testing.testCaseWithMetadataDescription = Nothing,
          Testing.testCaseWithMetadataTags = []}]}],
  Testing.testGroupCases = []}