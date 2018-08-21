SELECT cassette.`T-number`, location.Container, location.Location, cassette.`Recording type`, cassette.`Cassette number`, cassette.Barcode
FROM cassette
LEFT JOIN location ON cassette.PermanentLocation=location.Container
WHERE cassette.`T-number`=#put in T number