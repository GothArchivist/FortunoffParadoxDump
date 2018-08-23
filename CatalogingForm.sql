#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#For cassette.`T-number`, you do not need quotation numbers around the number. Properly filled out, it should look like 'WHERE cassette.`T-number`=45.
SELECT * FROM process
WHERE `T-number`=#put in the T number
