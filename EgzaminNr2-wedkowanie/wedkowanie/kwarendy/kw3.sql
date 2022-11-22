SELECT nazwa, lowisko.akwen, lowisko.wojewodztwo
FROM ryby
JOIN lowisko
ON ryby.id = lowisko.Ryby_id WHERE lowisko.rodzaj = 3