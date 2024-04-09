#let temp(
	title: none,
	authors: (),
	abstract: [],
	doc,
	) = {
	
	set page(
		paper: "a4",
		margin: (50pt),
		)

	v(1fr)

	set align(center)
	text(
		font: "Linux Biolinum",
		size: 30pt,
		weight: "bold",
		)[#title]
	
	v(10pt)

	text(
		size: 20pt,
		weight: "semibold",
		)[#authors.at(0).name \ ]
	
	v(3pt)

	text(
		size: 15pt,
		weight: "regular",
		)[Advisor: #authors.at(1).name]

	v(2fr)

	image(
		"./images/unica_logo.png",
		width: 35%,
		)

	text(
		style: "italic",
		)[
			Department of Physics \
			University of Cagliari \
			Italy \
			#datetime.today().display("[month repr:long] [year]")
			]

	pagebreak()

	v(100pt)

	align(right)[
		_To Sarah, my friends, and family._
		]
	
	pagebreak()

	par(justify: false)[
		*Abstract* \
		#abstract
		]

	pagebreak()

	outline()
	
	pagebreak()

	set page(
		header: align(right)[
			_ #title _
			],
		numbering: "1",
		)

	set par(
		justify: true,
		)

	set text(
		weight: "regular",	
		size: 10pt,
		)

	set heading(
		numbering: "1.",
		depth: 1,
		)

	set align(left)
	doc
}

