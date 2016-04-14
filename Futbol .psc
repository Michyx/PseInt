Proceso EjercicioDefutbol
	//Inicialziacion de variables
    cont_partido <- 0;
	partidos_ganados<- 0;
	partidos_empatados<- 0;
	partidos_perdidos<- 0;
	goles_totales <-0
	goles_contrarios_totales <-0
	definir equipo como texto;
	//Inicio del programa
	Escribir "Bienvenido a la liga regional";
	escribir "Ingrese el nombre del equipo" ;
	leer equipo;
	Limpiar Pantalla;
	escribir "Esta liga regional, consta de 10 partidos";
	escribir "Usted debera ingresar la cantidad de goles por partido";
	escribir "El equipo ", equipo, " debe tener mas de 20 puntos para estar en la Liguilla de campeonato"
	escribir "Presione una tecla para comenzar";
	esperar Tecla;
	//-----------------------------------------------------------------------
	repetir 
		//Reinicio de varialbes
		gol<-0
		gol_contrario<-0
		cont_partido <- cont_partido +1;
		escribir "Partido " cont_partido;
		escribir "_________________";
		escribir "Goles del equipo ",equipo ;
		repetir
		leer gol;
		hasta que (gol>=0)
		escribir "Goles del equipo contrario";
		repetir
			leer gol_contrario;
		hasta que (gol_contrario >= 0 )
		Si (gol>gol_contrario)
			partidos_ganados <- partidos_ganados +1
			escribir "El equipo ",Equipo," gano este partido";
			goles_totales <- goles_totales + gol;
			goles_contrarios_totales <- goles_contrarios_totales + gol_contrario;
		FinSi
		Si (gol==gol_contrario)
			partidos_ganados <- partidos_ganados +1;
			escribir "El equipo ",Equipo," empató este partido";
			goles_totales <- goles_totales + gol;
			goles_contrarios_totales <- goles_contrarios_totales + gol_contrario;
		FinSi
		Si (gol<gol_contrario)
			partidos_ganados <- partidos_ganados +1;
			escribir "El equipo contrario gano este partido";
			goles_totales <- goles_totales + gol;
			goles_contrarios_totales <- goles_contrarios_totales + gol_contrario;
			
		FinSi
		escribir "_________________________________"
	Hasta Que (cont_partido == 10)
	limpiar pantalla
	//Salida de datos 
	escribir "El equipo ",equipo, " tiene " goles_totales " a favor";
	escribir "El equipo ",equipo, " tiene " goles_contrarios_totales " goles en contra"
	
	Si goles_totales*3< 10 Entonces
		escribir "El equipo ",equipo," esta en la liga de promocion";
	FinSi
	Si goles_totales*3> 20 Entonces
		escribir "El equipo ",equipo," esta en la liga de campeonato";
	Sino
		escribir "El equipo ",equipo," esta en la No liguilla";
	FinSi
	escribir "Partidos ganados : " ,partidos_ganados;
	escribir "Partidos perdidos: " ,partidos_perdidos;
	escribir "Partidos empatados " ,partidos_empatados;
	escribir "Puntos : " ,(goles_totales * 3)
	escribir "Diferencia de goles :" goles_totales-goles_contrarios_totales
FinProceso
