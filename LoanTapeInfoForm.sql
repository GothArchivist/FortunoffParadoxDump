SELECT li.Purpose, li.Name, li.Institution, li.`Loan number`, a_f_nh.Title, ll.`Copy number`, lt.`T-number`
FROM loaninfo li
LEFT JOIN loanlist ll ON li.`Loan number`=ll.`Loan number`
LEFT JOIN loanlstt lt ON li.`Loan number`=lt.`Loan number`
LEFT JOIN a_f_nh ON ll.ID =a_f_nh.ID
#WHERE li.Institution=''
#WHERE li.Name=''
#WHERE lt.`T-number`=''
#WHERE a_f_nh.Title=''
