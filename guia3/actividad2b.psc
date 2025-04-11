Proceso actividad2
	Definir cantidad, contador, min, seg, duracion, mayor, menor, total Como Entero;
	Definir nom, nomMayor, nomMenor Como Cadena;
	Definir h, m, s, limite Como Entero;
	Escribir 'Ingrese el número de canciones que va a ingresar:';
	Leer cantidad;
	limite <- 74*60;
	total <- 0;
	contador <- 1;
	Mientras contador<=cantidad Hacer
		Escribir 'Nombre de la canción:';
		Leer nom;
		Escribir 'Minutos:';
		Leer min;
		Escribir 'Segundos:';
		Leer seg;
		duracion <- min*60+seg;
		Si total+duracion>limite Entonces
			Escribir 'Ya no se puede agregar esta canción, se pasa de los 74 minutos.';
			contador <- cantidad+1;
		SiNo
			total <- total+duracion;
			Si contador=1 Entonces
				mayor <- duracion;
				menor <- duracion;
				nomMayor <- nom;
				nomMenor <- nom;
			SiNo
				Si duracion>mayor Entonces
					mayor <- duracion;
					nomMayor <- nom;
				FinSi
				Si duracion<menor Entonces
					menor <- duracion;
					nomMenor <- nom;
				FinSi
			FinSi
			contador <- contador+1;
		FinSi
	FinMientras
	h <- Trunc(total/3600);
	m <- Trunc((total MOD 3600)/60);
	s <- total MOD 60;
	Escribir 'Duración total: ', h, 'h ', m, 'm ', s, 's';
	h <- Trunc(mayor/3600);
	m <- Trunc((mayor MOD 3600)/60);
	s <- mayor MOD 60;
	Escribir 'Canción más larga: ', nomMayor, ' (', h, 'h ', m, 'm ', s, 's)';
	h <- Trunc(menor/3600);
	m <- Trunc((menor MOD 3600)/60);
	s <- menor MOD 60;
	Escribir 'Canción más corta: ', nomMenor, ' (', h, 'h ', m, 'm ', s, 's)';
FinProceso
