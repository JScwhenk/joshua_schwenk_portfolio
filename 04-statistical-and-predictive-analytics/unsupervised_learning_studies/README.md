# Unsupervised Learning Studies

![SAS](https://img.shields.io/badge/SAS-1F4E79?style=flat-square)
![Association Rules](https://img.shields.io/badge/Association_Rules-5C2D91?style=flat-square)
![K-means](https://img.shields.io/badge/K--means_Clustering-2E8B57?style=flat-square)
![Unsupervised Learning](https://img.shields.io/badge/Unsupervised_Learning-4C78A8?style=flat-square)

## Project Overview

This collection presents two SAS studies using unsupervised-learning techniques to discover patterns without a predefined target outcome. The first identifies relationships between products purchased together, while the second groups earthquake observations according to geographic and event characteristics.

Together, the studies demonstrate how association rules and clustering can reveal meaningful structure within very different datasets.

---

## Market-Basket Association Rules

<p align="center">
  <img src="./market_basket_rules.png" alt="SAS association-rule results for cosmetics transactions" width="75%">
</p>

This study analyzes cosmetics transactions from a large drugstore chain to identify products that are frequently purchased together. Association rules were evaluated using support, confidence, and lift so that common purchasing behavior could be distinguished from relationships occurring more often than expected by chance.

The results identified several connections between cosmetic products and application tools. These patterns support decisions involving product placement, cross-selling, recommendation systems, and promotional bundles.

One notable rule connected nail polish and bronzer purchases with brushes, producing approximately `9.7%` support, `77.6%` confidence, and a lift of `5.21`.

**Methods:** Association rules • Support • Confidence • Lift • Market-basket analysis

[View the Market-Basket Analysis](./market_basket_association_rules.pdf)

---

## Earthquake Clustering Analysis

<p align="center">
  <img src="./earthquake_clusters.png" alt="SAS clustering results for the QUAKES earthquake dataset" width="75%">
</p>

This study applies K-means clustering to more than 15,000 earthquake observations. Location, depth, magnitude, distance to the nearest monitoring station, and root-mean-square timing error were examined to identify groups with similar characteristics.

Variables were standardized before clustering, and multiple cluster solutions were compared using measures of separation, model fit, stability, and interpretability. Separate analyses were used to account for missing monitoring-related values while preserving the larger set of complete earthquake records.

The resulting clusters demonstrate how unsupervised learning can identify geographic concentrations and differences in earthquake and monitoring characteristics.

**Methods:** Standardization • K-means clustering • Cluster comparison • Profile interpretation

[View the Earthquake Clustering Analysis](./earthquake_clustering_analysis.pdf)

---

## Skills Demonstrated

- Unsupervised machine learning
- Market-basket analysis
- Association-rule evaluation
- Feature standardization
- K-means clustering
- Cluster-model comparison
- Pattern interpretation
- Translating analytical results into practical recommendations

> SAS code and corresponding outputs are documented in the complete project reports.

---

[Return to Statistical & Predictive Analytics](../README.md)
