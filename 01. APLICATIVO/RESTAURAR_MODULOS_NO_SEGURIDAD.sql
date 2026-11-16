-- SIGH - GR07: vuelve a crear los módulos quitados por LIMPIAR_MODULOS_NO_SEGURIDAD.sql
-- (datos tomados del respaldo de bd_monster_gr07 del 13/11/2026).
USE bd_monster_gr07;
START TRANSACTION;
INSERT INTO xesis_siste (XESIS_CODIGO, XESIS_DESCRI) VALUES
('ADM', 'ADMISION Y CITAS'), ('CLI', 'ATENCION CLINICA'), ('FAR', 'FARMACIA');
INSERT INTO xeopc_opcio (XEOPC_CODIGO, XESIS_CODIGO, XEOPC_DESCRI, XEOPC_URL) VALUES
('A001', 'ADM', 'Registrar paciente', '/admision/pacientes'),
('A002', 'ADM', 'Agendar cita', '/admision/citas'),
('C001', 'CLI', 'Atender consulta externa', '/clinica/consulta'),
('C002', 'CLI', 'Registrar signos vitales', '/clinica/signos'),
('F001', 'FAR', 'Dispensar receta', '/farmacia/dispensacion');
INSERT INTO xeoxp_opcpe (XEPER_CODIGO, XEOPC_CODIGO, XEOXP_FECASI, XEOXP_FECRET) VALUES
('ADM', 'A001', '2026-11-06 07:38:30', NULL),
('ADM', 'A002', '2026-11-06 07:38:29', NULL),
('ADM', 'C001', '2026-11-06 07:38:23', NULL),
('ADM', 'C002', '2026-11-06 07:38:25', NULL),
('ADM', 'F001', '2026-11-06 07:38:28', NULL),
('ENF', 'C002', '2026-10-27 10:00:00', NULL),
('FAR', 'F001', '2026-10-28 11:00:00', NULL),
('MED', 'A002', '2026-10-27 09:30:00', NULL),
('MED', 'C001', '2026-10-27 09:30:00', NULL);
COMMIT;
