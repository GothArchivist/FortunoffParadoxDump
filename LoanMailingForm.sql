SELECT a.title, a.FirstName, a.MiddleName, a.Surname, a.Institution, a.Address1, a.Address2, a.CityState, a.State, a.Zip, l.`Authorized by`, l.`Authorization date`, l.`Received by`,
l.`Receipt date`, l.`Returned to`, l.`Return date`, l.`Date mailed`, l.`Date due`, l.`Replacement cost`
FROM address a
LEFT JOIN loaninfo l ON a.AddressNumber=l.AddressNumber
#WHERE a.Institution=''
#WHERE a.Surname=''