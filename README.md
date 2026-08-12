# Anticipatory Behavioural Responses to Environmental Policy Announcements

Replication materials for MY498 Capstone Project, Candidate 68508.

Examines whether announcements of the three London Ultra Low Emission Zone
expansions (2019, 2021, 2023) generated anticipatory ULEV adoption before
enforcement, using synthetic control methods on a quarterly panel of 52 local
authorities.

## Structure

    capstone.qmd              Dissertation source
    references.bib            Bibliography
    notebooks/                Analysis code
    data/raw/                 Source data
    data/processed/           Constructed panel
    output/                   Saved tables and model objects
    figures/                  Saved figures

## Running the analysis

Run the notebooks in order:

1. `1-DataCleaning.qmd` — builds the panel from DVLA, ONS and boundary data
2. `2-DescriptiveAnalysis.qmd` — descriptive statistics and study area map
3. `3-SyntheticControls.qmd` — primary synthetic control estimates
4. `4-Robustness.qmd` — TWFE, event study, ITS, and RD feasibility

Each writes to `output/` and `figures/`. `capstone.qmd` reads from those
directories and can be rendered once the notebooks have run.

## Requirements

R with `tidysynth`, `fixest`, `modelsummary`, `sf`, `tidyverse`, `zoo`,
`kableExtra`, `here`, `patchwork`, and `rdrobust`. Quarto with a LaTeX
distribution for PDF output.

## Data

DVLA vehicle licensing statistics (VEH0132, VEH9901), ONS Census 2021,
Index of Multiple Deprivation, TfL PTAL, and London Datastore boundary files.