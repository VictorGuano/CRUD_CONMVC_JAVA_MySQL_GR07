-- SIGH - GR07: deja solo el subsistema SEGURIDAD (S001, S002, S003).
-- Ejecutar en phpMyAdmin sobre bd_monster_gr07 (pestaña SQL).
-- Para deshacerlo, ejecutar RESTAURAR_MODULOS_NO_SEGURIDAD.sql.
USE bd_monster_gr07;
START TRANSACTION;

-- 1) Permisos de los perfiles sobre las opciones que se quitan
DELETE FROM xeoxp_opcpe WHERE XEOPC_CODIGO IN ('A001','A002','C001','C002','F001');

-- 2) Opciones de Admisión y citas, Atención clínica y Farmacia
DELETE FROM xeopc_opcio WHERE XESIS_CODIGO IN ('ADM','CLI','FAR');

-- 3) Los sistemas (grupos del menú)
DELETE FROM xesis_siste WHERE XESIS_CODIGO IN ('ADM','CLI','FAR');

COMMIT;

-- Verificación: solo deben quedar SEG / S001-S003
SELECT * FROM xesis_siste;
SELECT * FROM xeopc_opcio;
SELECT * FROM xeoxp_opcpe;
