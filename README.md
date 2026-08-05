Glaucoma Market Intelligence & Clinical Analytics Platform
Healthcare Analytics | SQL | Power BI | DAX | Pharmaceutical Intelligence

A healthcare analytics portfolio project integrating glaucoma pharmaceutical product data, pricing intelligence, competitive portfolio analysis, molecule-level intelligence, clinical evidence, safety information, and guideline recommendations into an interactive Power BI dashboard.

The project demonstrates an end-to-end analytics workflow using a relational data model, SQL analysis, DAX measures, and Power BI visualization.

Project Overview

The Glaucoma Market Intelligence & Clinical Analytics Platform was developed to analyze the commercial and clinical landscape of glaucoma products and molecules.

The project connects product-level commercial information with molecule-level clinical evidence, guidelines, and safety information through a relational data model.

Dataset at a glance
Metric	Value
Products	100
Companies	37
Molecules	19
Drug classes	11
Combination molecules	7
Clinical evidence records	56
Molecules with clinical evidence	19
Evidence coverage	100%
Guideline-covered molecules	19
Average MRP	₹387.45
Preservative-free products	26
Project Objectives

The project was designed to answer key commercial and clinical intelligence questions:

How is the glaucoma product portfolio distributed across companies?
How does pricing vary across products, companies, and drug classes?
Which companies have broader glaucoma portfolios?
Which molecules have greater competitive reach?
How are molecules distributed across competing companies?
What level of clinical evidence is available for each molecule?
What is the overall evidence coverage?
What is the strength of guideline recommendations?
How can commercial and clinical information be combined for strategic positioning?
🛠️ Technology Stack
Area	Technology
Data querying & analysis	SQL
Data modeling	Relational database
Dashboard & visualization	Microsoft Power BI
Analytical calculations	DAX
Documentation	Markdown / Excel
Domain	Healthcare / Ophthalmology / Pharmaceutical Analytics
Database Structure

The project uses a relational structure connecting commercial, clinical, guideline, safety, and pricing information.

Core relationships
Companies
    │
    └── Products
          │
          └── Pricing

Molecules
    ├── Products
    ├── Clinical Evidence
    ├── Guidelines
    └── Safety Profile
Key relationships
Products.company_id
        ↓
Companies.Company_ID

Products.Molecule_ID
        ↓
Molecules.Molecule_ID

Pricing.Product_ID
        ↓
Products.product_id

Clinical Evidence.Molecule_ID
        ↓
Molecules.Molecule_ID

Guidelines.Molecule_ID
        ↓
Molecules.Molecule_ID

Safety Profile.Molecule_ID
        ↓
Molecules.Molecule_ID
Database Tables
Companies

Contains company-level information including company identity, founding year, parent company, ophthalmology focus, glaucoma focus, and website information.

Products

Contains commercial product information including brand name, molecule, company, drug class, dosage form, strength, preservative information, fixed-dose combination status, prescription type, approval status, and indication.

Pricing

Contains MRP, pack size, price per mL, country, and last-updated information.

Price_per_ml provides a normalized pricing metric for comparing products with different pack sizes.

Molecules

Contains generic name, drug class, mechanism of action, therapeutic line, route, dosing frequency, expected IOP reduction, approval information, WHO EML status, patent status, and related clinical information.

Clinical Evidence

Contains study information including study design, publication year, journal, population, sample size, comparator, primary endpoint, clinical outcome, evidence level, and DOI/PMID.

Guidelines

Contains guideline organization, publication year, molecule, drug class, recommendation, recommendation strength, evidence level, and preferred-for context.

Safety Profile

Contains common and serious adverse effects, contraindications, black-box warnings, pregnancy and lactation considerations, renal/hepatic adjustment, and monitoring requirements.

Power BI Dashboard

The final dashboard contains six analytical pages.

1. Executive Overview

Why: To provide a high-level overview of the size and composition of the glaucoma portfolio.

Finding: The dataset contains 100 products across 37 companies, 19 molecules, and 11 drug classes, with an average MRP of ₹387.45.

2. Pricing Intelligence

Why: To understand pricing variation across products, companies, and drug classes.

Finding: Product MRP ranges from ₹26.00 to ₹960.68, with an overall average of ₹387.45.

3. Competitor Intelligence

Why: To assess how companies differ in their product portfolios and competitive presence.

Finding: The 37 companies do not carry identical molecule portfolios, making molecule-level competitive reach more informative than product count alone.

4. Molecule Intelligence

Why: To examine molecule-level portfolio coverage and understand how companies compete across the 19 molecules.

Finding: The molecule–company matrix demonstrates variation in competitive reach and shows that companies maintain different molecule combinations.

5. Clinical Evidence & Guidelines

Why: To assess the clinical evidence supporting the molecules and understand the strength of guideline recommendations.

Finding: All 19 molecules have clinical evidence within the analyzed dataset, representing 56 evidence records, while guideline recommendations are categorized as Strong or Moderate.

6. Strategic Positioning

Why: To combine commercial and clinical indicators into a molecule-level strategic view.

Finding: Dorzolamide + Timolol has the highest displayed competitive reach at 13 companies, while pricing and recommendation strength provide additional positioning context.

Key Findings
Competitive Landscape

The dataset contains 100 products across 37 companies and 19 molecules.

Companies do not carry identical molecule baskets, making molecule-level competitive reach an important metric for understanding the competitive landscape.

Pricing

The portfolio has an average MRP of ₹387.45, with an observed range of ₹26.00–₹960.68.

The Pricing table also supports normalized Price_per_ml analysis.

Molecule Coverage

The project covers 19 molecules across 11 drug classes, including 7 combination molecules.

Clinical Evidence

All 19 molecules have clinical evidence within the analyzed dataset.

Evidence coverage = 100%

The dataset contains 56 clinical evidence records, corresponding to approximately 2.95 records per molecule.

Guidelines

Guideline recommendation strength is represented by:

11 Strong
8 Moderate
SQL Analysis

SQL was used as a core component of the data preparation and analytical workflow.

The SQL work includes:

Data validation
Filtering
Aggregation
Relational joins
Product portfolio analysis
Pricing analysis
Company analysis
Molecule analysis
Clinical evidence analysis
Guideline analysis
Window functions
CTE-based analysis
Ranking and comparative analysis

The SQL scripts and analytical outputs are organized under:

sql/
├── queries/
└── outputs/
Power BI & DAX

Power BI was used for:

Data modeling
KPI development
Interactive dashboard design
Matrix analysis
Comparative visualization
Strategic positioning

DAX was used to create analytical measures and KPI calculations supporting the dashboard.

Data Sources

Major source categories used during data compilation and validation included:

Tata 1mg
Pharmaceutical company websites
Apollo Online / Apollo 24|7
Government websites
Publicly available healthcare and regulatory sources

Different fields may have different source provenance depending on the type of information collected.

📁 Repository Structure
Glaucoma-Market-Intelligence/
│
├── README.md
│
├── dashboard/
│   └── Glaucoma_Market_Intelligence_v0.2.pbix
│
├── sql/
│   ├── queries/
│   │   └── SQL analysis scripts
│   │
│   └── outputs/
│       └── CSV analysis outputs
│
├── data/
│   ├── Data_Dictionary.xlsx
│   │
│   └── source_data/
│       ├── Companies.xlsx
│       ├── Products.xlsx
│       ├── Pricing.xlsx
│       ├── Molecules.xlsx
│       ├── Clinical_Evidence.xlsx
│       ├── Guidelines.xlsx
│       └── Safety_Profile.xlsx
│
├── documentation/
│   ├── Final_Project_Report.pdf
│   └── ER_Diagram.jpg
│
└── screenshots/
    ├── 01_executive_overview.png
    ├── 02_pricing_intelligence.png
    ├── 03_competitor_intelligence.png
    ├── 04_molecule_intelligence.png
    ├── 05_clinical_evidence_guidelines.png
    └── 06_strategic_positioning.png
Skills Demonstrated
Technical
SQL
Power BI
DAX
Relational data modeling
Data validation
Data aggregation
Data visualization
KPI development
Domain & Analytics
Healthcare analytics
Ophthalmology analytics
Pharmaceutical market intelligence
Pricing intelligence
Competitive intelligence
Molecule-level analysis
Clinical evidence analysis
Guideline analysis
Safety profile analysis
Portfolio analysis
Strategic visualization
Limitations

This project represents an analytical assessment of the compiled dataset.

It does not establish:

Clinical efficacy
Comparative clinical superiority
Causality
Actual pharmaceutical market share
Regulatory conclusions beyond the represented data

Pricing observations represent the analyzed dataset and should not be interpreted as continuously current or universally applicable market prices.

Clinical and guideline conclusions are limited to the records represented in the project dataset.

Evidence Data Note

Most molecules have three clinical evidence records, while Levobunolol has two.

The resulting 56 evidence records across 19 molecules produce an evidence density of approximately 2.95 records per molecule.

Evidence density should therefore be interpreted as a dataset coverage/depth metric, not as a direct measure of clinical evidence quality.

Future Improvements

Potential extensions include:

Automated data refresh
Historical price tracking
Geographic market comparison
Additional clinical evidence ingestion
Automated literature extraction
Real-world evidence integration
Competitor trend analysis
Market-share data integration
Advanced molecule-level opportunity scoring
Automated guideline updates
Project Report

A detailed project report covering the methodology, database architecture, dashboard analysis, findings, and limitations is available in:

documentation/Final_Project_Report.pdf
Disclaimer

This project is intended for educational, portfolio, and analytical purposes.

It is not medical advice, a regulatory assessment, a clinical guideline, or a substitute for professional clinical, regulatory, or pharmaceutical decision-making.
