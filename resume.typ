// Resume - Bruno K. Mlodozeniec
// Typst version converted from LaTeX Awesome-CV template

// Import shared template
#import "resume/_template.typ": *

// Page settings
#set page(
  paper: "a4",
  margin: (left: 1.4cm, right: 1.4cm, top: 1.2cm, bottom: 1.2cm),
  footer: context [
    #set align(center)
    #set text(8pt, fill: gray)
    Bruno K. Mlodozeniec #h(1fr) #counter(page).display()
  ]
)

// Font settings
#set text(font: "Charter", size: 9pt)
#set par(justify: false, leading: 0.20em, spacing: 0.4em)

// ============================================================================
// HEADER
// ============================================================================

#align(center)[
  #text(28pt, weight: "light", fill: dark-text)[Bruno K.] #text(28pt, weight: "bold", fill: dark-text)[Mlodozeniec]

  #text(10pt, weight: "medium", fill: gray-text)[PhD in Machine Learning]

  #v(4pt)
  #text(9pt, fill: gray-text)[University of Cambridge]

  #v(6pt)
  #text(6pt, fill: gray-text, font: "SF NS Mono")[
  // #text(9pt, fill: gray-text)[
    (+44) 7491 337 951
    #h(1fr) | #h(1fr)
    #link("mailto:bkmlodozeniec@gmail.com")[bkmlodozeniec\@gmail.com]
    #h(1fr) | #h(1fr)
    #link("https://linkedin.com/in/bkmlodozeniec")[in/bkmlodozeniec]
    #h(1fr) | #h(1fr)
    #link("https://github.com/BrunoKM")[github.com/BrunoKM]
    #h(1fr) | #h(1fr)
    #link("https://brunokm.github.io")[brunokm.github.io]
  ]
]

// ============================================================================
// SECTIONS
// ============================================================================

#include "resume/education.typ"
#include "resume/experience.typ"

#pagebreak()

#include "resume/publications.typ"
#include "resume/awards.typ"
#include "resume/societies.typ"
