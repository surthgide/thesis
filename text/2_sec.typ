#import "@preview/physica:0.9.3": *

#let var(f, x) = { $dv(#f, #x, d:delta)$ }
#let detg = { $sqrt(-g)$ }

// ==========

= Solution-generating method <sol-gen>

== Motivation

The idea behind this solution-generating method is to reduce the dependence of the solution obtained through the EFE to a single function that will encode all the physical information about the structure of the spacetime.

The method described in @exact-sol differs from the one described in this chapter in the fact that the scalar profile is not fixed _a priori_, but instead found via the EFE: these equations yield a differential equation whose solution will be the only (functional) dependency of the quantites used to characterize the overall solution, whose only condition will be of producing a asymptotically flat spacetime.

== Derivation

The framework for the method is a minimally coupled Einstein-scalar gravity in $d+2$ dimensions (with $d gt.eq.slant 2$), described by the action

$ S = integral dd(x, [d+2,]) sqrt(-g) ( cal(R) -2 (partial phi)^2 -V(phi) ) $

where $cal(R)$ is the Ricci scalar and $V(phi)$ is the self-interacting scalar potential of the real scalar field $phi$.

The article proposes radial dependency for the scalar field, i.e. $phi = phi(r)$, and a static and spherically symmetric spacetime metric for the starting assumption

$ dd(s,2) = -U(r) dd(t,2) + dd(r,2)/(U(r)) + R^2 (r) dd(Omega_d, 2) $

where $ dd(Omega_d, 2)$ is the line element of the $d$-dimensional sphere.

From these assumptions and the action, it is possible to derive the following quantities:

$ tensor(Gamma, +a, -b, -c) = i & wide "metric connection" \
	tensor(cal(R), +a, -b, -c, -d) = i & wide "Riemann tensor" \
	tensor(cal(R), -a, -b) = i & wide "Ricci tensor" \
	cal(R) = i & wide "Ricci scalar" \
	tensor(G, -a, -b) = i & wide "Einstein tensor" \
	tensor(T, -a, -b) = i & wide "energy-momentum tensor" \ $

Plugging the last two in the EFE we obtain

$ R''/R &= -2/d phi'^2 $ <riccati>

$ (U R^d phi')' &= 1/4 R^d pdv(V, phi) $ 

$ (U R^d)'' &= d(d-1) R^(d-2) - (d+2)/d R^d V $ <efe3>

$ (U R^(d-1) R')' &= (d-1) R^(d-2) - 1/d R^d V $ <efe4>

where the prime denotes derivation with respect to $r$.

For a given scalar field $phi(r)$ and with the substitution $R(r) = exp( integral^r dd(r') y(r') )$, @riccati can be written in the form

$ y' + y^2 = -2/d phi'^2 $

which is a case of the Riccati equation.

Using $r_0 > 0$ as an arbitrary lenght scale, we can introduce a new dimensionless coordinate $x := r_0 slash r$, which simplifies the calculations, and sets the units to the mass of the solution and to the strenght of the scalar field. At this point, we set $y(r) = dot(P) slash P $ and obtain the following scalar field dependent only on the function $P(x)$

$ phi(x) = sqrt(d/2) integral dd(x) sqrt(- dot.double(P)/P) $ <phi>

where the dot denotes derivation with respect to $x$ and

$ R(x) = r_0/x P(x) $ <RP>

From @efe3 and @efe4, we can isolate $V$

$ -(d+2)/d R^d V &= (U R^d)'' - d (d-1) R^(d-2) \
	-(d+2)/d R^d V &= (d+2)(U R^(d-1) R')' - (d+2) (d-1) R^(d-2) $

therefore

$ (U R^d)'' - d (d-1) R^(d-2) = (d+2)(U R^(d-1) R')' - (d+2) (d-1) R^(d-2) \
	arrow.b.double \
	i $

Solving the last differential equation yields the metric function $U$ in terms of only the function $P(x)$

$ U(x) = (r_0^2 P^2)/x^2 ( c_2 - (2(d-1))/r_0^2 integral dd(x) x^d/P^(d+2) integral dd(x') P^(d-2)/x'^d + c_1/r_0^(d+1) integral dd(x) x^d/P^(d+2) ) $ <U>

where $c_1$ and $c_2$ are integration constants, whose values can be determined imposing boundary conditions on the asymptotic behaviour of the spacetime metric.

Substituting @U and @RP in either @efe3 or @efe4 returns the scalar potential $V$, this too only dependent on the function $P(x)$

$ V[phi(x)] = (d^2(d-1))/(d+2) x^2/(r_0^2 P^2) - d/(d+2) x^(d+2)/(r_0^d P^d) dv(,x) ( x^2 dv(,x) (U P^2)/x^2 ) $

== Classification of the solution

As seen in the previous section, the scalar field $phi$, the metric function $U$ and the scalar potential $V$ all depend exclusively on the function $P(x)$, therefore the latter encapsulates all the information about the solution.

=== Behaviour of $P(x)$

Since the scalar field $phi$ must be real, from @phi we obtain that $dot.double(P) slash P$ must be negative. If we set $P$ to be positive everywhere, we also obtain $dot.double(P) < 0$.
