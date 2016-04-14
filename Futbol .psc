Proceso EjercicioDefutbol
	// Inicialziacion de variables
	cont_partido<-0
	partidos_ganados<-0
	partidos_empatados<-0
	partidos_perdidos<-0
	goles_totales<-0
	goles_contrarios_totales<-0
	puntos <- 0
	Definir equipo Como Caracter
	// Inicio del programa
	Escribir 'Bienvenido a la liga regional'
	Escribir 'Ingrese el nombre del equipo'
	Leer equipo
	Borrar Pantalla
	Escribir 'Esta liga regional, consta de 10 partidos'
	Escribir 'Usted debera ingresar la cantidad de goles por partido'
	Escribir 'El equipo ',equipo,' debe tener mas de 20 puntos para estar en la Liguilla de campeonato'
	Escribir 'Presione una tecla para comenzar'
	Esperar Tecla
	// -----------------------------------------------------------------------
	Repetir
		// Reinicio de varialbes
		gol<-0
		gol_contrario<-0
		cont_partido<-cont_partido+1
		Escribir 'Partido ',cont_partido
		Escribir '_________________'
		Escribir 'Goles del equipo ',equipo
		Repetir
			Leer gol
		Hasta Que (gol>=0)
		Escribir 'Goles del equipo contrario'
		Repetir
			Leer gol_contrario
		Hasta Que (gol_contrario>=0)
		Si (gol>gol_contrario) Entonces
			partidos_ganados<-partidos_ganados+1
			Escribir 'El equipo ',equipo,' gano este partido'
			goles_totales<-goles_totales+gol
			goles_contrarios_totales<-goles_contrarios_totales+gol_contrario
			puntos <- puntos +3
		FinSi
		Si (gol<gol_contrario) Entonces
			partidos_ganados<-partidos_ganados+1
			Escribir 'El equipo contrario gano este partido'
			goles_totales<-goles_totales+gol
			goles_contrarios_totales<-goles_contrarios_totales+gol_contrario
		FinSi
		Si (gol==gol_contrario) Entonces
			partidos_empatados <- partidos_empatados + 1
			Escribir 'El equipo ',equipo,' empató este partido'
			goles_totales<-goles_totales+gol
			goles_contrarios_totales<-goles_contrarios_totales+gol_contrario
			puntos <- puntos + 1
		FinSi
		Escribir '_________________________________'
	Hasta Que (cont_partido==10)
	Borrar Pantalla
	Si puntos>20 Entonces
		Escribir 'El equipo ',equipo,' esta en la liga de campeonato'
	Sino
		Escribir 'El equipo ',equipo,' esta en la No liguilla'
	FinSi
	// Salida de datos 
	Escribir 'El equipo ',equipo,' tiene ',goles_totales,' a favor'
	Escribir 'El equipo ',equipo,' tiene ',goles_contrarios_totales,' goles en contra'
	Si puntos<10 Entonces
		Escribir 'El equipo ',equipo,' esta en la liga de promocion'
	FinSi
	Escribir 'Partidos ganados : ',partidos_ganados
	Escribir 'Partidos perdidos: ',partidos_perdidos
	Escribir 'Partidos empatados ',partidos_empatados
	Escribir 'Puntos : ',puntos
	Escribir 'Diferencia de goles :',goles_totales-goles_contrarios_totales
FinProceso
