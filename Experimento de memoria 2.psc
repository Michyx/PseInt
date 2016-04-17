Proceso Memoria
	dimension paciente[10];
	dimension pastel[10]
	x<-0
	cont<-0
	definir nombre como texto;
	Definir pastel como numerico;
	repetir
		escribir "Ingrese el nombre del paciente : " , x+1
		x<- x+1
		leer paciente[x];
	hasta que x==10
	escribir "______________________________________"
	repetir 
		cont <- cont+1
		indice <- indice+1
		escribir "Paciente " cont ": " paciente[indice];
	Hasta Que cont==10
	escribir "________________________________________";
	escribir "Dele un pastel a cada paciente, cada pastel tiene un numero"
	num<-0
	repetir 
		num <- num +1
		
		escribir "Numero del pastel para el paciente ",num ," ", paciente[num] ;
		leer pastel[num]
	    
	hasta que num=10
	para x<-1 hasta 10
	    escribir "El paciente ",paciente[x]," tiene el numero ",pastel[x];
	fin para
	
	repetir
		z <- azar(1 y 10)
		suma <- suma + pastel[z]
	hasta que z==5
	escribir "________________________________"
	escribir "La suma de los primeros numeros es " suma;
FinProceso

