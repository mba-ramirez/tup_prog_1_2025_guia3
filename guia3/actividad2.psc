Proceso actividad2
    Definir cantidad, contador, min, seg, duracion, mayor, menor, total Como Entero;
    Definir nom, nomMayor, nomMenor Como Texto;
    Definir h, m, s Como Entero;
    Escribir "Ingrese el número de canciones que va a ingresar:";
    Leer cantidad;
    total <- 0;
    Para contador <- 1 Hasta cantidad Hacer
        Escribir "Nombre de la canción:";
        Leer nom;
        Escribir "Minutos:";
        Leer min;
        Escribir "Segundos:";
        Leer seg;
        duracion <- min * 60 + seg;
        total <- total + duracion;
        Si contador = 1 Entonces
            mayor <- duracion;
            menor <- duracion;
            nomMayor <- nom;
            nomMenor <- nom;
        Sino
            Si duracion > mayor Entonces
                mayor <- duracion;
                nomMayor <- nom;
            FinSi
            Si duracion < menor Entonces
                menor <- duracion;
                nomMenor <- nom;
            FinSi
        FinSi
    FinPara
    h <- Trunc(total / 3600);
    m <- Trunc((total MOD 3600) / 60);
    s <- total MOD 60;
    Escribir "Duración total: ", h, "h ", m, "m ", s, "s";
    h <- Trunc(mayor / 3600);
    m <- Trunc((mayor MOD 3600) / 60);
    s <- mayor MOD 60;
    Escribir "Canción más larga: ", nomMayor, " (", h, "h ", m, "m ", s, "s)";
    h <- Trunc(menor / 3600);
    m <- Trunc((menor MOD 3600) / 60);
    s <- menor MOD 60;
    Escribir "Canción más corta: ", nomMenor, " (", h, "h ", m, "m ", s, "s)";
FinProceso