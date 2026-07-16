CREATE VIEW acn_asset_critici AS
SELECT 
    a.nome,
    a.tipologia,
    c.livello AS criticita,
    a.descrizione
FROM asset a
JOIN criticita c ON a.criticita_id = c.id
WHERE c.livello IN ('Alta', 'Molto Alta');
