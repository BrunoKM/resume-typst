// Shared template definitions for CV sections

// Colors
#let awesome-red = rgb("#DC3522")
#let awesome-blue = rgb("#0395DE")
#let dark-text = rgb("#333333")
#let gray-text = rgb("#5D5D5D")
#let light-gray = rgb("#999999")

#let palette1 = rgb(204, 57, 42)
#let palette2 = rgb(79, 155, 143)
#let palette3 = rgb(44, 97, 194)
#let palette4 = rgb(217, 116, 89)
#let palette5 = rgb(228, 197, 119)
#let palette6 = rgb(63, 100, 67)

// Helper functions
#let section-title(title) = {
  v(1.2em)
  block[
    #text(15pt, weight: "bold", fill: dark-text, upper(title))
    #h(0.5em)
    #box(height: 0.5pt, width: 1fr, inset: 0em)[#line(length: 100%, stroke: 1pt + dark-text)]
  ]
  v(0.5em)
}

#let cv-entry(
  title: none,
  organization: none,
  date: none,
  location: none,
  description: none,
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    row-gutter: 0.3em,
    [
      #text(weight: "bold", fill: dark-text, organization)
      #if title != none {
        [ --- #text(fill: dark-text, title)]
      }
    ],
    align(right)[#text(fill: gray-text, date)],
    if location != none {
      text(fill: gray-text, style: "italic", location)
    },
  )
  if description != none {
    v(2pt)
    text(fill: dark-text, description)
  }
  v(4pt)
}

#let cv-experience(
  title: none,
  organization: none,
  date: none,
  location: none,
  items: (),
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [#text(weight: "bold", fill: dark-text, title)],
    align(right)[#text(fill: gray-text, date)],
    [#text(fill: gray-text, organization)],
    align(right)[#text(fill: gray-text, style: "italic", location)],
  )
  if items.len() > 0 {
    v(2pt)
    for item in items {
      block(inset: (left: 1em))[
        #text(fill: dark-text)[• #item]
      ]
    }
  }
  v(4pt)
}

// Multiple publications in a single aligned grid
// Usage: cv-pubs((
//   (year: "2025", link: "https://...", title: "Paper Title", authors: [...], venue: [...]),
//   ...
// ))
#let cv-pubs(pubs) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.8em,
    ..pubs.map(pub => (
      align(right)[#text(weight: "bold", fill: light-gray, pub.year)],
      [
        #link(pub.link)[#text(fill: awesome-blue, weight: "bold")[#pub.title]] \
        #pub.authors
        #if pub.venue != none [ \ #pub.venue]
      ],
    )).flatten()
  )
}

#let cv-award(
  title: none,
  organization: none,
  date: none,
  location: none,
  description: none,
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [#text(weight: "bold", fill: dark-text, organization) #text(fill: dark-text)[ | #title]],
    align(right)[#text(fill: gray-text, date)],
  )
  if location != none {
    text(fill: gray-text, style: "italic", location)
  }
  if description != none {
    v(2pt)
    block(inset: (left: 1em))[
      #text(fill: dark-text)[• #description]
    ]
  }
  v(4pt)
}
