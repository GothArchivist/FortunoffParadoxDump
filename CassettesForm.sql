#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#For cassette.`T-number`, you do not need quotation numbers around the number. Properly filled out, it should look like 'WHERE cassette.`T-number`=45.
SELECT c.Barcode, c.`Recording type`, c.`T-number`, c.`Tape format`, c.`Shared with`, c.`Created from`, c.`Creation date` AS RecordingDate, c.`Stock manufacturer`, 
c.TemporaryLocation, location.Location AS BoxLocation, c.PermanentLocation AS ItemLocation, reststat.`Restoration status`, c.RestorationCode, c.`Tape wind`, c.Odor, c.`Edge damage`, c.Notes 
FROM cassette c
LEFT JOIN location ON c.PermanentLocation=location.Container
LEFT JOIN reststat ON c.RestorationCode=reststat.Code
WHERE c.`T-number`=#Put in T number
