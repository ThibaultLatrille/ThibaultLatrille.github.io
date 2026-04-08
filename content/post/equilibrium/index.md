---
title: Changing effects of mutations
summary: Do the same mutations always have the same fitness effect?

date: 2021-09-10
share: false

show_date: false
links:
- name: DOI
  url: https://doi.org/10.1016/j.tpb.2021.09.005
url_pdf: '/publication/latrille-quantifying-2021/paper.pdf'
url_code: 'https://github.com/ThibaultLatrille/GenotypePhenotypeFitness'
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: '/publication/latrille-quantifying-2021/slides.pdf'
url_source: 'https://github.com/ThibaultLatrille/PhD/tree/master/GenotypePhenotypeFitness'
url_video: ''

image:
  placement: 1
  focal_point: 'Center'
  preview_only: true

authors:
  - admin
---

Do the same mutations always have the same fitness effect? 

Let's study this question in the context of protein evolution, for which the protein folding is under selection, and the fitness effects of mutations are determined by their impact on folding stability. The question is whether the same mutation will have the same fitness effect regardless of the current stability of the protein.
We can imagine that mutation that adds another destabilizing substitution to an already unstable protein will be far more costly than the same mutation on a highly stable protein. Let's see how this intuition can be formalized and what the consequences are for the rate of protein evolution.

A natural model for the genotype-phenotype-fitness map of a protein is provided by folding thermodynamics. The protein-coding sequence determines its folding free energy $\Delta G = G_F - G_U$, where $G_F$ and $G_U$ are the free energies of the folded and unfolded states respectively. The fitness of the organism is assumed to proportional to the fraction of correctly folded proteins at any given moment, which increases steeply as $\Delta G$ becomes more negative (i.e. more stable) and saturates near one. An example can be due to the toxicity of misfolded proteins, which can aggregate and cause cellular damage.

![The genotype-phenotype-fitness map for a protein-coding gene. The DNA sequence determines the folding free energy $\Delta G$ (phenotype), and fitness is proportional to the fraction of correctly folded proteins.](/post/equilibrium/geno-pheno-fit.png)

At mutation-selection equilibrium, the protein is marginally stable. This can be understood by a balance-of-forces argument on the fitness landscape. When the protein is highly stable (very negative $\Delta G$), most new mutations are destabilizing, but their selection coefficients are weak because the fitness function is nearly flat in the high-stability region. Consequently, destabilizing mutations drift toward fixation almost as readily as neutral ones. When the protein is unstable (less negative $\Delta G$), stabilizing mutations are strongly favoured by selection. The mutation-selection equilibrium therefore resides near the inflection point of the fitness curve (i.e. marginally stable) where the flux of destabilizing mutations arriving by mutation is exactly counterbalanced by the restoring force of selection against them.

![The fitness landscape as a function of $\Delta G$. Arrows show the direction of evolution under mutation-selection pressure. The equilibrium (green cross) sits near the boundary between the stable region (red, where destabilizing mutations are weakly selected) and the unstable region (blue, where stabilizing mutations are strongly favoured), explaining the widespread observation that globular proteins are only marginally stable.](/post/equilibrium/equilibrium.png)

The position of this equilibrium depends on the effective population size $N_e$. The reason is that $N_e$ determines the efficiency of natural selection, when $N_e$ increases, purifying selection against destabilizing mutations becomes more effective, and the equilibrium shifts toward a more stable protein (more negative $\Delta G$). This shift has a further consequence: because the log-fitness curve is concave, the local slope (which is the selection coefficient acting on any individual mutation at that protein site) changes as the equilibrium moves. An increase in $N_e$ thus not only stabilizes the protein but simultaneously decreases the magnitude of selection coefficients for any given mutation. The distribution of fitness effects at a site is therefore not a fixed property of the protein; it is coupled to $N_e$ through the equilibrium position.

![How the mutation-selection equilibrium changes with $N_e$. A higher $N_e$ shifts the equilibrium toward a more stable protein (dashed green line, higher $N_e$; solid green line, lower $N_e$). The slope of the fitness curve at the equilibrium point gives the local selection coefficient; because the curve is concave, higher $N_e$ reduces the magnitude of selection coefficients for individual mutations.](/post/equilibrium/equilibrium-change.png)

This coupling between $N_e$ and the rate of protein evolution $\omega$ can be made quantitative. Combining the statistical physics of the folding partition function with population genetics, the analytical approximation of the change in $\omega$ in response to a change in $N_e$ (in log scale) is linear and negative.

Tangentially, the same logic applies to other parameters that affect the position of the equilibrium. For example, protein expression level is known to correlate negatively with evolutionary rate $\omega$ (Drummond et al. 2005). This can be explained by the same model:
if the protein is expressed at a higher level, the fitness cost of misfolded proteins increases, which steepens the fitness curve and shifts the equilibrium toward a more stable protein. Formally, the response of $\omega$ to a change in expression level is actually the same as the response to a change in $N_e$.

![Summary of the analytical derivation. The response in $\omega$ to a change in $N_e$ is approximately $-T / (n \times \Delta\Delta G)$, giving a negative relationship: larger populations evolve their proteins more slowly.](/post/equilibrium/equations.png)

Individual-based simulations validate this approximation. Across several orders of magnitude in $N_e$, the rate of protein evolution $\omega$ decreases linearly with $\ln N_e$, with the predicted slope matching the simulations closely throughout.

![Simulated relationship between $\omega$ and $N_e$ on a log scale. The linear prediction from theory (dashed line) matches the simulations (solid line with shading) closely, confirming the analytical approximation.](/post/equilibrium/simulations.png)

An unintended consequence of this model is the range of scales it connects. The probability of protein folding, combined with statistical physics and population genetics, links the phylogenetically observed rate $\omega$ to parameters at multiple biological levels: effective population size $N_e$ (population scale), temperature $T$ (molecular scale), protein expression level (cellular scale), the number of amino acids $n$ (protein scale), and the mean destabilizing effect $\Delta\Delta G$ (biochemical scale). A change in any one of these quantities shifts the mutation-selection equilibrium and the entire distribution of fitness effects at every protein site.

![The multi-scale connection. The probability of protein folding, modelled via statistical physics and translated into evolutionary rates via population genetics, links $\omega$ to $N_e$, $T$, expression level, $n$, and $\Delta\Delta G$ simultaneously.](/post/equilibrium/across-scales.png)

In summary, selection coefficients for protein-stability mutations are not fixed properties of the mutations themselves but emergent quantities that depend on the current position in the fitness landscape, which is itself set by $N_e$ and expression level. But here we assumed a stable fitness landscape, where the optimal folding stability does not change over time. In reality, the fitness landscape is likely to be dynamic, with the optimal stability shifting due to changes in the cellular environment, interactions with other proteins, or other evolutionary forces. This is discussed further in the context of phylogenetic inference in [notes on mutation-selection models](/post/mutsel).

