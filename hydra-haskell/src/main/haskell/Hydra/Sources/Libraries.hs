{-# LANGUAGE OverloadedStrings #-}

module Hydra.Sources.Libraries where

import Hydra.Kernel
import qualified Hydra.Dsl.Expect as Expect
import Hydra.Dsl.Prims as Prims
import qualified Hydra.Dsl.Terms as Terms
import qualified Hydra.Dsl.Types as Types

import qualified Hydra.Lib.Chars as Chars
import qualified Hydra.Lib.Equality as Equality
import qualified Hydra.Lib.Flows as Flows
import qualified Hydra.Lib.Io as Io
import qualified Hydra.Lib.Lists as Lists
import qualified Hydra.Lib.Literals as Literals
import qualified Hydra.Lib.Logic as Logic
import qualified Hydra.Lib.Maps as Maps
import qualified Hydra.Lib.Math as Math
import qualified Hydra.Lib.Optionals as Optionals
import qualified Hydra.Lib.Sets as Sets
import qualified Hydra.Lib.Strings as Strings

import qualified Data.List as L


_hydra_lib_chars :: Namespace
_hydra_lib_chars = Namespace "hydra.lib.chars"

_chars_isAlphaNum = qname _hydra_lib_chars "isAlphaNum" :: Name
_chars_isLower = qname _hydra_lib_chars "isLower" :: Name
_chars_isSpace = qname _hydra_lib_chars "isSpace" :: Name
_chars_isUpper = qname _hydra_lib_chars "isUpper" :: Name
_chars_toLower = qname _hydra_lib_chars "toLower" :: Name
_chars_toUpper = qname _hydra_lib_chars "toUpper" :: Name

hydraLibChars :: Library
hydraLibChars = standardLibrary _hydra_lib_strings [
  prim1 [] _chars_isLower int32 boolean Chars.isLower,
  prim1 [] _chars_isUpper int32 boolean Chars.isUpper,
  prim1 [] _chars_toLower int32 int32 Chars.toLower,
  prim1 [] _chars_toUpper int32 int32 Chars.toUpper]

_hydra_lib_equality :: Namespace
_hydra_lib_equality = Namespace "hydra.lib.equality"

_equality_equal = qname _hydra_lib_equality "equal" :: Name
_equality_equalBinary = qname _hydra_lib_equality "equalBinary" :: Name
_equality_equalBoolean = qname _hydra_lib_equality "equalBoolean" :: Name
_equality_equalBigfloat = qname _hydra_lib_equality "equalBigfloat" :: Name
_equality_equalFloat32 = qname _hydra_lib_equality "equalFloat32" :: Name
_equality_equalFloat64 = qname _hydra_lib_equality "equalFloat64" :: Name
_equality_equalBigint = qname _hydra_lib_equality "equalBigint" :: Name
_equality_equalInt8 = qname _hydra_lib_equality "equalInt8" :: Name
_equality_equalInt16 = qname _hydra_lib_equality "equalInt16" :: Name
_equality_equalInt32 = qname _hydra_lib_equality "equalInt32" :: Name
_equality_equalInt64 = qname _hydra_lib_equality "equalInt64" :: Name
_equality_equalTerm = qname _hydra_lib_equality "equalTerm" :: Name
_equality_equalType = qname _hydra_lib_equality "equalType" :: Name
_equality_equalUint8 = qname _hydra_lib_equality "equalUint8" :: Name
_equality_equalUint16 = qname _hydra_lib_equality "equalUint16" :: Name
_equality_equalUint32 = qname _hydra_lib_equality "equalUint32" :: Name
_equality_equalUint64 = qname _hydra_lib_equality "equalUint64" :: Name
_equality_equalString = qname _hydra_lib_equality "equalString" :: Name
_equality_identity = qname _hydra_lib_equality "identity" :: Name
_equality_gtInt32 = qname _hydra_lib_equality "gtInt32" :: Name
_equality_gteInt32 = qname _hydra_lib_equality "gteInt32" :: Name
_equality_ltInt32 = qname _hydra_lib_equality "ltInt32" :: Name
_equality_lteInt32 = qname _hydra_lib_equality "lteInt32" :: Name

hydraLibEquality :: Library
hydraLibEquality = standardLibrary _hydra_lib_equality [
    prim2 [] _equality_equal x x boolean Equality.equal,
    prim2 [] _equality_equalBinary binary binary boolean Equality.equalBinary,
    prim2 [] _equality_equalBoolean boolean boolean boolean Equality.equalBoolean,
    prim2 [] _equality_equalBigfloat bigfloat bigfloat boolean Equality.equalBigfloat,
    prim2 [] _equality_equalFloat32 float32 float32 boolean Equality.equalFloat32,
    prim2 [] _equality_equalFloat64 float64 float64 boolean Equality.equalFloat64,
    prim2 [] _equality_equalBigint bigint bigint boolean Equality.equalBigint,
    prim2 [] _equality_equalInt8 int8 int8 boolean Equality.equalInt8,
    prim2 [] _equality_equalInt16 int16 int16 boolean Equality.equalInt16,
    prim2 [] _equality_equalInt32 int32 int32 boolean Equality.equalInt32,
    prim2 [] _equality_equalInt64 int64 int64 boolean Equality.equalInt64,
    prim2 [] _equality_equalTerm term term boolean Equality.equalTerm,
    prim2 [] _equality_equalType type_ type_ boolean Equality.equalType,
    prim2 [] _equality_equalUint8 uint8 uint8 boolean Equality.equalUint8,
    prim2 [] _equality_equalUint16 uint16 uint16 boolean Equality.equalUint16,
    prim2 [] _equality_equalUint32 uint32 uint32 boolean Equality.equalUint32,
    prim2 [] _equality_equalUint64 uint64 uint64 boolean Equality.equalUint64,
    prim2 [] _equality_equalString string string boolean Equality.equalString,
    prim1 ["x"] _equality_identity x x Equality.identity,
    prim2 [] _equality_gtInt32 int32 int32 boolean Equality.gtInt32,
    prim2 [] _equality_gteInt32 int32 int32 boolean Equality.gteInt32,
    prim2 [] _equality_ltInt32 int32 int32 boolean Equality.ltInt32,
    prim2 [] _equality_lteInt32 int32 int32 boolean Equality.lteInt32]
  where
    x = variable "x"

_hydra_lib_flows :: Namespace
_hydra_lib_flows = Namespace "hydra.lib.flows"

_flows_apply = qname _hydra_lib_flows "apply" :: Name
_flows_bind = qname _hydra_lib_flows "bind" :: Name
_flows_fail = qname _hydra_lib_flows "fail" :: Name
_flows_map = qname _hydra_lib_flows "map" :: Name
_flows_mapList = qname _hydra_lib_flows "mapList" :: Name
_flows_pure = qname _hydra_lib_flows "pure" :: Name
_flows_sequence = qname _hydra_lib_flows "sequence" :: Name

hydraLibFlows :: Library
hydraLibFlows = standardLibrary _hydra_lib_flows [
    prim2 ["s", "x", "y"] _flows_apply (flow s (function x y)) (flow s x) (flow s y) Flows.apply,
    prim2 ["s", "x", "y"] _flows_bind  (flow s x) (function x (flow s y)) (flow s y) Flows.bind,
    prim1 ["s", "x"]      _flows_fail  string (flow s x) Flows.fail,
    prim2 ["s", "x", "y"] _flows_map   (function x y) (flow s x) (flow s y) Flows.map,
    prim2 ["s", "x", "y"] _flows_mapList (function x (flow s y)) (list x) (flow s (list y)) Flows.mapList,
    prim1 ["s", "x"]      _flows_pure  x (flow s x) Flows.pure,
    prim1 ["s", "x"]      _flows_sequence (list (flow s x)) (flow s (list x)) Flows.sequence]
  where
    s = variable "s"
    x = variable "x"
    y = variable "y"

applyInterp :: Term -> Term -> Flow Graph Term
applyInterp funs' args' = do
    funs <- Expect.list Prelude.pure funs'
    args <- Expect.list Prelude.pure args'
    return $ Terms.list $ L.concat (helper args <$> funs)
  where
    helper args f = Terms.apply f <$> args

bindInterp :: Term -> Term -> Flow Graph Term
bindInterp args' fun = do
    args <- Expect.list Prelude.pure args'
    return $ Terms.apply (Terms.primitive $ Name "hydra.lib.lists.concat") (Terms.list $ Terms.apply fun <$> args)

mapInterp :: Term -> Term -> Flow Graph Term
mapInterp fun args' = do
    args <- Expect.list Prelude.pure args'
    return $ Terms.list (Terms.apply fun <$> args)

_hydra_lib_io :: Namespace
_hydra_lib_io = Namespace "hydra.lib.io"

_io_showTerm = qname _hydra_lib_io "showTerm" :: Name
_io_showType = qname _hydra_lib_io "showType" :: Name

hydraLibIo :: Library
hydraLibIo = standardLibrary _hydra_lib_io [
    prim1 [] _io_showTerm term string Io.showTerm,
    prim1 [] _io_showType type_ string Io.showType]

_hydra_lib_lists :: Namespace
_hydra_lib_lists = Namespace "hydra.lib.lists"

_lists_apply = qname _hydra_lib_lists "apply" :: Name
_lists_at = qname _hydra_lib_lists "at" :: Name
_lists_bind = qname _hydra_lib_lists "bind" :: Name
_lists_concat = qname _hydra_lib_lists "concat" :: Name
_lists_concat2 = qname _hydra_lib_lists "concat2" :: Name
_lists_cons = qname _hydra_lib_lists "cons" :: Name
_lists_filter = qname _hydra_lib_lists "filter" :: Name
_lists_foldl = qname _hydra_lib_lists "foldl" :: Name
_lists_head = qname _hydra_lib_lists "head" :: Name
_lists_intercalate = qname _hydra_lib_lists "intercalate" :: Name
_lists_intersperse = qname _hydra_lib_lists "intersperse" :: Name
_lists_last = qname _hydra_lib_lists "last" :: Name
_lists_length = qname _hydra_lib_lists "length" :: Name
_lists_map = qname _hydra_lib_lists "map" :: Name
_lists_nub = qname _hydra_lib_lists "nub" :: Name
_lists_null = qname _hydra_lib_lists "null" :: Name
_lists_pure = qname _hydra_lib_lists "pure" :: Name
_lists_reverse = qname _hydra_lib_lists "reverse" :: Name
_lists_safeHead = qname _hydra_lib_lists "safeHead" :: Name
_lists_tail = qname _hydra_lib_lists "tail" :: Name

hydraLibLists :: Library
hydraLibLists = standardLibrary _hydra_lib_lists [
    prim2Interp ["x", "y"] _lists_apply (list $ function x y) (list x) (list y) applyInterp,
    prim2 ["x"] _lists_at int32 (list x) x Lists.at,
    prim2Interp ["x", "y"] _lists_bind (list x) (function x (list y)) (list y) bindInterp,
    prim1 ["x"] _lists_concat (list (list x)) (list x) Lists.concat,
    prim2 ["x"] _lists_concat2 (list x) (list x) (list x) Lists.concat2,
    prim2 ["x"] _lists_cons x (list x) (list x) Lists.cons,
    prim2 ["x"] _lists_filter (function x boolean) (list x) (list x) Lists.filter,
    prim3 ["x", "y"] _lists_foldl (function y (function x y)) y (list x) y Lists.foldl,
    prim1 ["x"] _lists_head (list x) x Lists.head,
    prim2 ["x"] _lists_intercalate (list x) (list (list x)) (list x) Lists.intercalate,
    prim2 ["x"] _lists_intersperse x (list x) (list x) Lists.intersperse,
    prim1 ["x"] _lists_last (list x) x Lists.last,
    prim1 ["x"] _lists_length (list x) int32 Lists.length,
    prim2Interp ["x", "y"] _lists_map (function x y) (list x) (list y) mapInterp,
    prim1 ["x"] _lists_nub (list x) (list x) Lists.nub,
    prim1 ["x"] _lists_null (list x) boolean Lists.null,
    prim1 ["x"] _lists_pure x (list x) Lists.pure,
    prim1 ["x"] _lists_reverse (list x) (list x) Lists.reverse,
    prim1 ["x"] _lists_safeHead (list x) (optional x) Lists.safeHead,
    prim1 ["x"] _lists_tail (list x) (list x) Lists.tail]
  where
    x = variable "x"
    y = variable "y"

_hydra_lib_literals :: Namespace
_hydra_lib_literals = Namespace "hydra.lib.literals"

_literals_bigfloatToBigint = qname _hydra_lib_literals "bigfloatToBigint" :: Name
_literals_bigfloatToFloat32 = qname _hydra_lib_literals "bigfloatToFloat32" :: Name
_literals_bigfloatToFloat64 = qname _hydra_lib_literals "bigfloatToFloat64" :: Name
_literals_bigintToBigfloat = qname _hydra_lib_literals "bigintToBigfloat" :: Name
_literals_bigintToInt8 = qname _hydra_lib_literals "bigintToInt8" :: Name
_literals_bigintToInt16 = qname _hydra_lib_literals "bigintToInt16" :: Name
_literals_bigintToInt32 = qname _hydra_lib_literals "bigintToInt32" :: Name
_literals_bigintToInt64 = qname _hydra_lib_literals "bigintToInt64" :: Name
_literals_bigintToUint8 = qname _hydra_lib_literals "bigintToUint8" :: Name
_literals_bigintToUint16 = qname _hydra_lib_literals "bigintToUint16" :: Name
_literals_bigintToUint32 = qname _hydra_lib_literals "bigintToUint32" :: Name
_literals_bigintToUint64 = qname _hydra_lib_literals "bigintToUint64" :: Name
_literals_float32ToBigfloat = qname _hydra_lib_literals "float32ToBigfloat" :: Name
_literals_float64ToBigfloat = qname _hydra_lib_literals "float64ToBigfloat" :: Name
_literals_int8ToBigint = qname _hydra_lib_literals "int8ToBigint" :: Name
_literals_int16ToBigint = qname _hydra_lib_literals "int16ToBigint" :: Name
_literals_int32ToBigint = qname _hydra_lib_literals "int32ToBigint" :: Name
_literals_int64ToBigint = qname _hydra_lib_literals "int64ToBigint" :: Name
_literals_showInt32 = qname _hydra_lib_literals "showInt32" :: Name
_literals_showString = qname _hydra_lib_literals "showString" :: Name
_literals_uint8ToBigint = qname _hydra_lib_literals "uint8ToBigint" :: Name
_literals_uint16ToBigint = qname _hydra_lib_literals "uint16ToBigint" :: Name
_literals_uint32ToBigint = qname _hydra_lib_literals "uint32ToBigint" :: Name
_literals_uint64ToBigint = qname _hydra_lib_literals "uint64ToBigint" :: Name

hydraLibLiterals :: Library
hydraLibLiterals = standardLibrary _hydra_lib_literals [
  prim1 [] _literals_bigfloatToBigint bigfloat bigint Literals.bigfloatToBigint,
  prim1 [] _literals_bigfloatToFloat32 bigfloat float32 Literals.bigfloatToFloat32,
  prim1 [] _literals_bigfloatToFloat64 bigfloat float64 Literals.bigfloatToFloat64,
  prim1 [] _literals_bigintToBigfloat bigint bigfloat Literals.bigintToBigfloat,
  prim1 [] _literals_bigintToInt8 bigint int8 Literals.bigintToInt8,
  prim1 [] _literals_bigintToInt16 bigint int16 Literals.bigintToInt16,
  prim1 [] _literals_bigintToInt32 bigint int32 Literals.bigintToInt32,
  prim1 [] _literals_bigintToInt64 bigint int64 Literals.bigintToInt64,
  prim1 [] _literals_bigintToUint8 bigint uint8 Literals.bigintToUint8,
  prim1 [] _literals_bigintToUint16 bigint uint16 Literals.bigintToUint16,
  prim1 [] _literals_bigintToUint32 bigint uint32 Literals.bigintToUint32,
  prim1 [] _literals_bigintToUint64 bigint uint64 Literals.bigintToUint64,
  prim1 [] _literals_float32ToBigfloat float32 bigfloat Literals.float32ToBigfloat,
  prim1 [] _literals_float64ToBigfloat float64 bigfloat Literals.float64ToBigfloat,
  prim1 [] _literals_int8ToBigint int8 bigint Literals.int8ToBigint,
  prim1 [] _literals_int16ToBigint int16 bigint Literals.int16ToBigint,
  prim1 [] _literals_int32ToBigint int32 bigint Literals.int32ToBigint,
  prim1 [] _literals_int64ToBigint int64 bigint Literals.int64ToBigint,
  prim1 [] _literals_showInt32 int32 string Literals.showInt32,
  prim1 [] _literals_showString string string Literals.showString,
  prim1 [] _literals_uint8ToBigint uint8 bigint Literals.uint8ToBigint,
  prim1 [] _literals_uint16ToBigint uint16 bigint Literals.uint16ToBigint,
  prim1 [] _literals_uint32ToBigint uint32 bigint Literals.uint32ToBigint,
  prim1 [] _literals_uint64ToBigint uint64 bigint Literals.uint64ToBigint]

_hydra_lib_logic :: Namespace
_hydra_lib_logic = Namespace "hydra.lib.logic"

_logic_and = qname _hydra_lib_logic "and" :: Name
_logic_ifElse = qname _hydra_lib_logic "ifElse" :: Name
_logic_not = qname _hydra_lib_logic "not" :: Name
_logic_or = qname _hydra_lib_logic "or" :: Name

hydraLibLogic :: Library
hydraLibLogic = standardLibrary _hydra_lib_logic [
    prim2 [] _logic_and boolean boolean boolean Logic.and,
    prim3 ["x"] _logic_ifElse boolean x x x Logic.ifElse,
    prim1 [] _logic_not boolean boolean Logic.not,
    prim2 [] _logic_or boolean boolean boolean Logic.or]
  where
    x = variable "x"

_hydra_lib_maps :: Namespace
_hydra_lib_maps = Namespace "hydra.lib.maps"

_maps_empty = qname _hydra_lib_maps "empty" :: Name
_maps_fromList = qname _hydra_lib_maps "fromList" :: Name
_maps_insert = qname _hydra_lib_maps "insert" :: Name
_maps_isEmpty = qname _hydra_lib_maps "isEmpty" :: Name
_maps_keys = qname _hydra_lib_maps "keys" :: Name
_maps_lookup = qname _hydra_lib_maps "lookup" :: Name
_maps_map = qname _hydra_lib_maps "map" :: Name
_maps_mapKeys = qname _hydra_lib_maps "mapKeys" :: Name
_maps_remove = qname _hydra_lib_maps "remove" :: Name
_maps_singleton = qname _hydra_lib_maps "singleton" :: Name
_maps_size = qname _hydra_lib_maps "size" :: Name
_maps_toList = qname _hydra_lib_maps "toList" :: Name
_maps_values = qname _hydra_lib_maps "values" :: Name

hydraLibMaps :: Library
hydraLibMaps = standardLibrary _hydra_lib_maps [
    prim0 ["k", "v"] _maps_empty mapKv Maps.empty,
    prim1 ["k", "v"] _maps_fromList (list $ pair k v) mapKv Maps.fromList,
    prim3 ["k", "v"] _maps_insert k v mapKv mapKv Maps.insert,
    prim1 ["k", "v"] _maps_isEmpty mapKv boolean Maps.isEmpty,
    prim1 ["k", "v"] _maps_keys mapKv (list k) Maps.keys,
    prim2 ["k", "v"] _maps_lookup k mapKv (optional v) Maps.lookup,
    prim2 ["k", "v1", "v2"] _maps_map (function v1 v2) (Prims.map k v1) (Prims.map k v2) Maps.map,
    prim2 ["k1", "k2", "v"] _maps_mapKeys (function k1 k2) (Prims.map k1 v) (Prims.map k2 v) Maps.mapKeys,
    prim1 ["k", "v"] _maps_size mapKv int32 Maps.size,
    prim2 ["k", "v"] _maps_remove k mapKv mapKv Maps.remove,
    prim2 ["k", "v"] _maps_singleton k v mapKv Maps.singleton,
    prim1 ["k", "v"] _maps_size mapKv int32 Maps.size,
    prim1 ["k", "v"] _maps_toList mapKv (list $ pair k v) Maps.toList,
    prim1 ["k", "v"] _maps_values mapKv (list v) Maps.values]
  where
    k = variable "k"
    k1 = variable "k1"
    k2 = variable "k2"
    v = variable "v"
    v1 = variable "v1"
    v2 = variable "v2"
    mapKv = Prims.map k v

_hydra_lib_math :: Namespace
_hydra_lib_math = Namespace "hydra.lib.math"

_math_add = qname _hydra_lib_math "add" :: Name
_math_div = qname _hydra_lib_math "div" :: Name
_math_mod = qname _hydra_lib_math "mod" :: Name
_math_mul = qname _hydra_lib_math "mul" :: Name
_math_neg = qname _hydra_lib_math "neg" :: Name
_math_rem = qname _hydra_lib_math "rem" :: Name
_math_sub = qname _hydra_lib_math "sub" :: Name

hydraLibMathInt32 :: Library
hydraLibMathInt32 = standardLibrary _hydra_lib_math [
  prim2 [] _math_add int32 int32 int32 Math.add,
  prim2 [] _math_div int32 int32 int32 Math.div,
  prim2 [] _math_mod int32 int32 int32 Math.mod,
  prim2 [] _math_mul int32 int32 int32 Math.mul,
  prim1 [] _math_neg int32 int32 Math.neg,
  prim2 [] _math_rem int32 int32 int32 Math.rem,
  prim2 [] _math_sub int32 int32 int32 Math.sub]

_hydra_lib_optionals :: Namespace
_hydra_lib_optionals = Namespace "hydra.lib.optionals"

_optionals_apply :: Name
_optionals_apply = qname _hydra_lib_optionals "apply" :: Name
_optionals_bind = qname _hydra_lib_optionals "bind" :: Name
_optionals_cat = qname _hydra_lib_optionals "cat" :: Name
_optionals_compose = qname _hydra_lib_optionals "compose" :: Name
_optionals_fromMaybe = qname _hydra_lib_optionals "fromMaybe" :: Name
_optionals_isJust = qname _hydra_lib_optionals "isJust" :: Name
_optionals_isNothing = qname _hydra_lib_optionals "isNothing" :: Name
_optionals_map = qname _hydra_lib_optionals "map" :: Name
_optionals_maybe = qname _hydra_lib_optionals "maybe" :: Name
_optionals_pure = qname _hydra_lib_optionals "pure" :: Name

hydraLibOptionals :: Library
hydraLibOptionals = standardLibrary _hydra_lib_optionals [
    prim2 ["x", "y"] _optionals_apply (optional $ function x y) (optional x) (optional y) Optionals.apply,
    prim2 ["x", "y"] _optionals_bind (optional x) (function x (optional y)) (optional y) Optionals.bind,
    prim1 ["x"] _optionals_cat (list $ optional x) (list x) Optionals.cat,
    prim2 ["x", "y", "z"] _optionals_compose (function x $ optional y) (function y $ optional z) (function x $ optional z) Optionals.compose,
    prim2 ["x"] _optionals_fromMaybe x (optional x) x Optionals.fromMaybe,
    prim1 ["x"] _optionals_isJust (optional x) boolean Optionals.isJust,
    prim1 ["x"] _optionals_isNothing (optional x) boolean Optionals.isNothing,
    prim2 ["x", "y"] _optionals_map (function x y) (optional x) (optional y) Optionals.map,
    prim3 ["x", "y"] _optionals_maybe y (function x y) (optional x) y Optionals.maybe,
    prim1 ["x"] _optionals_pure x (optional x) Optionals.pure]
  where
    x = variable "x"
    y = variable "y"
    z = variable "z"

_hydra_lib_sets :: Namespace
_hydra_lib_sets = Namespace "hydra.lib.sets"

_sets_insert = qname _hydra_lib_sets "add" :: Name
_sets_contains = qname _hydra_lib_sets "contains" :: Name
_sets_difference = qname _hydra_lib_sets "difference" :: Name
_sets_empty = qname _hydra_lib_sets "empty" :: Name
_sets_fromList = qname _hydra_lib_sets "fromList" :: Name
_sets_intersection = qname _hydra_lib_sets "intersection" :: Name
_sets_isEmpty = qname _hydra_lib_sets "isEmpty" :: Name
_sets_map = qname _hydra_lib_sets "map" :: Name
_sets_remove = qname _hydra_lib_sets "remove" :: Name
_sets_singleton = qname _hydra_lib_sets "singleton" :: Name
_sets_size = qname _hydra_lib_sets "size" :: Name
_sets_toList = qname _hydra_lib_sets "toList" :: Name
_sets_union = qname _hydra_lib_sets "union" :: Name

hydraLibSets :: Library
hydraLibSets = standardLibrary _hydra_lib_sets [
    prim2 ["x"] _sets_contains x (set x) boolean Sets.contains,
    prim2 ["x"] _sets_difference (set x) (set x) (set x) Sets.difference,
    prim0 ["x"] _sets_empty (set x) Sets.empty,
    prim1 ["x"] _sets_fromList (list x) (set x) Sets.fromList,
    prim2 ["x"] _sets_insert x (set x) (set x) Sets.insert,
    prim2 ["x"] _sets_intersection (set x) (set x) (set x) Sets.intersection,
    prim1 ["x"] _sets_isEmpty (set x) boolean Sets.isEmpty,
    prim2 ["x", "y"] _sets_map (function x y) (set x) (set y) Sets.map,
    prim2 ["x"] _sets_remove x (set x) (set x) Sets.remove,
    prim1 ["x"] _sets_singleton x (set x) Sets.singleton,
    prim1 ["x"] _sets_size (set x) int32 Sets.size,
    prim1 ["x"] _sets_toList (set x) (list x) Sets.toList,
    prim2 ["x"] _sets_union (set x) (set x) (set x) Sets.union]
  where
    x = variable "x"
    y = variable "y"

_hydra_lib_strings :: Namespace
_hydra_lib_strings = Namespace "hydra.lib.strings"

_strings_cat = qname _hydra_lib_strings "cat" :: Name
_strings_cat2 = qname _hydra_lib_strings "cat2" :: Name
_strings_fromList = qname _hydra_lib_strings "fromList" :: Name
_strings_intercalate = qname _hydra_lib_strings "intercalate" :: Name
_strings_isEmpty = qname _hydra_lib_strings "isEmpty" :: Name
_strings_length = qname _hydra_lib_strings "length" :: Name
_strings_splitOn = qname _hydra_lib_strings "splitOn" :: Name
_strings_toList = qname _hydra_lib_strings "toList" :: Name
_strings_toLower = qname _hydra_lib_strings "toLower" :: Name
_strings_toUpper = qname _hydra_lib_strings "toUpper" :: Name

hydraLibStrings :: Library
hydraLibStrings = standardLibrary _hydra_lib_strings [
  prim1 [] _strings_cat (list string) string Strings.cat,
  prim2 [] _strings_cat2 string string string Strings.cat2,
  prim1 [] _strings_fromList (list int32) string Strings.fromList,
  prim2 [] _strings_intercalate string (list string) string Strings.intercalate,
  prim1 [] _strings_isEmpty string boolean Strings.isEmpty,
  prim1 [] _strings_length string int32 Strings.length,
  prim2 [] _strings_splitOn string string (list string) Strings.splitOn,
  prim1 [] _strings_toList string (list int32) Strings.toList,
  prim1 [] _strings_toLower string string Strings.toLower,
  prim1 [] _strings_toUpper string string Strings.toUpper]

standardLibrary :: Namespace -> [Primitive] -> Library
standardLibrary ns prims = Library {
  libraryNamespace = ns,
  libraryPrefix = L.drop (L.length ("hydra.lib." :: String)) $ unNamespace ns,
  libraryPrimitives = prims}

standardLibraries :: [Library]
standardLibraries = [
  hydraLibChars,
  hydraLibEquality,
  hydraLibFlows,
  hydraLibIo,
  hydraLibLists,
  hydraLibLiterals,
  hydraLibLogic,
  hydraLibMaps,
  hydraLibMathInt32,
  hydraLibOptionals,
  hydraLibSets,
  hydraLibStrings]
