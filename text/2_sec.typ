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

$ dd(s,2) = -U(r) dd(t,2) + dd(r,2)/(U(r)) + R^2 (r) dd(Omega_d, 2) $ <line-el>

where $ dd(Omega_d, 2)$ is the line element of the $d$-dimensional sphere.

For a scalar potential, the energy-momentum tensor takes the form

$ T_(a b) = 4 (partial_a phi) (partial_b phi) - g_(a b) ( 2 (partial phi)^2  + V (phi) ) $ <em-ten>

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

Following @exact-sol, defining $u := U R^d$ and substituting it in @efe2 and @efe3, we can then isolate $V$ to obtain a second order ODE in $u$

$ u'' - (d+2) (u R'/R)' = - 2 (d-1) R^(d-2) $

We can reduce this to a first order ODE via an integral of both members

$ u' - (d+2) R'/R u + c_1 = - 2 (d-1) integral dd(r) R^(d-2) $

At this point, using the standard formula to solve the differential equation

$ u = e^(- integral eta) ( integral xi e^(- integral eta) + c_2 )
	wide 
	cases(
		eta := - (d+2) display(R'/R),
		,
		xi := - 2 (d-1) display(integral) dd(r) R^(d-2)
	) $

we obtain

$ u(r) = R^(d+2) ( c_2 + integral dd(r)/R^(d+2) ( - 2 (d-1) integral dd(r) R^(d+2) - c_1 ) ) $

Using $dd(r) = - ( r_0 slash x^2 ) dd(x)$, the definition of $u$ and @RP, we can then write the function $U$ as dependent only on the function $P(x)$

$ U(x) = (r_0^2 P^2)/x^2 ( c_2 - (2(d-1))/r_0^2 integral dd(x) x^d/P^(d+2) integral dd(x') P^(d-2)/x'^d + c_1/r_0^(d+1) integral dd(x) x^d/P^(d+2) ) $ <U>

where $c_1$ and $c_2$ are integration constants, whose values can be determined imposing boundary conditions on the asymptotic behaviour of the spacetime metric.

Substituting @RP in @efe2 yields the scalar potential $V$, this too dependent only on the function $P(x)$

$ V[phi(x)] = (d^2(d-1))/(d+2) x^2/(r_0^2 P^2) - d/(d+2) x^(d+2)/(r_0^2 P^d) dv(,x) ( x^2 dv(,x) (U P^d)/x^d ) $ <V>

The dependence of the scalar potential $V$ from only the function $P$ gives way to an--albeit difficult--transposition of the conditions on the former to conditions on the latter. This is particularly useful in the definition of the requirements that the scalar potential has to follow in order to abide to the modern no-hair theorems. In particular, these requirements can be related to the positive energy theorem #footnote[
	Recalling the weak energy condition, i.e. for every timelike vector field $X^a$, the matter density observed by the corresponding observer is always non-negative $rho = T_(a b) X^a X^b gt.eq.slant 0$ where $X^2 > 0$, the dominant energy condition states that, in addition to the weak energy condition, for every furure-pointing causal vector field (either timelike or null) $Y^a$, the vector field $- tensor(T, +a, -b) Y^b$ must be a future-pointing causal vector, i.e. mass-energy can never be observed to be flowing faster than light. At this point, the positive energy theorem states that, as long as the dominant energy condition holds, any asymptotically flat spacetime has non-negative ADM mass-energy and the only spacetime with zero ADM mass is Minkowski space.
	], whose influence is to limit the global form of the scalar potential: either the scalar potential is unbounded from below and/or it possess a negative region such that the negative energy is not balanced by a positive contribution from another region.

== Classification of the solution

As seen in the previous section, the scalar field $phi$, the metric function $U$ and the scalar potential $V$ (together with its conditions for the no-hair theorems) all depend exclusively on $P(x)$, therefore this function's behaviour encapsulates all the information about the solution.

=== Behaviour of $P(x)$

The reality of $phi$, through @phi, leads to $dot.double(P) slash P < 0$; extending this reasoning up to infinity, there is no reason that prevents the potential from diverging, thus $P gt.eq.slant 0$. We also have that the radius of the $d$-sphere $R(x)$ must be analytic, positive and monotonically decreasing, therefore

$ cases(
	phi in RR,
	R > 0,
	dot(R) < 0)
quad arrow.r.double.long quad 
cases(
	P gt.eq.slant 0,
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

In both cases, the upper limit of the coordinate $x$ range corresponds to the $r$-origin while $x=0$ to the $r$-asymptotic region.

=== Geometry of the origin

Evaluating the metric function $U$ in the form of @U at $x=x_0$ (respectively $x=oo$ for case II), we find that it can become singular and, therefore, a curvature singularity would originate at this point in the spacetime. The criterion for discerning where the singularity would ensue resides in the behaviour of $P$ and its derivatives.

Substituting $d=2$ (i.e. considering a 4-dimensional spacetime) in @phi, @U and @V we obtain

$ phi(x) = integral dd(x) sqrt(- dot.double(P)/P ) $ <phi4>

$ U(x) = (r_0^2 P^2)/x^2 ( c_2 - 2/r_0^2 integral dd(x) x/P^(4) + c_1/r_0^(3) integral dd(x) x^2/P^(4) ) $ <U4>

$ V[phi(x)] = x^2/(r_0^2 P^2) ( 1 - x^2/2 dv(,x) ( x^2 dv(,x) (U P^2)/x^2 ) ) $ <V4>

Substituting @em-ten and its trace into @EFE-alt yields

$ cal(R)_(a b) = 2 (partial_a phi) (partial_b phi) + 1/2 g_(a b) V(phi) $

From the line element in 4 dimensions of @line-el we extrapolate the inverse metric tensor

$ g^(a b) = op(diag)(- 1/U, U, R^(-2), R^(-2) f(Omega)^(-1)) $

and since $phi$ depends only on $x$

$ g^(a b) (partial_a phi) (partial_b phi) = g_(1 1)(partial_r phi)^2
	= U (- x^2/r_0 partial_x phi)^2
	= - (x^4 U dot.double(P))/(r_0^2 P) $

Now we can calculate the following curvature invariants

$ cal(R) = 2 (V - (x^4 U dot.double(P))/(r_0^2 P)) $

$ cal(R)_(a b) cal(R)^(a b) = V^2 - ((2 x^4 U dot.double(P))/(r_0^2 P)) V + ((2 x^4 U dot.double(P))/(r_0^2 P))^2 $

$ K &:= cal(R)_(a b c d) cal(R)^(a b c d) \
	&= (4 x^2)/(r_0^4 P^3) (U (P - x dot(P))^2 - 1) (r_0^2 V P + 2 x^4 U dot.double(P)) + (12 x^4)/(r_0^4 P^4) (U (P - x dot(P))^2 - 1)^2 + V^2 +(8 x^8 U^2 dot.double(P)^2)/(r_0^4 P^2) $ <K>

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

== Sine-Gordon solution

Choosing a scalar field with a sine-Gordon soliton profile yields a star-like regular solutions. This can be achieved by setting

$ P(x) = 2 - e^(-x) comma wide 0 lt.eq.slant x < oo $

Considering again $d=4$ and substituting the last equation in @phi returns

$ phi = integral dd(x) e^(-x slash 2)/sqrt(2 - e^(-x))
	= - 2 arcsin((e^(- r_0 slash (2 r)))/sqrt(2)) $

This solution is the same as the 1-soliton solution of the sine-Gordon equation

$ phi_(t t) - phi_(x x) + sin(phi) = 0 $

A similar set of solutions can be obtained via

$ P(x) = ((c+d)/(c + d e^(-a x)))^b comma wide a, b, c, d in RR $

If the integration constant $c_1$ in @U4 is zero, it cuts out the diverging part of the metric potential, leaving a horizonless and everywhere regular solution; otherwise, depending on the value of the ratio $c_1 slash r_0$, we either have a solution describing a naked singularity ($c_1 slash r_0 > 0$) or a black hole ($c_1 slash r_0 < 0$). We know of a singularity in the origin because, even though the curvature and the Riemann scalars are non zero, the Kretschmann scalar of @K vanishes. Regarding the regular solution, it is of note because it interpolates between and AdS and an asymptoticaly flat spacetime: while the inner region has negative energy, the solution's total energy is offset towards a positive total energy value by the asymptotic region. 

An in-depth analysis of this solution can be found in @sine-gor.
