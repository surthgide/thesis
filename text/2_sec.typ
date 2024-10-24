#import "@preview/physica:0.9.3": *

// ==========

= Solution-generating method <sol-gen>

== Motivation

The idea behind the solution-generating method defined in @sol-gen-met, which will be described in this chapter, is to reduce the dependence of the solution obtained through the EFE to a single function that will encode all the physical information about the structure of the spacetime.

Differently from the approach described in @exact-sol and similar articles, in this method the scalar profile is not fixed _a priori_, but instead found via the EFE: these equations yield a differential equation whose solution will be the only (functional) dependency of the quantites used to characterize the overall solution, whose only condition will be of producing an asymptotically flat spacetime.

The method will eventually yield a static-spherically symmetric solution of $(d+2)$-dimensional gravity minimally coupled to a real scalar field with a self-interacting potential, dependent on a single function.

== Derivation

The framework for the method is a minimally coupled Einstein-scalar gravity in $d+2$ dimensions (with $d gt.eq.slant 2$), described by the action

$ S = integral dd(x, [d+2,]) sqrt(-g) ( cal(R) -2 (partial phi)^2 -V(phi) ) $

where $cal(R)$ is the Ricci scalar #footnote[
	The symbol $cal(R)$ will be used for the Ricci scalr since $R$ is reserved for the radial function that modifies the $d$-sphere element in the infinitesimal interval.] and $V(phi)$ is the self-interacting scalar potential of the real scalar field $phi$.

The article proposes radial dependency for the scalar field, i.e. $phi = phi(r)$, and a static and spherically symmetric spacetime metric for the starting assumption

$ dd(s,2) = -U(r) dd(t,2) + dd(r,2)/(U(r)) + R^2 (r) dd(Omega_d, 2) $

where $ dd(Omega_d, 2)$ is the line element of the $d$-dimensional sphere.

For a scalar potential, the energy-momentum tensor takes the form

$ T_(a b) = 4 (partial_a phi) (partial_b phi) - g_(a b) ( 2 (partial phi)^2  + V (phi) ) $

Using this and the Einstein tensor for a static and spherically symmetric spacetime, the EFE read

$ R''/R &= -2/d phi'^2 $ <riccati>

$ (U R^d)'' &= d(d-1) R^(d-2) - (d+2)/d R^d V $ <efe2>

$ (U R^(d-1) R')' &= (d-1) R^(d-2) - 1/d R^d V $ <efe3>

where the prime denotes derivation with respect to $r$.

In addition to these we have the Poisson equation in the form

$ (U R^d phi')' &= 1/4 R^d pdv(V, phi) $ <poisson>

For a given scalar field $phi(r)$ and with the substitution $R(r) = exp( integral^r dd(r') y(r') )$, @riccati can be written in the form

$ y' + y^2 = -2/d phi'^2 $

which is a case of the Riccati equation.

Using $r_0 > 0$ as an arbitrary lenght scale, we can introduce a new dimensionless coordinate $x := r_0 slash r$, which simplifies the calculations, and sets the units to the mass of the solution and to the strenght of the scalar field. At this point, we set $y(r) = dot(P) slash P $ and obtain the following scalar field dependent only on the function $P(x)$

$ phi(x) = sqrt(d/2) integral dd(x) sqrt(- dot.double(P)/P) $ <phi>

where the dot denotes derivation with respect to $x$, and

$ R(x) = r_0/x P(x) $ <RP>

From @efe2 and @efe3, we can isolate $V$

$ -(d+2)/d R^d V &= (U R^d)'' - d (d-1) R^(d-2) \
	-(d+2)/d R^d V &= (d+2)(U R^(d-1) R')' - (d+2) (d-1) R^(d-2) $

therefore

$ (U R^d)'' - d (d-1) R^(d-2) = (d+2)(U R^(d-1) R')' - (d+2) (d-1) R^(d-2) \
	arrow.b.double \
	i $

Solving the last differential equation yields the metric function $U$ in terms of the function $P(x)$

$ U(x) = (r_0^2 P^2)/x^2 ( c_2 - (2(d-1))/r_0^2 integral dd(x) x^d/P^(d+2) integral dd(x') P^(d-2)/x'^d + c_1/r_0^(d+1) integral dd(x) x^d/P^(d+2) ) $ <U>

where $c_1$ and $c_2$ are integration constants, whose values can be determined imposing boundary conditions on the asymptotic behaviour of the spacetime metric.

Substituting @U and @RP in either @efe2 or @efe3 returns the scalar potential $V$, this too only dependent on the function $P(x)$

$ V[phi(x)] = (d^2(d-1))/(d+2) x^2/(r_0^2 P^2) - d/(d+2) x^(d+2)/(r_0^d P^d) dv(,x) ( x^2 dv(,x) (U P^2)/x^2 ) $ <V>

The dependence of the scalar potential $V$ from only the function $P$ gives way to an--albeit difficult--transposition of the conditions on the former to conditions on the latter. This is particularly useful in the definition of the requirements that the scalar potentials has to follow in order to abide to the modern no-hair theorems. In particular, these requirements can be related to the positive energy theorem #footnote[
	Recalling the weak energy condition, i.e. for every timelike vector field $X^a$, the matter density observed by the corresponding observer is always non-negative $rho = T_(a b) X^a X^b gt.eq.slant 0$ where $X^2 > 0$, the dominant energy condition states that, in addition to the weak energy condition, for every furure-pointing causal vector field (either timelike or null) $Y^a$, the vector field $- tensor(T, +a, -b) Y^b$ must be a future-pointing causal vector, i.e. mass-energy can never be observed to be flowing faster than light. At this point, the positive energy theorem states that, as long as the dominant energy condition holds, any asymptotically flat spacetime has non-negative ADM mass-energy and the only spacetime with zero ADM mass is Minkowski space.
	], whose influence is to limit the global form of the scalar potential: either the scalar potential is unbounded from below and/or it possess a negative region such that the negative energy is not balanced by a positive contribution from another region.

== Classification of the solution

As seen in the previous section, the scalar field $phi$, the metric function $U$ and the scalar potential $V$ (together with its conditions for the no-hair theorems) all depend exclusively on $P(x)$, therefore this function's behaviour encapsulates all the information about the solution.

=== Behaviour of $P(x)$

The reality of $phi$, through @phi, leads to $dot.double(P) slash P < 0$. We also have that the radius of the $d$-sphere $R(x)$ must be analytic, positive and monotonically decreasing, therefore

$ cases(
	phi in RR,
	R > 0,
	dot(R) < 0)
quad arrow.r.double.long quad 
cases(
	P > 0,
	dot.double(P) < 0,
	dot(P) slash x - P slash x^2 < 0) $

Moreover, the condition of asymptotic flatness for $P(x)$ implies that

$ P(0) = 1
quad and quad
lim_(x -> 0) P(x) = sum_(n=0)^N a_n x^n $

On the account of letting $R(x)$ span the range $[0,oo)$, the zeros of $P(x)$ inform the range of the coordinate $x$:

#enum(numbering: "I.",
	[$P(x_0)=0$, where $x_0$ is finite, leads to $x in [0, x_0]$],
	[$display(lim_(x -> oo)) P(x) = "const" != 0$ leads to $x in [0, oo)$],
	)

In both cases, the upper limit of the coordinate $x$ range corresponds the $r$-origin while $x=0$ to the $r$-asymptotic region.

=== Geometry of the origin

Evaluating the metric function $U$ in the form of @U at $x=x_0$ (respectively $x=oo$ for case II), we find that it can become singular and, therefore, a curvature singularity would originate at this point in the spacetime. The criterion for discerning when the singularity would ensue resides in the behaviour of $P$ and its derivatives.

Substituting $d=2$ (i.e. considering a 4-dimensional spacetime) in @phi, @U and @V we obtain

$ phi(x) = integral dd(x) sqrt(- 1/P dv(P, x, 2)) $ <phi4>

$ U(x) = (r_0^2 P^2)/x^2 ( c_2 - 2/r_0^2 integral dd(x) x/P^(4) + c_1/r_0^(3) integral dd(x) x^2/P^(4) ) $ <U4>

$ V[phi(x)] = x^2/(r_0^2 P^2) ( 1 - x^2/2 dv(,x) ( x^2 dv(,x) (U P^2)/x^2 ) ) $ <V4>

From these and the Ricci tensor recovered from the EFE

$ cal(R)_(a b) = 2 (partial_a phi) (partial_b phi) + 1/2 g_(a b) V(phi) $

we get the curvature invariants

$ cal(R) = 2 (V - (x^4 U dot.double(P))/(r_0^2 P)) $

$ cal(R)_(a b) cal(R)^(a b) = V^2 - ((2 x^4 U dot.double(P))/(r_0^2 P)) V + ((2 x^4 U dot.double(P))/(r_0^2 P))^2 $

$ K &:= cal(R)_(a b c d) cal(R)^(a b c d) \
	&= (4 x^2)/(r_0^4 P^3) (U (P - x dot(P))^2 - 1) (r_0^2 V P + 2 x^4 U dot.double(P)) + (12 x^4)/(r_0^4 P^4) (U (P - x dot(P))^2 - 1)^2 + V^2 +(8 x^8 U^2 dot.double(P)^2)/(r_0^4 P^2) $

At this point, by studying the behaviour of the quantities inside the aforementioned invariants, we can deduce the conditions for the behaviour at $x=x_0$ or $x=oo$:

#enum(tight: false,
	numbering: "A.",
	spacing: 1.5em,
	[_regular point_: $(dot.double(P) -> 0) and ((x^4 U dot.double(P))/(r_0^2 P) < oo) and (V < oo)$],
	[_curvature singularity_: $(dot.double(P) < oo thick or thick dot.double(P) -> 0) and ((x^4 U dot.double(P))/(r_0^2 P) -> oo thick and slash or thick V -> oo)$],
)

We see from these conditions that no curvature singularity arises if $dot.double(P)$ goes too slowly to zero. Instead, in case B, the curvature singularity leads to an event horizon, which in turn demands the existence of at least one zero of the metric function $U$, i.e.

$ lr(exists thin x_h in cases(
	[0, x_0] comma & thick "case I",
	[0, oo] comma & thick "case II",
	) thick mid(|) U(x_h) = 0) $

This does not prevent $U(x)$ from having more than one zero. In order to derive the complete form of this metric function, we have to find the values of the two integration constants: the asymptotic flatness of the solutions @phi, @U and @V, i.e.

$ cases(
	U(r) -> 1,
	R(r) -> r,
	phi(r) -> 0,
	) wide r -> oo $

yields the value for $c_2$, while the subleading terms of the expansion of $U$ in the limit $r -> oo$ compared to the Schwarzschild geometry

$ U_S(r) = 1 - M/(8 pi r) $

where $M$ represents the solution gravitational mass, determine the constant $c_1$.

Since we have no a priori boundary condition for the geometry at the origin, the
presence of zeros of $U$ and curvature singularities describe the geometry of the following objects:

- _Naked singularity_: a curvature singularity which is not shielded by an event horizon $(U != 0)$ \
	applicable in case I or in case II while condition B holds;

- _Black hole_: a curvature singularity is shielded by and event horizon $(U(r_h)=0)$ \
	applicable in case I or in case II while condition B holds;

- _Regular solution_: spacetime is everywhere regular (star-like) \
	applicable in case II while condition A holds.
