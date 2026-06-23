# City Run Running Carnival – Enterprise Database & NoSQL Analytics System

A full-cycle database engineering project showcasing the management, optimisation, transformation, and structural manipulation of data across an enterprise sports entertainment application. This project demonstrates high-proficiency in core database operations, transitioning seamlessly from conceptual/logical schemas to raw Oracle SQL (DDL/DML), advanced analytical queries, schema architecture updates, and NoSQL document transformations (MongoDB/JSON).

## Project Portfolio Architecture

- **Logical Model Mapping:** Working with enterprise data relationships featuring unique constraints, recursive tables (competitor-to-competitor referrals), and structural cardinality.
- **Data Lifecycle Manipulation (DML):** Managing complex multi-table transactional steps, sequencing configurations, structural adjustments (downgrades), and cascading state handling.
- **Advanced Analytical Querying:** Implementing strategic SQL scripts incorporating dynamic date adjustments, pattern matching, data aggregations, subqueries, and layout form alignments.
- **Schema & Migration Engineering:** Adapting database frameworks live by resolving relational challenges (e.g., entity deduplication), constructing associative bridge tables for M:N transformations, and embedding performance columns.
- **NoSQL Engineering (JSON & MongoDB):** Executing cross-platform data transformation by converting normalised tabular schemas into semi-structured JSON objects and validating updates via NoSQL query operators.

---

## Technical Pipeline Breakdown

### 1. Relational Database Modeling & Architecture

Designed around a national sports carnival domain, this system maintains rigid business logic through robust structure mappings:

- **Tabular Normalisation:** Structured implementation across 8 integrated core tables: `CARNIVAL`, `EVENT`, `EVENTTYPE`, `ENTRY`, `TEAM`, `COMPETITOR`, `CHARITY`, and `EMERCONTACT`.
- **Strict Relational Integrity:** Built using ANSI join standards, multi-variable constraints, unique indexes, and customised primary key sequencing starting from 100.

### 2. Live Schema Optimisation & Structural Modifications

Engineered to resolve real-world backend scalability issues by adjusting live operational databases without data loss:

- **Entity Resolution & Deduplication:** Cleared multi-event registration discrepancies by applying strategic subquery selections and dropping operational constraints before locking configurations down with a unique key index (`comp_no`, `carn_date`).
- **Associative Entity Restructuring:** Successfully converted a restrictive binary relationship into a flexible, production-ready M:N relationship by decoupling `COMPETITOR` columns and implementing an associative junction table (`ec_comp`) to map multi-emergency-contact distributions cleanly.
- **Performance Engineering:** Extracted raw runtime differences using numeric transformation formulas, storing them directly into an indexed performance tracking metric column (`elapsed_minutes`).

### 3. Advanced Relational Algebra & SQL Analytics

Engineered robust, non-hardcoded analytic pipelines designed to support downstream BI reporting pipelines:

- **Dynamic Time-Horizon Processing:** Crafted rolling-window logic using database environment functions (`sysdate`) to dynamically pull historical performance records spanning previous calendar blocks without manual intervention.
- **String Manipulation & Custom Formatting:** Cleanly extracted multi-channel domain profiles via case-insensitive matching logic, formatting variable columns into scannable single-column string strings (`fullname`).
- **sero-Entry Tracking Optimisation:** Deployed clean left-exclusion outer joins combined with state filtering conditions to surface inactive operational slots, mitigating null value leakage.

### 4. NoSQL Data Migration & Document Processing

Demonstrated full modern data stack adaptability by creating a document-oriented structure from standard relational rows:

- **Tabular-to-Document Transformation:** Structured multi-level JSON arrays embedded with customised primary key identifiers (`_id: "ddmmyyyy_type"`) containing localised tracking data and performance arrays.
- **MongoDB Document Architecture Validation:** Managed collection generation directly inside MongoDB, constructing precise update parameters (`$set`) and filtering commands (`$and`, `$gt`) to perform operational updates in a single statement block.

---

## Technical Stack & Competencies Shown

- **Relational Database Engine:** Oracle Database 12c
- **NoSQL Database Engine:** MongoDB (v6.x+)
- **Languages:** SQL, NoSQL / MongoDB Shell Scripting, JSON
- **Key Engineering Techniques:** Complex Subqueries, Relational Algebra Logic, M:N Mapping Resolution, Dynamic Transaction Controls, Schema Modeler Architecture.
