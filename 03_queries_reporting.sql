SELECT 
    a.nome AS asset,
    s.nome AS servizio,
    d.tipo_dipendenza,
    r.nome AS responsabile,
    r.ruolo
FROM dipendenze d
JOIN asset a ON d.id_asset = a.id
JOIN servizi s ON d.id_servizio = s.id
LEFT JOIN asset_responsabili ar ON a.id = ar.id_asset
LEFT JOIN responsabili r ON ar.id_responsabile = r.id;
