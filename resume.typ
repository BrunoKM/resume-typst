// Resume - Bruno K. Mlodozeniec
// Typst version converted from LaTeX Awesome-CV template

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
#set text(font: "Helvetica Neue", size: 9pt)
#set par(justify: false, leading: 0.52em)

// Colors
#let awesome-red = rgb("#DC3522")
#let awesome-blue = rgb("#0395DE")
#let dark-text = rgb("#333333")
#let gray-text = rgb("#5D5D5D")
#let light-gray = rgb("#999999")

// Helper functions
#let section-title(title) = {
  v(3mm)
  text(16pt, weight: "bold", fill: awesome-red, upper(title))
  v(-2pt)
  line(length: 100%, stroke: 0.5pt + awesome-red)
  v(2mm)
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

#let cv-pub(year: none, content) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    align(right)[#text(weight: "bold", fill: light-gray, year)],
    content,
  )
  v(4pt)
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

// ============================================================================
// HEADER
// ============================================================================

#align(center)[
  #text(32pt, weight: "light", fill: gray-text)[Bruno K.] #text(32pt, weight: "bold", fill: dark-text)[Mlodozeniec]

  #v(2pt)
  #text(10pt, weight: "medium", fill: gray-text)[PhD in Machine Learning]

  #v(4pt)
  #text(9pt, fill: gray-text)[University of Cambridge]

  #v(6pt)
  #text(9pt, fill: gray-text)[
    (+44) 7491 337 951
    #h(1em) | #h(1em)
    #link("mailto:bkmlodozeniec@gmail.com")[bkmlodozeniec\@gmail.com]
    #h(1em) | #h(1em)
    #link("https://linkedin.com/in/bkmlodozeniec")[linkedin.com/in/bkmlodozeniec]
    #h(1em) | #h(1em)
    #link("https://github.com/BrunoKM")[github.com/BrunoKM]
    #h(1em) | #h(1em)
    #link("https://brunokm.github.io")[brunokm.github.io]
  ]
]

// ============================================================================
// EDUCATION
// ============================================================================

#section-title("Education")

#cv-entry(
  title: [PhD in Advanced Machine Learning \ #text(size: 8pt, weight: "regular")[Supervised by Richard Turner, David Krueger and Bernhard Schölkopf]],
  organization: [University of Cambridge],
  date: [Jan 2023–2026],
  location: [Department of Engineering],
  description: [Scaling and hyperparameter transfer, understanding optimisation & generalisation in deep learning, influence functions, theory.],
)

#cv-entry(
  title: [Master of Engineering \ #text(size: 8pt, weight: "regular")[Computer and Information Engineering]],
  organization: [University of Cambridge],
  date: [2016–2020],
  location: [Emmanuel College],
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

// ============================================================================
// EXPERIENCE
// ============================================================================

#section-title("Experience")

#cv-experience(
  title: [*Intern & Research Assistant*],
  organization: [Apple Machine Learning Research (MLR)],
  date: [May 2025 – Nov 2025],
  location: [Paris, France],
  items: (
    [Developed #link("https://arxiv.org/abs/2512.22382")[#text(fill: awesome-blue)[a method for per-module hyperparameter transfer and a parameterisation enabling transfer across major scaling axes]], yielding 1.32× speed-up at 7.2B parameter scale from transferred per-module hyperparameters alone.],
    [Incorporated my work into the pretraining pipeline for training a large-scale multimodal discrete diffusion model.],
  ),
)

#cv-experience(
  title: [*Deep Learning Researcher*],
  organization: [Qualcomm],
  date: [Oct 2021 – Dec 2022],
  location: [Amsterdam, Netherlands],
  items: (
    [Worked on robustness of deep learning algorithms, particularly in the context of federated learning and non-_iid_ data],
    [Developed a novel method for efficiently learning invariances in deep learning models – #link("https://arxiv.org/abs/2304.14766")[#text(fill: awesome-blue)[Hyperparameter Optimization through Neural Network Partitioning]]],
  ),
)

#cv-experience(
  title: [*AI Resident*],
  organization: [Microsoft Research],
  date: [Sep 2020 – Sep 2021],
  location: [Cambridge, UK],
  items: (
    [Developed a transferable generative model for accelerating molecular dynamics simulation, resulting in the article #link("https://arxiv.org/abs/2302.01170")[#text(fill: awesome-blue)[Timewarp: Transferable Acceleration of Molecular Dynamics by Learning Time-Coarsened Dynamics]]],
    [#link("https://microsoft.github.io/knossos-ksc/index.html")[#text(fill: awesome-blue)[Worked on reinforcement learning for optimising deep learning code]]],
    [Worked on Bayesian Optimisation and probabilistic modelling methods to automate synthetic biology experiments],
  ),
)

#cv-experience(
  title: [*Engineering Intern* | Siri],
  organization: [Apple],
  date: [June 2019 – Sep 2019],
  location: [Cambridge, UK],
  items: (
    [Trained an unsupervised learning model for distributional shift detection, better detecting when to ask to clarify a Siri request.],
  ),
)

#cv-experience(
  title: [*Machine Intelligence Laboratory Intern* \ #text(size: 8pt, weight: "regular")[Supervised by Professor Mark Gales]],
  organization: [University of Cambridge],
  date: [Aug 2018 – Sep 2018],
  location: [Cambridge, UK],
  items: (
    [Developed and published a novel method for training uncertainty-aware neural networks: #link("https://openreview.net/pdf?id=BygSP6Vtvr")[#text(fill: awesome-blue)[*Ensemble Distribution Distillation*]]],
  ),
)

#cv-experience(
  title: [*Visual Computing Group Intern*],
  organization: [Harvard University],
  date: [July 2018 – Aug 2018],
  location: [Cambridge, USA],
  items: (
    [Investigated methods for (graph) motif discovery for a brain connectome.],
  ),
)

#cv-experience(
  title: [*Machine Learning Intern*],
  organization: [Cisco Systems],
  date: [July 2017 – Sep 2017],
  location: [Oslo, Norway],
  items: (
    [Implemented and benchmarked deep learning architectures for a speech detection system at Cisco Webex],
  ),
)

// ============================================================================
// PAGE BREAK
// ============================================================================

#pagebreak()

// ============================================================================
// PUBLICATIONS
// ============================================================================

#section-title("Publications")

#let first-author = text(size: 7pt, baseline: -1pt)[\*]

#cv-pub(year: "2025")[
  #link("https://arxiv.org/abs/2512.22382")[#text(fill: awesome-blue, weight: "bold")[Completed Hyperparameter Transfer Across Modules, Width, Depth, Batch size and Duration.]] \
  *Bruno Mlodozeniec*, Pierre Ablin, Louis Bethune, Dan Busbridge, Michal Klein, Jason Ramapuram, Marco Cuturi. \
  #text(style: "italic", fill: rgb("#DAA520"))[Under review]
]

#cv-pub(year: "2025")[
  #link("https://arxiv.org/abs/2506.12965")[#text(fill: awesome-blue, weight: "bold")[Distributional Training Data Attribution: What Do Influence Functions Sample?]] \
  *Bruno Mlodozeniec*#first-author, Isaac Reid#first-author, Sam Power, David Krueger, Murat Erdogdu, Richard E. Turner, Roger Grosse. \
  #text(style: "italic", fill: rgb("#DAA520"))[NeurIPS 2025 *Spotlight*.] #text(size: 7pt, fill: light-gray)[[#first-author equal contributions first authors]]
]

#cv-pub(year: "2025")[
  #link("https://arxiv.org/abs/2509.23437")[#text(fill: awesome-blue, weight: "bold")[Better Hessians Matter: Studying the Impact of Curvature Approximations in Influence Functions]] \
  Steve Hong, Runa Eschenhagen, *Bruno Mlodozeniec*, Richard Turner. \
  #text(style: "italic", fill: rgb("#DAA520"))[NeurIPS 2025 Workshop on Mechanistic Interpretability Spotlight.]
]

#cv-pub(year: "2025")[
  #link("https://openreview.net/pdf?id=V1FP9WDKa7")[#text(fill: awesome-blue, weight: "bold")[Probabilistic Modelling is Sufficient for Causal Inference.]] \
  *Bruno Mlodozeniec*, David Krueger, Richard E. Turner. \
  #text(style: "italic", fill: rgb("#DAA520"))[ICML 2025 *Oral (top 1%)*.]
]

#cv-pub(year: "2025")[
  #link("https://brunokm.github.io/diffusion-influence.html")[#text(fill: awesome-blue, weight: "bold")[Influence Functions for Scalable Data Attribution in Diffusion Models.]] \
  *Bruno Mlodozeniec*, Runa Eschenhagen, Juhan Bae, Alexander Immer, David Krueger, Richard E. Turner. \
  #text(style: "italic", fill: rgb("#DAA520"))[ICLR 2025 *Oral (top 1%)*.]
]

#cv-pub(year: "2024")[
  #link("https://brunokm.github.io/implicitly-bayesian.html")[#text(fill: awesome-blue, weight: "bold")[Implicitly Bayesian Prediction Rules in Deep Learning.]] \
  *Bruno Mlodozeniec*, Richard E. Turner, David Krueger. \
  #text(style: "italic", fill: rgb("#DAA520"))[Proceedings Track of AABI Oral.]
]

#cv-pub(year: "2024")[
  #link("https://arxiv.org/abs/2405.18457")[#text(fill: awesome-blue, weight: "bold")[Improving Linear System Solvers for Hyperparameter Optimisation in Iterative Gaussian Processes.]] \
  Jihao Andreas Lin, Shreyas Padhy, *Bruno Mlodozeniec*, Javier Antorán, José Miguel Hernández-Lobato. \
  #text(style: "italic", fill: rgb("#DAA520"))[NeurIPS 2024.]
]

#cv-pub(year: "2024")[
  #link("https://arxiv.org/abs/2403.01946")[#text(fill: awesome-blue, weight: "bold")[A Generative Model of Symmetry Transformations.]] \
  James Urquhart Allingham, *Bruno Mlodozeniec*, Shreyas Padhy, Javier Antorán, David Krueger, Richard E. Turner, Eric Nalisnick, José Miguel Hernández-Lobato. \
  #text(style: "italic", fill: rgb("#DAA520"))[NeurIPS 2024.]
]

#cv-pub(year: "2024")[
  #link("https://arxiv.org/abs/2402.04384")[#text(fill: awesome-blue, weight: "bold")[Denoising Diffusion Probabilistic Models in Six Simple Steps.]] \
  Richard E. Turner, Cristiana-Diana Diaconu, Stratis Markou, Aliaksandra Shysheya, Andrew Y. K. Foong, *Bruno Mlodozeniec*.
]

#cv-pub(year: "2023")[
  #link("https://arxiv.org/abs/2302.01170")[#text(fill: awesome-blue, weight: "bold")[Timewarp: Transferable Acceleration of Molecular Dynamics by Learning Time-Coarsened Dynamics.]] \
  Leon Klein#first-author, Andrew Y. K. Foong#first-author, Tor Erlend Fjelde#first-author, *Bruno Mlodozeniec*#first-author, Marc Brockschmidt, Sebastian Nowozin, Frank Noé, Ryota Tomioka. \
  #text(style: "italic", fill: rgb("#DAA520"))[NeurIPS 2023 *Spotlight*.] #text(size: 7pt, fill: light-gray)[[#first-author equal contributions first authors]]
]

#cv-pub(year: "2023")[
  #link("https://arxiv.org/abs/2304.14766")[#text(fill: awesome-blue, weight: "bold")[Hyperparameter Optimization through Neural Network Partitioning.]] \
  *Bruno Mlodozeniec*, Matthias Reisser, Christos Louizos. \
  #text(style: "italic", fill: rgb("#DAA520"))[ICLR 2023.]
]

#cv-pub(year: "2020")[
  #link("https://brunokm.github.io/resources/causal_inference-a_probabilistic_modelling_perspective_(november_2020).pdf")[#text(fill: awesome-blue, weight: "bold")[Causal Inference -- A Probabilistic Modelling Perspective.]] \
  *Bruno Mlodozeniec*, Richard Turner. _MEng Thesis_
]

#cv-pub(year: "2020")[
  #link("https://arxiv.org/abs/1905.00076")[#text(fill: awesome-blue, weight: "bold")[Ensemble Distribution Distillation.]] \
  Andrey Malinin#first-author, *Bruno Mlodozeniec*#first-author, and Mark Gales. \
  #text(style: "italic", fill: rgb("#DAA520"))[ICLR 2020.] #text(size: 7pt, fill: light-gray)[[#first-author equal contributions first authors]]
]

// ============================================================================
// HONOURS & AWARDS
// ============================================================================

#section-title("Honours & Awards")

#cv-award(
  title: [PhD Fellowship],
  organization: [Qualcomm Innovation Fellowship],
  date: [2025],
  description: [I was awarded a \$30000 PhD scholarship awarded for the "Distributional Training Data Attribution" project.],
)

#cv-award(
  title: [Engineering Leaders Scholarship],
  organization: [Royal Academy of Engineering],
  date: [2018],
  location: [Royal Academy of Engineering, UK],
  description: [I was awarded a £5000 scholarship aimed at supporting engineering undergraduates with potential to become future leaders in their fields, and who are able to act as role models and inspire a future generation of engineers.],
)

#cv-award(
  title: [Honourable Mention],
  organization: [International Mathematical Olympiad (IMO)],
  date: [July 2015],
  location: [Thailand],
  description: [I was twice invited to represent Norway at the International Mathematical Olympiad after ranking 6th and 3rd in two consecutive years in the Norwegian Mathematics Olympiad.],
)

// ============================================================================
// SOCIETIES
// ============================================================================

#section-title("Societies")

#grid(
  columns: (1fr, auto),
  column-gutter: 1em,
  [
    *Founder* --- #link("http://cuai.org.uk")[#text(fill: awesome-blue)[Cambridge University Artificial Intelligence Society]] \
    #text(fill: gray-text)[University of Cambridge]
  ],
  align(right)[#text(fill: gray-text)[2018 – 2020]],
)
#v(2pt)
#block(inset: (left: 1em))[
  • During undergraduate studies, I co-founded and chaired the Cambridge University Artificial Intelligence Society -- a student society organising machine-learning projects and hosting talks from senior researchers and engineers at major industrial labs.
]
