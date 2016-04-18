Proceso Dat_Soldier
	//Variables y vectores
	x<-0;
	puntaje <-0;
	soldadosmuertos<-0;
	soldadosvivos <-10;
	misiones<-0;
	daño<-0
	definir usuario como texto
	definir peloton como texto
	Dimension estado[10] //1= Vivo //2=Fallecido
	Dimension soldado[10]; //10 Soldados
	Dimension salud[10]; //100 de Salud
	definir soldado como texto;
	//LLenado de stats
	repetir 
		z <- z+1;
		salud[z] <- salud[z] + 100;
	Hasta Que z == 10
	z<-0 //Reinicio de Variable z
	repetir 
		z <- z+1;
		estado[z] <- estado[z] + 1;
	Hasta Que z == 10
	//LLenado de stats
    //Inicio
	escribir "Ingresa tu nombre"
	leer usuario;
	escribir "Bienvenido a el juego Dat Soldier, sargento ", usuario,", tendras que crear un peloton";
	escribir "Ingrese el nombre del peloton";
	leer peloton;
	escribir "Debes asignarle un nombre, a cada 1 de tus 10 soldados";
	repetir //Los 10 soldados seran nombrados, y guardados en las variables del vector (Dimension soldado[x])
		escribir "Ingrese el nombre del soldado " , x+1 "!";
		x<- x+1;                                                                                          //Hecho por Miguel Valenzuela
		leer soldado[x];
	Hasta que x ==10
	Limpiar Pantalla; //A continuacion se mostraran al usuario todos los nombres que eligio, el nombre que escogio para el y su peloton.
	escribir "Este es tu peloton";
	escribir "______________________";
	escribir "Peloton ",peloton;
	escribir "______________________";
	repetir 
		cont <- cont+1;
		indice <- indice+1;
		escribir "Soldado " cont ": " soldado[indice]," - Salud " Salud[indice];
	Hasta Que cont==10
	escribir "___________________________________________"; //Se muestra como jugar!
	Escribir "Ahora es hora de mandarlos a una mision!";
	escribir "Tu decides cuantas misiones quieres jugar!";
	escribir "Mientras mas misiones hagas, mejor puntaje tendras";
	escribir "Pero si muere tu peloton, perderas, y no obtendras puntaje";
	escribir "Para obtener mayor puntaje tendras que arriesgarte";
	escribir "En cada mision, todos tus soldados perderan salud al azar, o ganaran puntaje ";
	escribir "dependiendo del evento";
	escribir "Cuando la salud de uno de ellos sea 0, perderas a tu soldado";
	escribir "Presiona enter para continuar";
	esperartecla; //Se espera hasta que el usuario termine de leer
	Limpiar Pantalla;
	//Iniciar juego!!!!!!!!!!!
		repetir
			//Reiniciar variable!
			mision <- 0;
			cont<-0;
			indice<-0;
			escribir "____________________________________________________";
			escribir "Elige la opcion que quieras!";
			escribir "(1) Para iniciar mision, (2) para terminar tu partida!";
			leer mision;
			segun mision hacer
				1: 
					Limpiar Pantalla;
					escribir "____________________________________________________";
					escribir "Has hecho una mision";
					escribir "____________________________________________________";
				misiones <- misiones + 1;
				esperar 1 segundos
				
				//La batalla!!!!-------------------------------------------------------------------------
				para num<-1 hasta 10
					daño<-0;
					num_eventos <- azar(6);  //En este proceso, se generaran una la cantidad de eventos que habran dentro del juego
					evento<-0;                 //Solo se haran un maximo de 6 eventos
					si estado[num] == 1          //Los eventos son totalmente al azar, algunos daran puntaje
						Repetir                    //Y otros mataran a los soldados
							evento <- azar(30);
							segun evento hacer
								1: 
									escribir soldado[num]," Se tropezo";
									daño <- daño + 21;
									esperar 500  Milisegundos; //Tiempo que el texto estara en pantalla
								2:                               //Tiene que ser suficiente para que el juego vaya rapido
									escribir soldado[num]," Recibio un disparo"; //Pero a la vez lento para que se pueda leer
									daño <- daño + 30;
									esperar 500  Milisegundos;
								3: 
									escribir soldado[num]," Se le cayo un ojo";
									daño <- daño + azar(100);
									esperar 500  Milisegundos;
								4: 
									escribir soldado[num]," Lo mordio un soldado enemmigo";
									daño <- daño + 23;
									esperar 500 Milisegundos;
								5: 
									escribir soldado[num]," Se disparo en el pie";
									daño <- daño + 20;
									esperar 500  Milisegundos;
								6: 
									escribir soldado[num]," Mato a un enemigo";
									puntaje <- puntaje+ 150;
									esperar 500 Milisegundos;
								7: 
									escribir soldado[num]," Se hecho a llorar";
									daño <- daño + 2+2+2+2+2;
									esperar 500  Milisegundos;
								8: 
									escribir soldado[num]," Mato a un enemigo";
									puntaje <- puntaje +150;
									esperar 500 Milisegundos;
								9: 
									escribir soldado[num]," Mato a un enemigo";
									puntaje <- puntaje +150;
									esperar 500 Milisegundos;
								10: 
									escribir soldado[num]," Se mordio la lengua";
									daño <- daño + 4;
									esperar 500 Milisegundos;
								11: 
									escribir soldado[num]," Le dio un microinfarto";
									daño <- daño + 32;
									esperar 500  Milisegundos;
								12: 
									escribir soldado[num]," Le salto un casquillo en el oido";
									daño <- daño + 15;
									esperar 500  Milisegundos;
								13: 
									escribir soldado[num]," Fue diagnosticado con sida";
									daño <- daño + 12;
									esperar 500 Milisegundos;
								14: 
									escribir soldado[num]," Mato a un enemigo";
									puntaje <- puntaje +150;
									esperar 500 Milisegundos;
								15: 
									escribir soldado[num]," Se cayo al rio....really?";
									daño <- daño + 23;
									esperar 2 segundos;
								16: 
									escribir soldado[num]," Se hizo un sandwich";
									puntaje <- puntaje + 400;
									esperar 500 milisegundos;
								17:
									escribir soldado[num]," Piso mal y se cayo al vacio";
									daño <- daño + 54;
									esperar 500 Milisegundos;
								18:
									escribir soldado[num]," Casi se murio de la risa";
									daño <- daño + 50;
									esperar 500 Milisegundos;
									
								19:
									escribir soldado[num]," Se emborracho ";
									daño <- daño + 20;
									puntaje <- puntaje + 500;
									esperar 500 Milisegundos;
								20:
									escribir soldado[num]," Allahu Akbar!!!!!!!";
									daño <- daño + 100;
									puntaje <- puntaje + 1000;
									num_eventos <- 0
									esperar 3000 Milisegundos;
								21: 
									escribir soldado[num]," Le pusieron el gorro";
									daño <- daño + 34;
									esperar 500 Milisegundos;
								22:
									escribir soldado[num]," Se electrocuto";
									daño <- daño + 33;
									esperar 500 Milisegundos;
								23:
									escribir soldado[num]," Mato a un enemigo";
									puntaje <- puntaje +150;
									esperar 500 Milisegundos;
								24: 
									escribir soldado[num]," Se puso a ver una pelicula romantica <3";
									puntaje <- puntaje+ 200;
									esperar 1000 Milisegundos;
								25: 
									escribir soldado[num]," Se le cayo un diente";
									daño <- daño + 20;
									esperar 500 Milisegundos;
								26:
									escribir soldado[num]," Se le cayo el arma y le dispararon";
									daño <- daño + 23;
									esperar 500 Milisegundos;
								27:
									escribir soldado[num]," Se perdio en el campo de batalla";
									daño <- daño + 10;
									esperar 500 Milisegundos;
								28:
									escribir soldado[num]," Le dispararon en una nalga";
									daño <- daño + 5;
									esperar 500 Milisegundos;
								29: 
									escribir soldado[num]," Uso impactrueno, pero le salio mal y se hizo daño";
									daño <- daño + 50;
									esperar 1500 Milisegundos;
								30:
									escribir soldado[num]," Pentakill";
									puntaje <- puntaje + 4000;
									esperar 500 Milisegundos;
								de otro modo
								   escribir "Salio invicto";
							FinSegun
							num_eventos <- num_eventos -1; //Contador de eventos
						Hasta Que num_eventos <= 0
				    FinSi
					salud[num] <- salud[num] - daño ; //Suma de los daños que tendra el soldado
					Limpiar Pantalla
				finpara
				num<-0
				para num<-1 hasta soldadosvivos
					puntaje <- puntaje+ 150;    //Suma de puntaje por soldado vivo
				finpara
				para num<-1 hasta 10            //Revision de cada soldado, para verificar su salud y su estado (vivo o muerto).
					si salud[num] <= 0 entonces 
						estado[num] <- estado[num] + 1
					FinSi
					si estado[num] == 2 Entonces
						soldadosmuertos<- soldadosmuertos + 1; //Contador de soldados restantes
						soldadosvivos <- soldadosvivos - 1;
					FinSi
				FinPara
				escribir "Presiona una tecla para ver el estado de tu peloton"; //Revision del estado del peloton
				esperar tecla
				limpiar pantalla
				escribir "_____________________________";
			    escribir "Sargento ", usuario "| Peloton ",peloton;
				escribir "_____________________________";
				repetir  //Revision de cada soldado, para verificar su salud y su estado.
					cont <- cont+1;
					indice <- indice+1;
					si estado[indice]== 1 entonces
						escribir "Soldado " cont ": " soldado[indice]," - Salud " Salud[indice];
				    Sino
						escribir "Soldado " cont ": " soldado[indice]," (Fallecio en combate)" ;
				    finsi
				Hasta Que cont==10
				escribir "__________________________________";
				escribir "Restantes: " soldadosvivos;
				escribir "__________________________________";
				escribir "Puntaje total : ",puntaje;
				esperar tecla
				2:
				Limpiar Pantalla
				//Entrega de datos//////////////////////////////////////////////////////////////////
				escribir "/////////////Exito/////////////";
				escribir " Has terminado la partida con exito";
				escribir " Has hecho un total de ",misiones," misiones";                                    //Hecho por Miguel Valenzuela
				escribir " Has hecho ",puntaje," puntos!!!";
				auxiliar <- auxiliar + 1;
				escribir "Han sobrevivido ",soldadosvivos," soldados";
				escribir "Han muerto ", soldadosmuertos, " soldados";
				//Entrega de datos//////////////////////////////////////////////////////////////////
			 De Otro Modo:
					escribir "Tu opcion no es valida";
					Esperar Tecla;
					Limpiar Pantalla;
			FinSegun
			
			si soldadosvivos<=0 y soldadosmuertos >= 10 entonces //Mensaje de juego terminado
				escribir "Perdiste!!!, todo tu puntaje queda anulado :(";
				escribir "Intentalo de nuevo!!!";
				auxiliar <- auxiliar + 1;
			FinSi
	    Hasta Que (auxiliar == 1)
		
		//Fin del proceso
	FinProceso
