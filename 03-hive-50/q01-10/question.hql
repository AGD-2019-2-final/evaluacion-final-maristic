-- 

-- Pregunta

-- ===========================================================================

--

-- Para resolver esta pregunta use el archivo `data.tsv`.

--

-- Compute la cantidad de registros por cada letra de la columna 1.

-- Escriba el resultado ordenado por letra.
--

-- Escriba el resultado a la carpeta `output` de directorio de trabajo.

--

-- >>> Escriba su respuesta a partir de este punto <<<

--


DROP TABLE IF EXISTS U;

CREATE TABLE U (Letra  STRING, Fecha DATE, Number INT) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'
TBLPROPERTIES ("skip.header.line.count"="0");

LOAD DATA LOCAL INPATH 'data.tsv' INTO TABLE U;

INSERT OVERWRITE LOCAL DIRECTORY 'output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE

SELECT Letra, COUNT(Letra) FROM U GROUP BY Letra;

