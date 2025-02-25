package hydra.lib.flows;

import hydra.dsl.Flows;
import hydra.compute.Flow;
import hydra.compute.FlowState;
import hydra.core.Name;
import hydra.core.OptionalCases;
import hydra.core.Term;
import hydra.core.TypeScheme;
import hydra.dsl.Types;
import hydra.graph.Graph;
import hydra.tools.PrimitiveFunction;

import java.util.List;
import java.util.function.Function;

import static hydra.dsl.Terms.app;
import static hydra.dsl.Terms.flowState;
import static hydra.dsl.Terms.flowStateState;
import static hydra.dsl.Terms.flowStateTrace;
import static hydra.dsl.Terms.foldOpt;
import static hydra.dsl.Terms.lambda;
import static hydra.dsl.Terms.nothing;
import static hydra.dsl.Terms.project;
import static hydra.dsl.Terms.variable;


public class Bind extends PrimitiveFunction {
    public Name name() {
        return new Name("hydra.lib.flows.bind");
    }

    @Override
    public TypeScheme type() {
        return Types.scheme("s", "x", "y",
                Types.function(
                        Types.flow("s", "x"),
                        Types.function("x", Types.flow("s", "y")),
                        Types.flow("s", "y")));
    }

    @Override
    protected Function<List<Term>, Flow<Graph, Term>> implementation() {
        return args -> {
            Term input = args.get(0);
            Term mapping = args.get(1);
            Term ifNothing = flowState(nothing(),
                    app("fs1", flowStateState()), app("fs1", flowStateTrace()));
            Term ifJust = lambda("x",
                    app(mapping, variable("x"), app("fs1", flowStateState()), app("fs2", flowStateTrace())));
            Term output = lambda("s0", "t0", app(
                    lambda("fs1", app(foldOpt(
                            new OptionalCases(ifNothing, ifJust)),
                            project(FlowState.TYPE_NAME, "value"))),
                    app(input, variable("s0"), variable("s1"))));
            return Flows.pure(output);
        };
    }

    public static <S, X, Y> Function<Function<X, Flow<S, Y>>, Flow<S, Y>> apply(Flow<S, X> input) {
        return mapping -> apply(input, mapping);
    }

    public static <S, X, Y> Flow<S, Y> apply(Flow<S, X> input, Function<X, Flow<S, Y>> mapping) {
        return Flows.bind(input, mapping);
    }
}
