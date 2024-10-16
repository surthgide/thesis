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
		// font: "Linux Biolinum",
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

	v(1fr)

	par(justify: false)[
		*Abstract* \
		#abstract
		]
	
	v(2fr)

	pagebreak()

	v(1fr)

	outline(
		title: [Contents],
		indent: auto,
		)

	// show outline.entry: set text(fill: blue)

	v(2fr)
	
	pagebreak()

	set page(
		header: align(right)[
			#text(
				size: 10pt,
				weight: "regular",
				)[_ #title _]
			],
		numbering: "1",
		)

	counter(page).update(1)

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
	
	show heading.where(level: 1): it => [
		#set text(size: 30pt)
		#v(20pt)
		#counter(math.equation).update(0)
		#it.body
		#v(30pt)
		]

	set math.equation(numbering: n => {
		let k = counter(heading).get().first()
		numbering("(1.1)", k, n)
		},
		supplement: [Eq.])

	show ref: set text(fill: blue)

	set align(left)
	doc
}

