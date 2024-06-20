#import "@preview/physica:0.9.3": *

= General relativity

The framework of general relativity will be used throughout this thesis as a basis to expand onto.

== Mathematical background

The main building blocks that compose the mathematical basis of general relativity are the language of tensors and riemannian geometry, the latter being the study of differential manifolds equipped with a riemannian metric.

=== Tensors

In general, a tensor is defined as a multi-linear map between vector spaces or, alternatively, as a function that transforms under a change of coordinates in the following way

$ (T')^(a_1 a_2 dots.h a_n)_(b_1 b_2 dots.h b_n) = ( (partial x'^(a_1))/(partial x^(c_1)) (partial x'^(a_2))/(partial x^(c_2)) dots.h (partial x'^(a_n))/(partial x^(c_n)) ) ( (partial x^(d_1))/(partial x'^(b_1)) (partial x^(d_2))/(partial x'^(b_2)) dots.h (partial x^(d_n))/(partial x'^(b_n)) ) T^(b_1 b_2 dots.h b_n)_(d_1 d_2 dots.h d_n) $

where $T$ is a $n$-th contravariant and $m$-th covarant tensor, and $x^a$ are the cordinates of the manifold.

In the same vein, a tensor density transforms like a tensor, except for a multiplicative factor

$ (cal(T)')^(a_1 a_2 dots.h a_n)_(b_1 b_2 dots.h b_n) = J^w ( (partial x'^(a_1))/(partial x^(c_1)) (partial x'^(a_2))/(partial x^(c_2)) dots.h (partial x'^(a_n))/(partial x^(c_n)) ) ( (partial x^(d_1))/(partial x'^(b_1)) (partial x^(d_2))/(partial x'^(b_2)) dots.h (partial x^(d_n))/(partial x'^(b_n)) ) cal(T)^(b_1 b_2 dots.h b_n)_(d_1 d_2 dots.h d_n) $

where $w$ is the weight of the densor density and

$ J^w := abs( pdv(x^a,x'^b) ) $

is the Jacobian to the $w$-power.

=== Connection, Riemann tensor, metric

In a manifold, in order to define a directional derivative that is invariant under coordinates transformations, it is necessary to introduce a relation among the tangent spaces to points on the manifold: this relation is represented by the affine connection, which supplies the manifold with a way to parallel transport vectors on the manifold. The resulting covariant derivative is defined as

$ grad_c T^(a dots.h)_(b dots.h) := partial_c T^(a dots.h)_(b dots.h) + tensor(Gamma, +a, -d, -c) T^(d dots.h)_(b dots.h) + dots.h - tensor(Gamma, +d, -b, -c) T^(a dots.h)_(d dots.h) + dots.h $

where $tensor(Gamma, +a, -b, -c )$ is called Christoffel symbol and represents the affine connection; $tensor(Gamma, +a, -b, -c )$ is a pseudo-tensor, meaning it does not transform as an ordinary tensor, but rather as

$ tensor(Gamma', +a, -b, -c) = (partial_d x'^a) (partial'_b x^e) (partial'_c x^f) tensor(Gamma, +d, -e, -f) + (partial_d partial_e x'^a) (partial'_b x^d) (partial'_c x^e) $

If we compute the commutator of two covariant derivatives

$ (grad_c grad_d - grad_d grad_c) X^a = ( partial_c tensor(Gamma, +a, -b, -d) - partial_d tensor(Gamma, +a, -b, -c) + tensor(Gamma, +e, -b, -d) tensor(Gamma, +a, -e, -c) - tensor(Gamma, +e, -b, -c) tensor(Gamma, +a, -e, -d) ) X^b + ( tensor(Gamma, +e, -c, -d) - tensor(Gamma, +e, -d, -c) ) grad_e X^a $

using Schwarz's theorem $partial_( "["a ) partial_( b"]" ) = 0$, torsion-free connections, i.e. $tensor(Gamma, +a, -b, -c) = tensor(Gamma, +a, -c, -b)$, and defining the Riemann tensor as

$ tensor(R, +a, -b, -c, -d) := partial_c tensor(Gamma, +a, -b, -d) - partial_d tensor(Gamma, +a, -b, -c) + tensor(Gamma, +e, -b, -d) tensor(Gamma, +a, -e, -c) - tensor(Gamma, +e, -b, -c) tensor(Gamma, +a, -e, -d) $

therefore

$ grad_( "[" c) grad_( d "]") X^a = 1/2 tensor(R, +a, -b, -c, -d) X^b $

This relation states that if and only if the Riemann tensor vanishes (flat space), the commutator vanishes too, which means that the order of derivation does not matter. This implication is related to the curvature of the manifold.

A manifold endowed with a metric, i.e. a rank 2 symmetric tensor field $g_(a b)$, is called a Riemannian manifold. Infinitesimal distances can then be computed via

$ dd(s)^2 = g_(a b) dd(x^a) dd(x^b) $

If the metric is non singular, the following relation holds

$ g_(a b) g^(b c) = delta^c_a $

where $delta^c_a$ is the Kronecker delta.

Given its action, the metric is used to raise or lower indices

$ g_(a b) T^a = T_b, wide g^(a b) T_a = T^b $

and to compute a vector's modulus

$ X^2 := X^a X_a = g_(a b) X^a X^b $

Since the modulus is invariant

$ grad_c g_(a b)
	&= partial_c g_(a b) + tensor(Gamma, +a, -b, -c) g_(a b) $



== Physics background

here
