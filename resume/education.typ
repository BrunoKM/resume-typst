// Education Section
#import "_template.typ": *

#section-title("Education")

#cv-entry(
  title: [PhD in Advanced Machine Learning],
  organization: [University of Cambridge],
  date: [Jan 2023–2026],
  location: [Department of Engineering],
  description: [
    Supervised by Richard Turner, David Krueger and Bernhard Schölkopf.

    Scaling and hyperparameter transfer, understanding optimisation & generalisation in deep learning, influence functions, theory.
  ],
  logo: "/figures/cambridge-logo.svg",
  major: [Advanced Machine Learnin],
)

#cv-entry(
  title: [Master of Engineering],
  organization: [University of Cambridge],
  date: [2016–2020],
  location: [Department of Engineering],
  major: [Computer and Information Engineering],
  logo: "/figures/cambridge-logo.svg",
)

#block(inset: (left: 1em))[
  #set text(size: 8.5pt)
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1.5em,
    row-gutter: 0.3em,
    text(fill: light-gray)[Performance],
    [
      *Year 1:* 1st Class. Top 10% of class. \
      *Year 2:* 1st Class. Top 8% of class. \
      *Year 3:* 1st Class. Top 7% of class. \
      *Year 4:* 1st Class for Master's Thesis. #text(size: 7pt)[Courses unclassed that year due to COVID-19.]
    ],
  )
  #v(4pt)
  Awarded Rowley Mainhood College Prize and Frank Marriott Scholarship for academic performance on exams.
  #v(4pt)
  #text(fill: light-gray)[Master's Thesis:] *Causal Inference: A Probabilistic Modelling Perspective* supervised by Professor Richard Turner.
]
