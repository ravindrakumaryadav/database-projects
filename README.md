# **Acme Pharmaceuticals Clinical Trial Database**

## Project Overview

This project involves the design and implementation of a relational database for Acme Pharmaceuticals to manage clinical trial data across multiple study sites. The system is designed to handle "double-blind" studies, where neither the patient nor the doctor knows whether the treatment is an active drug or a placebo.

- The database supports two distinct clinical trials:
 - **Study 12345:** A standard trial involving three sites (101, 111, 121).
 - **Study 54321:** A specialized trial with strict randomization rules to ensure the balance between active and placebo treatments.

## Technical Features
- **Relational Schema:** A fully normalized database structure featuring tables for Patients, Sites, Studies, Visits, and Drug Kits.
- **Data Integrity:** Implemented using foreign key constraints to link patients to specific sites and randomization codes.
- **Randomization Logic:** Designed to support Study 54321's requirement that the number of active and placebo treatments remains balanced within a margin of two.
- **Blinded Views:** SQL Views were created to provide reporting while maintaining study blinding (e.g., identifying patients without revealing their specific treatment).
<img width="677" height="625" alt="image" src="https://github.com/user-attachments/assets/1b7e75d8-4445-429b-8ca5-ecf61ef87058" />

## Database Architecture

The core of the system is built on several key lookup and transactional tables:
- **Patients:** Tracks demographics, weight, and site affiliation.
- **RandomCodes:** Stores the "blinded" treatment assignments for each study.
- **DrugKits:** Manages the inventory of treatments available at each site.
- **Visits:** Records screening, randomization, and withdrawal events for every participant.

## How to Run the Scripts
- **Schema Creation:** Run AcmePharmacuticals.sql to generate the database structure and populate initial lookup data.
- **Logic & Constraints:** Run CallsToStoredProcs.sql to apply primary/foreign keys and advanced constraints.
- **Reporting:** Execute updated_view.sql to create the views used for site and patient monitoring.

## Key SQL Queries & Views
The project includes pre-configured views for common clinical trial tasks:
**allpatients_at_all_sites:** Provides a master list of recruitment progress.
- **available_drug:** Monitors the inventory of active medication kits at each site.
- **withdraw_patients:** Tracks patient attrition and reasons for withdrawal (e.g., adverse events or personal reasons).

    available_drug: Monitors the inventory of active medication kits at each site.

    withdraw_patients: Tracks patient attrition and reasons for withdrawal (e.g., adverse events or personal reasons).
