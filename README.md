# The Fortunoff Paradox Database
Once upon a time, we used Paradox as our database of record. Now we don't, but sometimes we still need the data in Paradox to answer questions. Queries and structural organization of our Paradox SQL dump live here. The dump itself lives locally with Christy and Kevin. I have replicated all fields from the Paradox forms and the ``WHERE`` clauses are formulated for the normal things you would look up, e.g. if the form is normally created to search by T-number, that's what you'll find in the ``WHERE`` clause. That doesn't mean you can't edit the ``WHERE`` clauses to search for other information in the tables. In cases where you can look up multiple things in a form, I included those variations in the form, which are commented out by the ``#`` symbol. Just remove the ``#`` and fill out the thing you're searching for to do the search. 

## Tape Information Forms

### BarcodesForm.sql
Pulls back information found in the barcode lookup form. Includes information related to container information, location, T-number (call number), Shared With information and of course, barcode.

### CassettesForm.sql
Pulls back information found in the cassette form. Includes barcode, recording type, recording date, location, box numbers, and conditions of tapes.

### CatalogingForm.sql
Pulls back information found in the cataloging form, i.e. every column from the ``process`` table.

### ContainerForm.sql
Pulls back the data found in the Tape Information/Cassettes form. Includes container/box number, location, T-number (call number), and barcode.

### GeneralTapeInfoForm.sql
Pulls back the data found in the Tape Information/General Information form. Includes T-number (call number), collection, language, standard, release, name of interviewee, name(s) of interviewer(s), and notes.

## Donor Form

### DonorForm.sql
Pulls back the information from the donor form. Includes names, address information, email, phone numbers, donor categorization, and notes.

## Loan Forms

### LoanMaiingForm.sql
Pulls back all detailed mailing information and loan information for loans. Includes the recipients name and mailing information, authorization of loan information, dates, and cost information.

### LoanTapeInforForm.sql
Pulls back information about the tape being loaned out. Includes basic identifying information about the loan recipient, ID of the loaned tape, the title, copy number, and T-number (call number) created for the loan/edited testimony. 

## FormstoTables.xlsx
An Excel spreadsheet listing the fields and their mappings to tables in the forms for reference. 


