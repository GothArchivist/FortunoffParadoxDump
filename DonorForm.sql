SELECT a.title, a.FirstName, a.MiddleName, a.Surname, a.Institution, a.Address1, a.Address2, a.CityState, a.State, a.Zip, a.Country, d.AddressNumber, a.Dear, a.TelNum, a.FaxNum,
a.Email, d.`Donor category`, d.`Brochure copy`, d.`Alphabetize as`, d.Notes, g.`Date of Gift`, g.`Amount of Gift`
FROM address a
LEFT JOIN donor d ON a.AddressNumber=d.AddressNumber
LEFT JOIN gift g ON a.AddressNumber=g.AddressNumber
#WHERE a.Surname=' ' 
#WHERE d.`Donor category`=' ' 
#WHERE a.Institution=' ' 