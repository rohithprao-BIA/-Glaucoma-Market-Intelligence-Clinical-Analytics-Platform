# Glaucoma Market Intelligence & Clinical Analytics Platform

### Healthcare Analytics | SQL | Power BI | DAX | Pharmaceutical Intelligence

A healthcare analytics project integrating **pharmaceutical product data, pricing intelligence, competitive portfolio analysis, molecule-level intelligence, clinical evidence, safety information, and guideline recommendations** into an interactive Power BI dashboard.

---

## 📊 Project Overview

The **Glaucoma Market Intelligence & Clinical Analytics Platform** was developed to analyze the commercial and clinical landscape of glaucoma products and molecules.

The project connects product-level commercial information with molecule-level clinical evidence, guidelines, and safety information through a relational data model.

### Dataset at a glance

| Metric | Value |
|---|---:|
| Products | 100 |
| Companies | 37 |
| Molecules | 19 |
| Drug classes | 11 |
| Combination molecules | 7 |
| Clinical evidence records | 56 |
| Molecules with evidence | 19 |
| Evidence coverage | 100% |
| Guideline-covered molecules | 19 |
| Average MRP | ₹387.45 |
| Preservative-free products | 26 |

---

# 🎯 Project Objectives

The project was designed to answer key commercial and clinical intelligence questions:

- How is the glaucoma product portfolio distributed across companies?
- How does pricing vary across products, companies and drug classes?
- Which companies have broader glaucoma portfolios?
- Which molecules have greater competitive reach?
- How are molecules distributed across competing companies?
- What level of clinical evidence is available for each molecule?
- What is the overall evidence coverage?
- What is the strength of guideline recommendations?
- How can commercial and clinical information be combined for strategic positioning?

---

# 🛠️ Technology Stack

| Area | Technology |
|---|---|
| Data querying & analysis | SQL |
| Data modeling | Relational database |
| Dashboard & visualization | Microsoft Power BI |
| Analytical calculations | DAX |
| Documentation | Markdown / Excel |
| Domain | Healthcare / Ophthalmology / Pharmaceutical Analytics |

Core relationships
Products.company_id → Companies.Company_ID
Products.Molecule_ID → Molecules.Molecule_ID
Pricing.Product_ID → Products.product_id
Clinical_Evidence.Molecule_ID → Molecules.Molecule_ID
Guidelines.Molecule_ID → Molecules.Molecule_ID
Safety_Profile.Molecule_ID → Molecules.Molecule_ID
📚 Database Tables
Companies

Contains company-level information including:

Company ID
Founded year
Parent company
Ophthalmology focus
Glaucoma focus
Website
Products

Contains commercial product information including:

Brand name
Molecule
Company
Drug class
Dosage form
Strength
Preservative category/type
Fixed-dose combination status
Prescription type
Approval status
Indication
Pricing

Contains:

MRP
Pack size
Price per mL
Country
Last updated date

The Price_per_ml field provides a normalized pricing metric for comparing products with different pack sizes.

Molecules

Contains:

Generic name
Drug class
Mechanism of action
Therapeutic line
Route
Dosing frequency
Expected IOP reduction
Approval information
WHO EML status
Patent status
Safety-related information
Clinical Evidence

Contains:

Study information
Study design
Publication year
Journal
Population
Sample size
Comparator
Primary endpoint
Clinical outcome
Level of evidence
DOI/PMID
Guidelines

Contains:

Guideline organization
Publication year
Molecule
Drug class
Recommendation
Recommendation strength
Evidence level
Preferred-for context
Safety Profile

Contains:

Common adverse effects
Serious adverse effects
Contraindications
Black-box warnings
Pregnancy and lactation considerations
Renal/hepatic adjustment
Monitoring requirements
📊 Power BI Dashboard

The final dashboard contains six analytical pages.

1. Executive Overview

Why: To provide a high-level overview of the size and composition of the glaucoma portfolio.

Finding: The dataset contains 100 products across 37 companies, 19 molecules and 11 drug classes, with an average MRP of ₹387.45.

2. Pricing Intelligence

Why: To understand pricing variation across products, companies and drug classes.

Finding: Product MRP ranges from ₹26.00 to ₹960.68, with an overall average of ₹387.45.

3. Competitor Intelligence

Why: To assess how companies differ in their product portfolios and competitive presence.

Finding: The 37 companies do not carry identical molecule portfolios, making molecule-level competitive reach more informative than product count alone.

4. Molecule Intelligence

Why: To examine molecule-level portfolio coverage and understand how companies compete across the 19 molecules.

Finding: The molecule–company matrix demonstrates substantial variation in competitive reach and shows that companies maintain different molecule combinations.

5. Clinical Evidence & Guidelines

Why: To assess the clinical evidence supporting the molecules and understand the strength of guideline recommendations.

Finding: All 19 molecules have clinical evidence (100% coverage), with 56 evidence records and guideline recommendations categorized as Strong or Moderate.

6. Strategic Positioning

Why: To combine commercial and clinical indicators into a molecule-level strategic view.

Finding: Dorzolamide + Timolol has the highest displayed competitive reach at 13 companies, while pricing and recommendation strength provide additional positioning context.

🔬 Key Findings
Competitive Landscape

The dataset contains 100 products across 37 companies and 19 molecules.

Companies do not carry identical molecule baskets, making molecule-level competitive reach an important metric for understanding the competitive landscape.

Pricing

The portfolio has an average MRP of ₹387.45, with an observed range of ₹26.00–₹960.68.

The dedicated Pricing table also supports normalized Price_per_ml analysis.

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
💻 SQL Analysis

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

The complete SQL scripts are available in the /sql directory.

📈 Power BI & DAX

Power BI was used for:

Data modeling
KPI development
Interactive dashboard design
Matrix analysis
Comparative visualization
Strategic positioning

DAX was used to create analytical measures and KPI calculations supporting the dashboard.

📚 Data Sources

Major source categories used during data compilation and validation included:

Tata 1mg
Pharmaceutical company websites
Apollo Online / Apollo 24|7
Government websites and publicly available healthcare/regulatory sources

Different fields may have different source provenance depending on the type of information being collected.

📁 Repository Structure
Glaucoma-Market-Intelligence/
│
├── README.md
│
├── dashboard/
│   └── Glaucoma_Market_Intelligence.pbix
│
├── sql/
│   └── SQL analysis scripts
│
├── data/
│   ├── Data_Dictionary.xlsx
│   └── README.md
│
├── documentation/
│   ├── Final_Project_Report.pdf
│   ├── Final_Project_Report.docx
│   ├── ER_Diagram.png
│   └── SCHEMA.md
│
├── screenshots/
│   ├── 01_executive_overview.png
│   ├── 02_pricing_intelligence.png
│   ├── 03_competitor_intelligence.png
│   ├── 04_molecule_intelligence.png
│   ├── 05_clinical_evidence_guidelines.png
│   └── 06_strategic_positioning.png
│
└── PROJECT_DESCRIPTION.md
🧠 Skills Demonstrated
Technical
SQL
Power BI
DAX
Relational data modeling
Data validation
Data aggregation
Data visualization
Healthcare Analytics
Pharmaceutical market intelligence
Pricing intelligence
Competitive intelligence
Molecule-level analysis
Clinical evidence analysis
Guideline analysis
Safety profile analysis
Business Intelligence
KPI development
Interactive dashboard design
Portfolio analysis
Comparative analysis
Strategic visualization
⚠️ Limitations

This project represents an analytical assessment of the compiled dataset.

It does not establish:

Clinical efficacy
Comparative clinical superiority
Causality
Actual pharmaceutical market share
Regulatory conclusions beyond the represented data

Pricing observations represent the analyzed dataset and should not be interpreted as continuously current or universally applicable market prices.

Clinical and guideline conclusions are limited to the records represented in the project dataset.

🔎 Evidence Data Note

Most molecules have three clinical evidence records, while Levobunolol has two.

The resulting 56 evidence records across 19 molecules produce an evidence density of approximately 2.95 records per molecule.

Evidence density should therefore be interpreted as a dataset coverage/depth metric, not as a direct measure of clinical evidence quality.

🚀 Future Improvements

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
📄 Project Report

A detailed project report covering the methodology, database architecture, dashboard analysis, findings and limitations is available in:

documentation/Final_Project_Report.pdf

⚕️ Disclaimer

This project is intended for educational, portfolio and analytical purposes.

It is not medical advice, a regulatory assessment, a clinical guideline, or a substitute for professional clinical, regulatory or pharmaceutical decision-making.
