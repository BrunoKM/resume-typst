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

#let link-blue = palette3.darken(20%)
// Helper functions
#let section-title(title) = {
  v(1.2em)
  block[
    #text(15pt, weight: "bold", fill: dark-text.lighten(2%), title)
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
    [#text(weight: "bold", fill: gray-text, title)],
    align(right)[#text(fill: light-gray, date)],
    [#text(fill: gray-text, organization)],
    align(right)[#text(fill: light-gray.lighten(10%), style: "italic", location)],
  )
  if items.len() > 0 {
    v(2pt)
    for item in items {
      block(inset: (left: 0.6em))[
        #text(fill: dark-text)[• #item]
      ]
    }
  }
  v(4pt)
}

// Venue color for publications
#let venue-color = gray-text.darken(20%)

// Multiple publications in a single aligned grid
// Usage: cv-pubs((
//   (year: "2025", link: "https://...", title: "Paper Title", authors: [...], venue: [...], extra: [...]),
//   ...
// ))
// Note: extra is optional and appears below authors if specified
#let cv-pubs(pubs) = {
  grid(
    columns: (auto, 2.5cm, 1fr),
    align: (left + horizon, right + horizon, left + top),
    column-gutter: 0.6em,
    row-gutter: 0.85em,
    ..pubs.map(pub => (
      text(size: 6.5pt, fill: light-gray.lighten(20%), pub.year),
      align(center)[
        #text(fill: venue-color)[#if "venue" in pub [#pub.venue]]
        #if "award" in pub [\ #text(fill: black, size: 1.09em)[*#pub.award *]]
      ],
      [
        #par(spacing: 0.3em)[
          #link(pub.link)[#text(fill: link-blue, weight: "bold")[#pub.title]]
        ]
        #par(spacing: 0.3em)[
          #text(fill: gray-text.darken(20%))[#pub.authors]
        ]
        #if "extra" in pub and pub.extra != none [
          #par(spacing: 0.2em)[
            #text(fill: gray-text.lighten(10%))[#pub.extra]
          ]
        ]
        // #if pub.venue != none [ \ #text(style: "italic", fill: venue-color)[#pub.venue]]
      ],
    )).flatten()
  )
}

#let cv-award(
  title: none,
  subtitle: none,
  date: none,
  description: none,
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [
      #text(weight: "bold", size: 1.1em, fill: dark-text.darken(20%), title)
      #if subtitle != none [#text(size: 1.1em, fill: dark-text.darken(0%))[ | #subtitle]]
    ],
    align(right)[#text(fill: light-gray, date)],
  )
  if description != none {
    v(2pt)
    block(inset: (left: 0.6em))[
      #text(fill: dark-text)[#description]
    ]
  }
  v(4pt)
}
