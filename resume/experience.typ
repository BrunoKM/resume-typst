// Experience Section
#import "_template.typ": *

#section-title("Experience")

#cv-experience(
  title: [Intern & Research Assistant],
  organization: [Apple Machine Learning Research (MLR)],
  date: [May 2025 – Now],
  location: [Paris, France],
  items: (
    [Developed #link("https://arxiv.org/abs/2512.22382")[#text(fill: link-blue)[a method for per-module hyperparameter transfer and a parameterisation enabling transfer across major scaling axes]], yielding 1.32× speed-up at 7.2B parameter scale from transferred per-module hyperparameters alone.],
    [Incorporated my work into the pretraining pipeline for training large-scale multimodal discrete diffusion models targetting 30B-1T parameter scale.],
  ),
  logo: "/figures/apple-logo.svg",
)

#cv-experience(
  title: [Deep Learning Researcher],
  organization: [Qualcomm AI Research],
  date: [Oct 2021 – Dec 2022],
  location: [Amsterdam, Netherlands],
  items: (
    [Worked on robustness of deep learning algorithms, particularly in the context of federated learning and non-_iid_ data],
    [Developed a novel method for efficiently learning invariances in deep learning models – #link("https://arxiv.org/abs/2304.14766")[#text(fill: link-blue)[Hyperparameter Optimization through Neural Network Partitioning]]],
  ),
  // logo: "/figures/qualcomm-logo.svg",
)

#cv-experience(
  title: [AI Resident],
  organization: [Microsoft Research],
  date: [Sep 2020 – Sep 2021],
  location: [Cambridge, UK],
  items: (
    [Developed a transferable generative model for accelerating molecular dynamics simulation, resulting in the article #link("https://arxiv.org/abs/2302.01170")[#text(fill: link-blue)[Timewarp: Transferable Acceleration of Molecular Dynamics by Learning Time-Coarsened Dynamics]]],
    [#link("https://microsoft.github.io/knossos-ksc/index.html")[#text(fill: link-blue)[Worked on reinforcement learning for optimising deep learning code]]],
    [Worked on Bayesian Optimisation and probabilistic modelling methods to automate synthetic biology experiments],
  ),
  logo: "/figures/microsoft-logo.svg",
)

#cv-experience(
  title: [Engineering Intern | Siri],
  organization: [Apple],
  date: [June 2019 – Sep 2019],
  location: [Cambridge, UK],
  items: (
    [Trained an unsupervised learning model for distributional shift detection, better detecting when to ask to clarify a Siri request.],
  ),
  logo: "/figures/apple-logo.svg",
)

#cv-experience(
  title: [Machine Intelligence Laboratory Intern \ #text(size: 8pt, weight: "regular")[Supervised by Professor Mark Gales]],
  organization: [University of Cambridge],
  date: [Aug 2018 – Sep 2018],
  location: [Cambridge, UK],
  items: (
    [Developed and published a novel method for training uncertainty-aware neural networks: #link("https://openreview.net/pdf?id=BygSP6Vtvr")[#text(fill: link-blue)[Ensemble Distribution Distillation]]],
  ),
  logo: "/figures/cambridge-logo.svg",
)

#cv-experience(
  title: [Visual Computing Group Intern],
  organization: [Harvard University],
  date: [July 2018 – Aug 2018],
  location: [Cambridge, USA],
  items: (
    [Investigated methods for (graph) motif discovery for a brain connectome.],
  ),
  logo: "/figures/harvard-logo.svg",
)

#cv-experience(
  title: [Machine Learning Intern],
  organization: [Cisco Systems],
  date: [July 2017 – Sep 2017],
  location: [Oslo, Norway],
  items: (
    [Implemented and benchmarked deep learning architectures for a speech detection system at Cisco Webex],
  ),
  logo: "/figures/cisco-logo.svg",
)
