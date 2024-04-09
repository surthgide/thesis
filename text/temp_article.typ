#let temp(
	title: none,
	authors: (),
	abstract: [],
	doc,
	) = {
	
	set page(
		paper: "a4",
		margin: (50pt),
		header: align(right)[
			_ #title _
			],
		numbering: "1",
		)

	set align(center)
	text(
		font: "Linux Biolinum",
		size: 17pt,
		weight: "bold",
		)[#title]

	let count = authors.len()
	let ncols = calc.min(count, 3)
	
	grid(
    		columns: (1fr,) * ncols,
    		row-gutter: 24pt,
		..authors.map(author => [
			#author.name \
			#author.affiliation \
			#link("mailto:" + author.email)
			]),
 		)

	par(justify: false)[
		*Abstract* \
		#abstract
		]

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
	outline()
	columns(2, doc)
}

