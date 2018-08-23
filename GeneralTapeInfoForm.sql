#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#For p.`T-number`, you do not need quotation numbers around the number. Properly filled out, it should look like 'WHERE p.`T-number`=45.
SELECT p.`T-number`, p.Collection, p.Language, p.Format AS Standard, pers.Name, pers.`Date of Interview`, pers.`Length of Interview`, pers.`First interviewer`, pers.`Second interviewer`, 
pers.`Third interviewer`, pers.`Fourth interviewer`,pers.Notes FROM `primary` p
LEFT JOIN Persdata pers ON p.`T-number`=pers.`T-number`
WHERE p.`T-number`= #put in T-number
