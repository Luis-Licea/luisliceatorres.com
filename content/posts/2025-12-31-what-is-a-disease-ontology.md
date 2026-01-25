---
title: "What is a disease ontology?"
date: 2025-12-30T19:16:01-06:00
description: ""
categories: Genetics
tags: Diseases
---

An ontology can be described as a dictionary, a thesaurus, and a hierarchy
because an ontology defines terms, synonyms (cross-references), and child-parent
relationships.

Online disease-data resources include [Online Mendelian Inheritance in Man]
(OMIM), [Medical Subject Headings] (MeSH), Comparative Toxicogenomics Database
(CTD), [Human Disease Ontology], and [Gene Ontology], among others. OMIM
requires a license (free to researchers) and provides information about
gene-disease associations.

OMIM’s major drawback is that it is non-hierarchical. This is problematic
because it is impossible to computationally know if diseases are subtypes of
other diseases. This problem can be solved by using [Human Disease Ontology].
Unfortunately, ontologies do not provide associations between diseases and
genes, but they provide cross-references to other catalogs that do, such as OMIM
and MeSH. The MeSH website does not directly provide gene-disease associations,
but MeSH IDs can be used in CTD to find associations. MeSH provides a disease
hierarchy and general disease information. CTD files use MeSH IDs and can be
downloaded from the CTD website, but can be large and cumbersome to process (as
is the 7GB gene-disease associations file). Lastly, files from CTD do not come
in a machine-readable format. On the other hand, [Human Disease Ontology] is
available in OBO (Open Biomedical Ontology) format, and the Python module
GOATOOLs is capable of parsing this format and creating a hierarchy. This means
a lot of workarounds are needed to merge information from these sources.

The goal of integrating information from all of these resources is to create a
disease-gene-biological-process ontology that defines diseases and their
relationships. For example, different diseases may be caused by mutations in the
same gene. Likewise, similar diseases may be caused by mutations in different
genes that are responsible for carrying out similar biological processes.

The only way to find the relationship between all of these genes, diseases, and
biological processes is to compare all of the 4,500+ disease-causing genes
listed in [Human Disease Ontology]. Then compare all of the biological processes
these genes are responsible for (such as metabolism, bone growth, fat storage,
etc), and then compare all the therapeutic drugs and treatments that can be used
to treat this diseases.

[Human Disease Ontology]: https://obofoundry.org/ontology/doid.html
[DISGENET]: https://www.disgenet.org/downloads
[Gene Ontology]: https://geneontology.org/docs/download-ontology/
[Online Mendelian Inheritance in Man]: https://www.omim.org/downloads/
[Medical Subject Headings]: https://www.nlm.nih.gov/databases/download/mesh.html
