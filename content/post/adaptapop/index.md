---
title: Gene adaptation across scales
summary: Are genes under adaptation across mammals still evolving too fast in terminal lineages?
date: 2023-04-15
share: false
show_date: false

links:
- name: DOI
  url: https://doi.org/10.1073/pnas.2214977120
url_pdf: publication/latrille-genes-2023/paper.pdf
url_code: 'https://github.com/ThibaultLatrille/AdaptaPop'
url_dataset: 'https://doi.org/10.5281/zenodo.7543458'
url_poster: ''
url_project: ''
url_slides: '/publication/latrille-genes-2023/slides.pdf'
url_source: 'https://github.com/ThibaultLatrille/AdaptaPop/blob/master/manuscript/main-PNAS.tex'
url_video: ''

image:
  placement: 1
  focal_point: 'Center'
  preview_only: true

authors:
  - admin
---

Current methods to detect adaptation focus either on the short time-scale (population genetics, e.g. human populations), or on the long time scale (phylogenetics, e.g. across mammals). It is still unclear whether the signatures of adaptation are congruent.

Using population-genetic formalism within phylogenetic methods (see [notes on Mutation-Selection models](/post/mutsel)), we predict the rate of evolution for genes and sites, called ω₀, accounting for purifying selection on amino-acids.   
![omega0](/post/adaptapop/omega0.png)

Formally and mathematically, ω₀ is the rate of evolution at which the gene is in mutation-selection equilibrium.
![omega0](/post/adaptapop/omega0-theory.png)

Low ω₀ imply heavy constraints on gene evolution. Genes for which the estimated rate of evolution (ω or dN/dS) is higher than ω₀ are evolving faster than expected, thus considered under adaptation.
![scatterplot](/post/adaptapop/omega0-simulations.png)

Note: using ω\>ω₀ (gene is faster than predicted) instead of ω>1 (gene is faster than the neutral case) is statistically more powerful since ω₀<1.

![scatterplot](/post/adaptapop/scatterplot.png)

For genes under adaptation at the phylogenetic scale (red), we quantify the rate of adaptation at the population-genetic scale. This is compared to genes under a nearly-neutral regime (green).  
![pipeline](/post/adaptapop/pipeline.png)

Across populations, the group of genes detected with a high rate of adaptation in the phylogeny-based method also displays a high rate of adaptation in the population-based method.
![replicates](/post/adaptapop/replicates.png)