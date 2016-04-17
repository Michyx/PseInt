Proceso Memoria
	dimension paciente[3];
	dimension pastel[3]
	x<-0
	cont<-0
	definir nombre como texto;
	Definir pastel como numerico;
	repetir
		escribir "Ingrese el nombre del paciente : " , x+1
		x<- x+1
		leer paciente[x];
	hasta que x==3
	repetir 
		cont <- cont+1
		indice <- indice+1
		escribir "Paciente " cont ": " paciente[indice];
	Hasta Que cont==3
	repetir 
		escribir "Dele un pastel a cada paciente, cada pastel tiene un numero"
		escribir "-Escoja el paciente"
		leer num
		si num > 3 o num <0
			escribir " Ha escogido un paciente que no existe....menso"
		Sino
			escribir "A escogido el paciente " paciente[num];
			num2 <- num2 +1
			esperar tecla
			limpiar pantalla
			escribir "Numero del pastel para el paciente ",num ," ", paciente[num] ;
			leer pastel[num]
	    finsi
	hasta que num2=3
	para x<-1 hasta 3
	    escribir "El paciente ",paciente[x]," tiene el numero ",pastel[x];
	fin para
	
	repetir
		z <- z+1
		suma <- suma + pastel[z]
	hasta que z==3
	escribir "La suma de todos los numeros es " suma;
FinProceso

