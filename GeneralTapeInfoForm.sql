SELECT p.`T-number`, p.Collection, p.Language, p.Format AS Standard, pers.Name, pers.`Date of Interview`, pers.`Length of Interview`, pers.`First interviewer`, pers.`Second interviewer`, 
pers.`Third interviewer`, pers.`Fourth interviewer`,pers.Notes FROM `primary` p
LEFT JOIN Persdata pers ON p.`T-number`=pers.`T-number`
WHERE p.`T-number`= #put in T-number
