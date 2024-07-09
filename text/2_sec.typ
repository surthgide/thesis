#import "@preview/physica:0.9.3": *

#let var(f, x) = { $dv(#f, #x, d:delta)$ }
#let detg = { $sqrt(-g)$ }

// ==========

= Solution-generating method

== Motivation

here

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

$ (U R^d)'' &= d(d-1) R^(d-2) - (d+2)/d R^d V $

$ (U R^(d-1) R')' &= (d-1) R^(d-2) - 1/d R^d V $

For a given scalar field $phi(r)$ and with the substitution $R(r) = exp( integral^r dd(r') y(r') )$, @riccati can be written in the form

$ y' + y^2 = -2/d phi'^2 $

which is a case of the Riccati equation.

Using $r_0 > 0$ as an arbitrary lenght scale, we can introduce a new dimensionless coordinate $x := r_0 slash r$, which simplifies the calculations, and sets the units to the mass of the solution and to the strenght of the scalar field. At this point, we set $y(r) = dot(P) slash P $ and obtain the following scalar field dependent only on the function $P(x)$

$ phi(x) = sqrt(d/2) integral dd(x) sqrt(- dot.double(P)/P) $

where the dot denotes derivation with respect to $x$ and

$ R(x) = r_0/x P(x) $

== Classification of the solution

here
