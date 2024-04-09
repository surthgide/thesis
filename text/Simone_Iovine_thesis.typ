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
	abstract: lorem(80),
	doc,
	)

= Introduction

#lorem(100)

= Section 1

#lorem(100)

== Subsection

#lorem(100)

= Section 2

#lorem(100)

#bibliography("bibliography.yml")
