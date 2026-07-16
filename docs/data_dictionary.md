# Data Dictionary

## Tabella: asset
| Campo | Tipo | Descrizione |
|-----|-----|-------------|
| id | SERIAL | Identificativo univoco asset |
| nome | VARCHAR | Nome asset |
| tipologia | VARCHAR | Tipo asset |
| criticita | VARCHAR | Livello di criticità |
| descrizione | TEXT | Descrizione asset |

## Tabella: servizi
| Campo | Tipo | Descrizione |
|-----|-----|-------------|
| id | SERIAL | Identificativo servizio |
| nome | VARCHAR | Nome servizio |
| categoria | VARCHAR | Categoria servizio |
| descrizione | TEXT | Descrizione |

## Tabella: dipendenze
| Campo | Tipo | Descrizione |
|-----|-----|-------------|
| id | SERIAL | Identificativo dipendenza |
| id_asset | INT | Asset coinvolto |
| id_servizio | INT | Servizio coinvolto |
| tipo_dipendenza | VARCHAR | Tipo relazione |

## Tabella: responsabili
| Campo | Tipo | Descrizione |
|-----|-----|-------------|
| id | SERIAL | Identificativo |
| nome | VARCHAR | Nome responsabile |
| ruolo | VARCHAR | Ruolo |
| email | VARCHAR | Contatto |

## Tabella: asset_responsabili
| Campo | Tipo | Descrizione |
|-----|-----|-------------|
| id_asset | INT | Asset |
| id_responsabile | INT | Responsabile |
| tipo_responsabilita | VARCHAR | Tipo responsabilità |
