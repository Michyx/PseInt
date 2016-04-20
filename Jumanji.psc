Proceso Jumanji
	//Inicializacion de variables
	dimension jugador[3];
	dimension casilla[3];
	dimension jugadas[3];
	num<-1;
	jugador[1] <- jugador[1] +1;
	jugador[2] <- jugador[2] +2;
	jugador[3] <- jugador[3] +3;
	//Inicializacion de variables //Programa
	casillaimpar<- 0
	casillapar<- 0
	escribir "Bienvenido a Jumanji, el juego tiene 3 jugadores";
	escribir "Funciona con 2 dados, para iniciar, presiona una tecla";
	esperar Tecla;
	limpiar pantalla;
	repetir //Juego!
		escribir "Turno del jugador " jugador[num];
		escribir "__________________";
		escribir "Presione una tecla para tirar los dados";
		esperar Tecla;
		escribir "Tirando dados...";
		esperar 1 segundo;
		dado1 <- azar(6)+1
		dado2 <- azar(6)+1
		dados <- dado1 + dado2
		escribir "El numero de los dados es : ", dados;
		casilla[num] <- casilla[num] + dados;
		escribir "El jugador : ",jugador[num]," esta en la casilla : ",casilla[num];
        //REGLAS
		segun casilla[num]
			3:
				casilla[num] <- 2
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 2";
			5:
				casilla[num] <-3
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 3";
		    7:
				casilla[num] <- 5
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 5";
			11:
				casilla[num] <- 7
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 7";
			13:
				casilla[num] <- 11
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 11";
		    17:
				casilla[num]<- 13
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 13";
		    23:
				casilla[num]<- 17
				escribir "Numero primo!"
				escribir "El jugador a tenido que retroceder a la casilla 17";
				de otro modo
				
		FinSegun
		si casilla[num] mod 10 =0
			casilla[num]<-casilla[num] + 5
			escribir "El jugador a avanzado 5 casillas mas";
		si casilla[num] mod 2 =0
			casilla[num] <- casilla[num] + 2
			escribir "El jugador a avanzado 2 casillas mas";
		sino 
			casilla[num] <- casilla[num] -1
			escribir "El jugador a retrocedido una casilla";
		FinSi
		
		FinSi
		si casilla[num] =13
			casilla[num] =0
			escribir "El jugador a retrocedido al principio"
		FinSi
		//REGLAS
		//Fin del turno del jugador
		
		escribir "El jugador : ",jugador[num]," esta en la casilla : ",casilla[num];
		esperar tecla;
		Limpiar Pantalla;
		jugadas[num]<- jugadas[num]+1
		si casilla[num] < 27 entonces
			num<- num+1;
			si num > 3
				num <- 1;
			FinSi
		finsi
	Hasta Que casilla[num] >=27
	//Salida de datos
	escribir "El ganador es el jugador : ",jugador[num]," y lo hizo en ",jugadas[num]," jugadas. "
	para x <- 1 hasta 3
		escribir "El jugador : ",jugador[x]," a avanzado un total de ",casilla[x] " casillas.";
	FinPara
	
FinProceso
