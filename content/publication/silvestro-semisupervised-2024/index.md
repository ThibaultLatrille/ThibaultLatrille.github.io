---
title: Toward a Semi-Supervised Learning Approach to Phylogenetic Estimation
authors:
- D. Silvestro
- T. Latrille
- N. Salamin
date: '2024-06-01'
publishDate: '2024-11-20T20:25:54.869621Z'
publication_types:
- article-journal
publication: '*Systematic Biology*'

abstract: Models have always been central to inferring molecular evolution and to
  reconstructing phylogenetic trees. Their use typically involves the development
  of a mechanistic framework reflecting our understanding of the underlying biological
  processes, such as nucleotide substitutions, and the estimation of model parameters
  by maximum likelihood or Bayesian inference. However, deriving and optimizing the
  likelihood of the data is not always possible under complex evolutionary scenarios
  or even tractable for large datasets, often leading to unrealistic simplifying assumptions
  in the fitted models. To overcome this issue, we coupled stochastic simulations
  of genome evolution with a new supervised deep-learning model to infer key parameters
  of molecular evolution. Our model is designed to directly analyze multiple sequence
  alignments and estimate per-site evolutionary rates and divergence without requiring
  a known phylogenetic tree. The accuracy of our predictions matched that of likelihood-based
  phylogenetic inference when rate heterogeneity followed a simple gamma distribution,
  but it strongly exceeded it under more complex patterns of rate variation, such
  as codon models. Our approach is highly scalable and can be efficiently applied
  to genomic data, as we showed on a dataset of 26 million nucleotides from the clownfish
  clade. Our simulations also showed that the integration of per-site rates obtained
  by deep learning within a Bayesian framework led to significantly more accurate
  phylogenetic inference, particularly with respect to the estimated branch lengths.
  We thus propose that future advancements in phylogenetic analysis will benefit from
  a semi-supervised learning approach that combines deep-learning estimation of substitution
  rates, which allows for more flexible models of rate variation, and probabilistic
  inference of the phylogenetic tree, which guarantees interpretability and a rigorous
  assessment of statistical support.

share: false
show_date: false
links:
- name: DOI
  url: https://doi.org/10.1093/sysbio/syae029
---
