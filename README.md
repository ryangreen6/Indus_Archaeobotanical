# Archaeobotanical Data from the Indus Civilization
### A Repository of Jennifer Bates' Published Archaeobotanical Dataset

This repository contains a collection of archaeobotanical samples, compiled by Seoul National University's Jennifer Bates, from across the Indus Valley and dating to the Indus Civilization, c.3200-1500 BCE. 

This data has been reorganized into two tables, one called `samples.csv` that lists the 110 samples from 63 Indus sites, and another called `taxa.csv` that contains all taxa found in the samples, with their scientific names, common names, domestication status, and a unique ID. There is also a `relation_table`, listing all unique occurrences of a taxa in any sample (by sample_id and taxon_id). This table can be used to relate the two tables. 

The tables have been added to a DuckDB database called `archbot.db`, where they can be queried in SQL. This repository also has a SQL folder, which contains four SQL queries: 
- dom_count_all.sql : Find the sum of domesticated species at all sites
- sample_dom_count.sql : Find the number of domesticated species from each respective sample
- sample_taxa.sql : When used in a function in R, list the species found in a given sample
- most_common_taxa_all : Find the ten most common species across all samples

Bates' original publication is also stored in this repository for context and reference. 

Bates, J. (2019). The Published Archaeobotanical Data from the Indus Civilisation, South Asia, c.3200–1500BC. Journal of Open Archaeology Data, 7(0), 5. https://doi.org/10.5334/joad.57

The original publication can be found here: https://openarchaeologydata.metajnl.com/articles/10.5334/joad.57#abstract

The original data can be found here: https://doi.org/10.7910/DVN/WSHMAD
