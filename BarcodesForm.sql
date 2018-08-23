#DO NOT GET RID OF THE ACCENT MARKS AROUND COLUMNS (e.g. `T-number`). Paradox is the devil and it needs those marks to not mess up in a standard MySQL database.
#For cassette.`T-number`, you do not need quotation numbers around the number. Properly filled out, it should look like 'WHERE cassette.`T-number`=45.
SELECT cassette.`T-number`, location.Container, location.Location, location.BarcodeDate, location.WandDate, cassette.`Recording type`, cassette.`Cassette number`, cassette.`Shared with`, cassette.Barcode
FROM cassette
LEFT JOIN location ON cassette.PermanentLocation=location.Container
WHERE cassette.`T-number`=#put in T number
