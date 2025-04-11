Proceso  tornillo
	Definir codigo, i, fallas, totalFallas, totalProd, lotes Como Entero;
	Definir medidaEsp, medida, error, maxError, porcFallas Como Real;
	Definir minFallas, maxFallas, loteMin, loteMax Como Entero;
	lotes <- 0;
	totalFallas <- 0;
	totalProd <- 0;
	minFallas <- 11;
	maxFallas <- -1;
	Escribir "Ingrese código del lote (0 para terminar):";
	Leer codigo;
	Mientras codigo <> 0 Hacer
		Escribir "Ingrese medida esperada:";
		Leer medidaEsp;
		fallas <- 0;
		maxError <- 0;
		Para i <- 1 Hasta 10 Hacer
			Escribir "Medición ", i, ":";
			Leer medida;
			error <- Abs(medida - medidaEsp);
			Si error > maxError Entonces
				maxError <- error;
			FinSi
			Si error > 0.1 Entonces
				fallas <- fallas + 1;
			FinSi
		FinPara
		Escribir "Mayor error: ", maxError;
		Escribir "Fallas: ", fallas, " (", (fallas * 100)/10, "%)";
		totalFallas <- totalFallas + fallas;
		totalProd <- totalProd + 10;
		lotes <- lotes + 1;
		Si fallas < minFallas Entonces
			minFallas <- fallas;
			loteMin <- codigo;
		FinSi
		Si fallas > maxFallas Entonces
			maxFallas <- fallas;
			loteMax <- codigo;
		FinSi
		Escribir "Ingrese código del siguiente lote (0 para terminar):";
		Leer codigo;
	FinMientras
	Si lotes > 0 Entonces
		porcFallas <- (totalFallas * 100) / totalProd;
		Escribir "Lotes procesados: ", lotes;
		Escribir "Porcentaje total de fallas: ", porcFallas, "%";
		Escribir "Lote con menos fallas: ", loteMin;
		Escribir "Lote con más fallas: ", loteMax;
	FinSi
FinProceso