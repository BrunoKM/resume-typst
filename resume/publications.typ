// Publications Section
#import "_template.typ": *

#section-title("Publications")

#let first-author = box(height: 0pt)[#text(size: 4.2pt, fill: palette1.darken(30%), baseline: -3.5pt, weight: "bold")[#h(0.1em)$diamond.filled$]]

#cv-pubs((
  (
    year: "2025",
    link: "https://arxiv.org/abs/2512.22382",
    title: [Completed Hyperparameter Transfer Across Modules, Width, Depth, Batch size and Duration],
    authors: [*Bruno Mlodozeniec*, Pierre Ablin, Louis Bethune, Dan Busbridge, Michal Klein, Jason Ramapuram, Marco Cuturi.],
    venue: [#text(fill: light-gray)[_Under Review_]],
  ),
  (
    year: "2025",
    link: "https://arxiv.org/abs/2506.12965",
    title: [Distributional Training Data Attribution: What Do Influence Functions Sample?],
    authors: [*Bruno Mlodozeniec*#first-author, Isaac Reid#first-author, Sam Power, David Krueger, Murat Erdogdu, Richard E. Turner, Roger Grosse.],
    venue: [NeurIPS],
    award: [Spotlight],
  ),
  (
    year: "2025",
    link: "https://arxiv.org/abs/2509.23437",
    title: [Better Hessians Matter: Studying the Impact of Curvature Approximations in Influence Functions],
    authors: [Steve Hong, Runa Eschenhagen, *Bruno Mlodozeniec*, Richard Turner.],
    venue: [#text(size: 0.9em)[NeurIPS Workshop]],
    award: [Spotlight],
    extra: [Workshop on Mechanistic Interpretability],
  ),
  (
    year: "2025",
    link: "https://openreview.net/pdf?id=V1FP9WDKa7",
    title: [Probabilistic Modelling is Sufficient for Causal Inference],
    authors: [*Bruno Mlodozeniec*, David Krueger, Richard E. Turner.],
    venue: [
      ICML
      // \ #text(size: 0.7em, fill: light-gray)[_(top 1%)_]
    ],
    award: [Oral],
  ),
  (
    year: "2025",
    link: "https://brunokm.github.io/diffusion-influence.html",
    title: [Influence Functions for Scalable Data Attribution in Diffusion Models],
    authors: [*Bruno Mlodozeniec*, Runa Eschenhagen, Juhan Bae, Alexander Immer, David Krueger, Richard E. Turner.],
    venue: [
      ICLR
      // \ #text(size: 0.7em, fill: light-gray)[_(top 1%)_]
    ],
    award: [Oral],
  ),
  (
    year: "2024",
    link: "https://brunokm.github.io/implicitly-bayesian.html",
    title: [Implicitly Bayesian Prediction Rules in Deep Learning],
    authors: [*Bruno Mlodozeniec*, Richard E. Turner, David Krueger.],
    venue: [AABI\ Proceedings],
    award: [Oral],
  ),
  (
    year: "2024",
    link: "https://arxiv.org/abs/2405.18457",
    title: [Improving Linear System Solvers for Hyperparameter Optimisation in Iterative Gaussian Processes],
    authors: [Jihao Andreas Lin, Shreyas Padhy, *Bruno Mlodozeniec*, Javier Antorán, José Miguel Hernández-Lobato.],
    venue: [NeurIPS],
  ),
  (
    year: "2024",
    link: "https://arxiv.org/abs/2403.01946",
    title: [A Generative Model of Symmetry Transformations],
    authors: [James Urquhart Allingham, *Bruno Mlodozeniec*, Shreyas Padhy, Javier Antorán, David Krueger, Richard E. Turner, Eric Nalisnick, José Miguel Hernández-Lobato.],
    venue: [NeurIPS],
  ),
  (
    year: "2024",
    link: "https://arxiv.org/abs/2402.04384",
    title: [Denoising Diffusion Probabilistic Models in Six Simple Steps],
    authors: [Richard E. Turner, Cristiana-Diana Diaconu, Stratis Markou, Aliaksandra Shysheya, Andrew Y. K. Foong, *Bruno Mlodozeniec*.],
    venue: [#text(fill: light-gray)[_Tutorial_]],
  ),
  (
    year: "2023",
    link: "https://arxiv.org/abs/2302.01170",
    title: [Timewarp: Transferable Acceleration of Molecular Dynamics by Learning Time-Coarsened Dynamics],
    authors: [Leon Klein#first-author, Andrew Y. K. Foong#first-author, Tor Erlend Fjelde#first-author, *Bruno Mlodozeniec*#first-author, Marc Brockschmidt, Sebastian Nowozin, Frank Noé, Ryota Tomioka.],
    venue: [NeurIPS],
    award: [Spotlight],
  ),
  (
    year: "2023",
    link: "https://arxiv.org/abs/2304.14766",
    title: [Hyperparameter Optimization through Neural Network Partitioning],
    authors: [*Bruno Mlodozeniec*, Matthias Reisser, Christos Louizos.],
    venue: [ICLR],
  ),
  (
    year: "2020",
    link: "https://brunokm.github.io/resources/causal_inference-a_probabilistic_modelling_perspective_(november_2020).pdf",
    title: [Causal Inference -- A Probabilistic Modelling Perspective],
    authors: [*Bruno Mlodozeniec*, Richard Turner.],
    venue: [#text(fill: light-gray)[_MEng Thesis_]],
  ),
  (
    year: "2020",
    link: "https://arxiv.org/abs/1905.00076",
    title: [Ensemble Distribution Distillation],
    authors: [Andrey Malinin#first-author, *Bruno Mlodozeniec*#first-author, and Mark Gales.],
    venue: [ICLR],
  ),
))

#align(right)[#text(size: 7pt, fill: light-gray)[#first-author equal contributions first authors]]
#v(-1em)
