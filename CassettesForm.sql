SELECT c.Barcode, c.`Recording type`, c.`T-number`, c.`Tape format`, c.`Shared with`, c.`Created from`, c.`Creation date` AS RecordingDate, c.`Stock manufacturer`, 
c.TemporaryLocation, location.Location AS BoxLocation, c.PermanentLocation AS ItemLocation, reststat.`Restoration status`, c.RestorationCode, c.`Tape wind`, c.Odor, c.`Edge damage`, c.Notes 
FROM cassette c
LEFT JOIN location ON c.PermanentLocation=location.Container
LEFT JOIN reststat ON c.RestorationCode=reststat.Code
WHERE c.`T-number`=#Put in T number
