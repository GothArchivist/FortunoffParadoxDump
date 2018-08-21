SELECT cassette.`T-number`, location.Container, location.Location, location.BarcodeDate, location.WandDate, cassette.`Recording type`, cassette.`Cassette number`, cassette.`Shared with`,
cassette.Barcode
FROM cassette
LEFT JOIN location ON cassette.PermanentLocation=location.Container
WHERE cassette.`T-number`=#put in T number