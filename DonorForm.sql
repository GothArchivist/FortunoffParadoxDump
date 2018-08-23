#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#You have three options for searching. You cannot search all at once. To choose one to search, remove the # symbol so it is no longer commented out. Put the search term within the single quotes, e.g. WHERE d.`Donor category`='none'.
SELECT a.title, a.FirstName, a.MiddleName, a.Surname, a.Institution, a.Address1, a.Address2, a.CityState, a.State, a.Zip, a.Country, d.AddressNumber, a.Dear, a.TelNum, a.FaxNum,
a.Email, d.`Donor category`, d.`Brochure copy`, d.`Alphabetize as`, d.Notes, g.`Date of Gift`, g.`Amount of Gift`
FROM address a
LEFT JOIN donor d ON a.AddressNumber=d.AddressNumber
LEFT JOIN gift g ON a.AddressNumber=g.AddressNumber
#WHERE a.Surname=' ' 
#WHERE d.`Donor category`=' ' 
#WHERE a.Institution=' ' 
