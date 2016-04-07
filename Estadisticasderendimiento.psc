Proceso Estadisticas_de_rendimiento
	//Variables inicializadas
	alumnos <-0 ;	
	cont <-0    ;
	suma <-0 ;
	estudiantesexamen <-0 ;
	reprobados <-0 ;
	aprobados <- 0;
	promediomayor <-0 ;
	//Entrada de datos del primer semestre
	repetir
	escribir "Ingrese el numero de alumnos que ingresaron el primer semestre (No mayor de 40 ni menos de 1)" ;
	leer alumnos;
	Hasta que ((alumnos <=40) y (alumnos > 0)) ;
    escribir "_________";
	repetir
		nota<- 0;
		escribir "Ingrese promedio del alumno " , cont + 1 ;
		leer nota ;
		si (nota <= 7) y (nota > 0 )entonces
			cont <- cont + 1 ;
			suma <- suma + nota ;
		Sino 
			escribir "la nota ingresada no puede ser mayor a 7 o menor que 0";
		finsi
		si (nota > promediomayor) entonces
			promediomayor <-(promediomayor * 0)+1*nota;
		FinSi
		si (nota == 3.9)entonces
			estudiantesexamen <- estudiantesexamen + 1 ;
		FinSi
		si (nota >= 4)entonces
			aprobados <- aprobados + 1 ;
		FinSi
		si (nota < 3.8)entonces
			reprobados <- reprobados +1 ;
		FinSi
		
	Hasta Que (cont ==alumnos );
	//Tenemos la suma de las notas semestre 1
	//Variables inicializadas
	alumnos2 <-0 ;	
	cont2 <-0    ;
	suma2 <-0 ;
	estudiantesexamen2 <- 0 ;
	reprobados2 <- 0 ;
	aprobados2 <-0 ;
	promediomayor2 <- 0 ;
	//Entrada de datos del segundo semestre
	escribir "_______________________________________________________________" ;
	Repetir
	escribir "Ingrese el numero de alumnos que ingresaron el segundo semestre" ;
	leer alumnos2;
	Hasta que ((alumnos2 <=40) y (alumnos2 > 0)) ;
	escribir "_________";
	repetir
		nota2<-0;
		escribir "Ingrese promedio del alumno " , cont2 + 1 ;
		leer nota2 ;
		si (nota2 <= 7) y (nota2 > 0 )entonces
			cont2 <- cont2 + 1 ;
			suma2 <- suma2 + nota2 ;
		Sino 
			escribir "la nota ingresada no puede ser mayor a 7 o menor que 0";
		finsi
		si (nota2 > promediomayor2) entonces
			promediomayor2 <-(promediomayor2 *0)+1*nota2;
		sino 
			promediomayor2 <- promediomayor2 + 0 ;
		FinSi
		si (nota2 == 3.9)entonces
			estudiantesexamen2 <- estudiantesexamen2 + 1 ;
		FinSi
		si (nota2 > 4)entonces
			aprobados2 <- aprobados2 + 1 ;
		FinSi
		si (nota2 < 3.8)entonces
			reprobados2 <- reprobados2 +1 ;
		FinSi
		
		Hasta Que (cont2 ==alumnos2 );
	//Tenemos la suma de las notas semestre 2
	porcentaje <- aprobados * 100/alumnos ;
	porcentaje2 <- aprobados2 * 100/alumnos2 ;
	//Entrega de resultados
	//Primer semestre
	escribir "_______________________________________________________________" ;
	escribir "-El primer semestre se registraron un total de " , alumnos ," alumnos" ;
	escribir "-El promedio del primer semestre es : ", suma/alumnos;
		Si (Estudiantesexamen <= 0) entonces
		escribir "-No hay estudiantes en examenes";
		sino
			escribir "-Ademas ", estudiantesexamen , " estudiantes estan con examen" ;
		finsi
	escribir "-Aprobaron un total de " , aprobados, " alumnos el primer semestre, por lo que el porcentaje de aprobacion es : " ,porcentaje ,"%" ;
	escribir "-Reprobaron ", reprobados, " alumnos el primer semestre" ;
	escribir "-El mejor promedio del primer semestre fue " , promediomayor ;
	//Segundo semestre
	escribir "_______________________________________________________________" ;
	escribir "-El segundo semestre se registraron un total de " , alumnos2 ," alumnos" ;
	escribir "-El promedio del segundo semestre es : ", suma2/alumnos2;
		Si (Estudiantesexamen2 <= 0) entonces
			escribir "-No hay estudiantes en examenes";
		sino
			escribir "-Ademas ", estudiantesexamen2 , " estudiantes estan con examen" ;
		finsi
		escribir "-Aprobaron un total de " , aprobados2, " alumnos el segundo semestre, por lo que el porcentaje de aprobacion es : " ,porcentaje2 ,"%" ;
		escribir "-El mejor promedio del segundo semestre fue " , promediomayor2 ;
	escribir "-Reprobaron ", reprobados2, " alumnos el segundo semestre" ;
	//Estudiantes que no entraron el segundo semestre
		Si alumnos2<alumnos Entonces
			alumnosreprobados <- alumnos-alumnos2;
			Escribir "-" ,alumnosreprobados, " alumnos no entraron al segundo semestre" ;
		Sino
			escribir "-Todos los alumnos pasaron al segundo semestre" ;
		FinSi
FinProceso
