#import "@preview/physica:0.9.3": *

#let var(f, x) = { $dv(#f, #x, d:delta)$ }
#let detg = { $sqrt(-g)$ }

// ==========

= General relativity

The framework of general relativity will be used throughout this thesis as a basis to expand onto, using @dinverno as a reference.

== Mathematical background

The fundamental mathematical concepts that general relativity is based upon are the language of tensors and riemannian geometry, the latter being the study of differential manifolds equipped with a riemannian metric.

=== Tensors

A tensor is defined as a multi-linear map between vector spaces or, alternatively, as a function that transforms under a change of coordinates in the following way

$ (T')^(a_1 a_2 dots.h a_n)_(b_1 b_2 dots.h b_n) = ( pdv(x'^(a_1), x^(c_1)) pdv(x'^(a_2), x^(c_2)) dots.h pdv(x'^(a_n), x^(c_n)) ) ( pdv(x^(d_1), x'^(b_1)) pdv(x^(d_2), x'^(b_2)) dots.h pdv(x^(d_n), x'^(b_n)) ) T^(c_1 c_2 dots.h c_n)_(d_1 d_2 dots.h d_n) $

where $T$ is a $n$-th contravariant and $m$-th covariant tensor, and $x^a$ are the coordinates of the manifold.
In the same vein, a tensor density transforms like a tensor, except for a multiplicative factor

$ (cal(T)')^(a_1 a_2 dots.h a_n)_(b_1 b_2 dots.h b_n) = J^w ( pdv(x'^(a_1), x^(c_1)) pdv(x'^(a_2), x^(c_2)) dots.h pdv(x'^(a_n), x^(c_n)) ) ( pdv(x^(d_1), x'^(b_1)) pdv(x^(d_2), x'^(b_2)) dots.h pdv(x^(d_n), x'^(b_n)) ) cal(T)^(c_1 c_2 dots.h c_n)_(d_1 d_2 dots.h d_n) $

where $w$ is the weight of the densor density and

$ J^w := abs( pdv(x^a,x'^b) ) $

is the Jacobian of the coordinates transformation to the $w$th-power.

=== Connection, Riemann tensor, metric

In a manifold, in order to define a directional derivative that is invariant under coordinates transformations, it is necessary to introduce a relation among the tangent spaces to points on the manifold: this relation is represented by the affine connection, which supplies the manifold with a way to parallel transport vectors on the manifold itself. The resulting covariant derivative is defined as

$ grad_c T^(a dots.h)_(b dots.h) := partial_c T^(a dots.h)_(b dots.h) + tensor(Gamma, +a, -d, -c) T^(d dots.h)_(b dots.h) + dots.h - tensor(Gamma, +d, -b, -c) T^(a dots.h)_(d dots.h) + dots.h $

where $tensor(Gamma, +a, -b, -c )$ is the Christoffel symbol and represents the affine connection; $tensor(Gamma, +a, -b, -c )$ is a pseudo-tensor, meaning it does not transform as an ordinary tensor, but rather as

$ tensor(Gamma', +a, -b, -c) = (partial_d x'^a) (partial'_b x^e) (partial'_c x^f) tensor(Gamma, +d, -e, -f) + (partial_d partial_e x'^a) (partial'_b x^d) (partial'_c x^e) $

If we compute the commutator of two covariant derivatives

$ (grad_c grad_d - grad_d grad_c) X^a = ( partial_c tensor(Gamma, +a, -b, -d) - partial_d tensor(Gamma, +a, -b, -c) + tensor(Gamma, +e, -b, -d) tensor(Gamma, +a, -e, -c) - tensor(Gamma, +e, -b, -c) tensor(Gamma, +a, -e, -d) ) X^b + ( tensor(Gamma, +e, -c, -d) - tensor(Gamma, +e, -d, -c) ) grad_e X^a $

using Schwarz's theorem $partial_( "["a ) partial_( b"]" ) = 0$, torsion-free connections, i.e. $tensor(Gamma, +a, -b, -c) = tensor(Gamma, +a, -c, -b)$, and defining the Riemann tensor as

$ tensor(R, +a, -b, -c, -d) := partial_c tensor(Gamma, +a, -b, -d) - partial_d tensor(Gamma, +a, -b, -c) + tensor(Gamma, +e, -b, -d) tensor(Gamma, +a, -e, -c) - tensor(Gamma, +e, -b, -c) tensor(Gamma, +a, -e, -d) $ <riem-ten>

we obtain

$ grad_( "[" c) grad_( d "]") X^a = 1/2 tensor(R, +a, -b, -c, -d) X^b $

This relation states that if and only if the Riemann tensor vanishes (i.e. in flat space), the commutator vanishes too, which means that the order of derivation does not matter. This implication is related to the curvature of the manifold.

A manifold endowed with a metric, i.e. a rank 2 symmetric tensor field $g_(a b)$, is called a Riemannian manifold. Infinitesimal distances can then be computed via

$ dd(s, 2) = g_(a b) dd(x^a) dd(x^b) $

If the metric is non singular, the following relation holds

$ g_(a b) g^(b c) = delta^c_a $

where $delta^c_a$ is the Kronecker delta.

If we apply the metric tensor to a generic tensor, the result is the raising or lowering of the tensor's indices

$ g_(a b) T^a = T_b, wide g^(a b) T_a = T^b $

and to compute a vector's modulus

$ X^2 := X^a X_a = g_(a b) X^a X^b $

The affine connection takes the name of metric connection when written in terms of the metric tensor, and takes the form

$ tensor(Gamma, +a, -b, -c) = 1/2 g^(a d) ( partial_b g_(d c) + partial_c g_(d b) - partial_d g_(b c)) $ 

Using this formula and @riem-ten, the Riemann tensor is shown to satisfy these relations:

$ R_(a b c d) = - R_(a b d c) = - R_(b a c d) = R_(c d a b) $

$ R_(a b c d) + R_(a d b c) + R_(a c d b) = 0 $

$ grad_a R_(d e b c) + grad_c R_(d e a b) + grad_b R_(d e c a) = 0 wide italic("(Bianchi identities)") $ <bianchi>

Contracting the Riemann tensor, we define the Ricci tensor $R_(a b)$ and the Ricci scalar $R$ as

$ R_(a b) := tensor(R, +c, -a, -c, -b) = g^(c d) R_(d a c b) $

$ R := g^(a b) R_(a b) $

The Einstein tensor is defined to be

$ G_(a b) := R_(a b) - 1/2 g_(a b) R $ <ein-ten>

which satisfies the contracted Bianchi identities, namely

$ grad_b tensor(G, -a, +b) = 0 $

=== Geodesics

Introducing the notation

$ grad_X T^(a dots.h)_(b dots.h) := X^c grad_c T^(a dots.h)_(b dots.h) $

and considering the tangent vector field to the curve $x^a = x^a (u)$

$ X^a = dv(x^a, u) $

it is possible to define the absolute derivative of a tensor along a curve as

$ dv(, u, d:upright(D)) T^(a dots.h)_(b dots.h) := grad_X T^(a dots.h)_(b dots.h) $

A parallel transported tensor satisfies

$ dv(, u, d:upright(D)) T^(a dots.h)_(b dots.h) = 0 $

An affine geodesic is a curve in which the parallel transport of the tangent to the curve happens parallelly to itself: this curve is therefore a solution of

$ dv(, u, d:upright(D)) ( dv(x^a, u) ) = lambda (u) dv(x^a, u) $ <geo-D>

or alternatively

$ grad_X X^a = lambda (u) X^a $

where $lambda (u)$ is a function of the affine parameter $u$.

Using the connection of the manifold $tensor(Gamma, +a, -b, -c)$, @geo-D can be written in the following form

$ dv(x^a, s, 2) + tensor(Gamma, +a, -b, -c) dv(x^b, s) dv(x^c, s) = lambda (u) dv(x^a, s) $

If the curve is re-parametrized using a new parameter $s$ so that $lambda (s) equiv 0$, the formula for affine geodesics becomes

$ dv(x^a, s, 2) + tensor(Gamma, +a, -b, -c) dv(x^b, s) dv(x^c, s) = 0 $

== Physics background

We can classify vectors in a riemannian manifold based on their norm:

- timelike $X^2 < 0$
- spacelike $X^2 > 0$
- null or lightlike $X^2 = 0$

A geodesic whose tangent vector on every point is null is called a null geodesic, analogous for timelike and spacelike geodesics.

All null geodesics passing through a point define a double cone called null cone or light cone: this surface divides the spacetime into three distinct regions---future, past, and elsewhere. Any point in the future and past regions can only be reached by timelike geodesics, while the elsewhere is accessible only through spacelike geodesics.

A timelike geodesic represents the path of a free massive particle, instead light (massless) follows null geodesics. Since this separation is invariant, this means that matter is confined to travel inside the light cone at all times.

=== Principles of general relativity

The generalization from special relativity to general relativity passed through the following main principles:

- _Equivalence_: locally, a non-rotating free fall reference frame in a gravitational field is equivalent, i.e. indistinguishable, to one in uniform motion in absence of a gravitational field;

- _Covariance_: all observers are equivalent, meaning all laws of physics should have tensorial form;

- _Minimal gravitational coupling_: no terms that explicitly contain the curvature tensor should be added to the formulas during the genrealization of laws from special to general relativity;

- _Correspondence_: general relativity should agree with special relativity at low velocities and in absence of a gravitational field.

=== Derivation of EFE

Using the metric signature $g_(a b) = op(diag) (-, +, +, +)$, we derive the Einstein fiels equations (EFE) from the Einstein-Hilbert action

$ S = integral dd(x,4) detg ( R + 2 kappa cal(L)_m ) $

where $kappa := 8 pi G c^(-4)$ is Einstein constant, $g := det(g_(a b))$, and $cal(L)_m$ represents the matter fields Lagrangian.

The principle of stationary action asserts that $delta S = 0$, from which

$ delta S = integral dd(x,4) detg ( var(R, g_(a b)) + R/(detg) var(detg, g^(a b)) + ( 2 kappa )/detg var(detg cal(L)_m, g^(a b)) ) delta g^(a b) = 0 $

This condition holds for any $delta g^(a b)$, therefore

$ var(R, g_(a b)) + R/(detg) var(detg, g^(a b)) = - (2 kappa)/detg var(detg cal(L)_m, g^(a b)) $ <varEFE>

Using the definition of the Ricci scalar, its variation gives

$ var(R, g^(a b)) = R_(a b) $

while for the factor containing the determinant of the metric

$ var(detg, g^(a b)) = - detg/2 g_(a b) $

Defining the stress-energy tensor as

$ T_(a b) := - 1/detg var(detg cal(L)_m, g^(a b)) $ <em-ten-def>

and recalling the definition of the Einstein tensor @ein-ten, we can rewrite @varEFE as

$ G_(a b) = kappa T_(a b) $

An alternative rappresentation of the EFE can be obtained via taking the trace with respect to the metric of both sides

$ R - 2 R = - R = kappa T, wide g^(a b) g_(a b) = 4 $

Substituting this in the EFE yields

$ R_(a b) = kappa ( T_(a b) - 1/2 T g_(a b) ) $ <EFE-alt>

Furthermore, if the cosmological constant $Lambda$ is added in the Einstein-Hilbert action

$ S = integral dd(x,4) detg ( R - 2 Lambda + 2 kappa cal(L)_m ) $

the EFE take on the form

$ G_(a b) + Lambda g_(a b) = kappa T_(a b) $

This set of equations, which gives as a solution the equations of motion, can be interpreted in two ways: from right to left, the energy content of spacetime determines the curvature of the latter; from left to right, the curvature of the spacetime tells the matter within it how to move. The cosmological constant term could mean that the vacuum possesses a non-zero energy, that spacetime has an intrinsic curvature, or both.
