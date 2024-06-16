#import "temp_thesis.typ": temp

#show: doc => temp(
	title: [
		Thesis title
		],
	authors: (
			(name: "Simone Iovine",
			affiliation: "",
			email: "simone.iovine1@gmail.com",
			),
			(name: "Mariano Cadoni",
			affiliation: "INFN",
			email: "mariano.cadoni@ca.infn.it",
			),
		),
	abstract: include "abstract.typ",
	doc,
	)

#v(50pt)

#include "0_intro.typ"

#pagebreak()

#v(50pt)

#include "1_sec.typ"

#pagebreak()

#v(50pt)

#include "2_sec.typ"

#pagebreak()

#v(50pt)

#include "3_sec.typ"

#pagebreak()

#v(50pt)

#bibliography("bibliography.yml")
