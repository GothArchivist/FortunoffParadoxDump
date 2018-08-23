#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#You have two options for searching. You cannot search all at once. To choose one to search, remove the # symbol so it is no longer commented out. Put the search term within the single quotes, e.g. WHERE a.Institution='Emory University'.
SELECT a.title, a.FirstName, a.MiddleName, a.Surname, a.Institution, a.Address1, a.Address2, a.CityState, a.State, a.Zip, l.`Authorized by`, l.`Authorization date`, l.`Received by`,
l.`Receipt date`, l.`Returned to`, l.`Return date`, l.`Date mailed`, l.`Date due`, l.`Replacement cost`
FROM address a
LEFT JOIN loaninfo l ON a.AddressNumber=l.AddressNumber
#WHERE a.Institution=''
#WHERE a.Surname=''
