-- opgave 89
SHOW CREATE PROCEDURE proc_voorraad;

-- opgave 90
CREATE PROCEDURE
    proc_checkparams(
        INOUT param1 VARCHAR(5),
        INOUT param2 INT,
        OUT melding VARCHAR(50))
    SQL SECURITY DEFINER
    BEGIN
        IF param1="" OR param2=""
            THEN
                SET melding="Foutmelding er zijn een of meer input-errors"

-- opgave 91
CREATE PROCEDURE proc_procsetvoorraad(IN code INT)
	BEGIN
    	CASE CODE
        	WHEN 0 THENUPDATE boeken SET voorraad=0;

    