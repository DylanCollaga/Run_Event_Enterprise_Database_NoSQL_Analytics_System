# Assessment 2<br/>

### Task 1: Relational Database Queries - Relational Algebra

Student ID: 36705691 <br/>
Student Name: Dylan Collaga

---

project: π, select: σ, join: ⨝, intersect: ⋂, union: ⋃, minus: -

**a. List the carnival date, carnival name and location for all carnivals which have an event type code of "10K".**

10K_CARN = π <sub>carn_date, carn_name, carn_location</sub> ( CARNIVAL ⨝ ( σ <sub>eventtype_code = "10K"</sub> EVENT ) )

**b. List competitor number, first and last name and date of birth for any competitor who is registered by City Run but has as yet not registered for an events (added an entry).**

COMP_NOREG = π <sub>comp_no, comp_fname, comp_lname, comp_dob</sub> ( COMPETITOR - ( COMPETITOR ⨝ ENTRY ) )

**c. List competitor number, first and last name, and their emergency contact’s first name, last name and phone number for all competitors who registered in a carnival named ''CR Summer Series Sydney 2023'''.**

COMP_CRSSSYD23 = π <sub>comp_no, comp_fname, comp_lname, ec_fname, ec_lname, ec_phone</sub> ( ( COMPETITOR ⨝ EMERCONTACT ) ⨝ ( ENTRY ⨝ ( σ <sub>carn_name = "CR Summer Series Sydney 2023"</sub> CARNIVAL ) ) )
