CREATE VIEW acn_profilo_servizi AS
SELECT 
    s.nome            AS servizio,
    a.nome            AS asset,
    a.tipologia       AS tipologia_asset,
    a.criticita       AS criticita_asset,
    d.tipo_dipendenza AS dipendenza,
    r.nome            AS responsabile,
    r.ruolo           AS ruolo_responsabile,
    r.email           AS contatto
FROM servizi s
JOIN dipendenze d ON s.id = d.id_servizio
JOIN asset a ON d.id_asset = a.id
LEFT JOIN asset_responsabili ar ON a.id = ar.id_asset
LEFT JOIN responsabili r ON ar.id_responsabile = r.id;
