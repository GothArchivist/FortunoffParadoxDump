#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#You have four options for searching. You cannot search all at once. To choose one to search, remove the # symbol so it is no longer commented out. If there are single quotes, put the search term inside them, e.g. WHERE li.Institution='Emory University'.
#For lt.`T-number`, you don't need the single quotes. For that, you can do something like WHERE lt.`T-number`=45.
SELECT li.Purpose, li.Name, li.Institution, li.`Loan number`, a_f_nh.Title, ll.`Copy number`, lt.`T-number`
FROM loaninfo li
LEFT JOIN loanlist ll ON li.`Loan number`=ll.`Loan number`
LEFT JOIN loanlstt lt ON li.`Loan number`=lt.`Loan number`
LEFT JOIN a_f_nh ON ll.ID =a_f_nh.ID
#WHERE li.Institution=''
#WHERE li.Name=''
#WHERE lt.`T-number`=
#WHERE a_f_nh.Title=''
