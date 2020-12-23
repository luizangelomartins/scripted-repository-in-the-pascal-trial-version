


        // [" CRIADOR: LUIZ ÂNGELO MARTINS "]:

	// DESCRIÇÃO:
	// PROJETO DE CALCULOS QUE CONSISTE EM:
	// CALCULO DE MMC,
	// SOMAR FRAÇÃO,
	// SUBTRAIR FRAÇÃO,
	// MULTIPLICAR FRAÇÃO,
	// DIVIDIR FRAÇÃO,
	// CALCULO DE IMC,
	// CONVERTER CELSIUS PARA KELVIN,
	// CELSIUS PARA FAHRENHEIT,
	// KELVIN PARA CELSIUS,
	// KELVIN PARA FAHRENHEIT,
	// FAHRENHEIT PARA CELSIUS,
	// FAHRENHEIT PARA KELVIN.

	// COMPILADOR USADO:
        // LAZARUS IDE


// IDENTIFICAÇÃO DO PROGRAMA:
program Project1;
uses crt, sysutils, math, dos;

// DECLARAÇÃO DE VARIAVEIS:
var
   escolha_usuario : integer;
   denominador1 : integer;
   denominador2 : integer;
   a : integer;
   b : integer;
   denominador_soma : integer;
   numerador1_soma : integer;
   numerador2_soma : integer;
   numerador2 : integer;
   result1 : integer;
   result2 : integer;
   denominador1_multiplicar : integer;
   denominador2_multiplicar : integer;
   numerador1_multiplicar : integer;
   numerador2_multiplicar : integer;
   numerador : integer;
   denominador : integer;
   result : integer;
   denominador1_dividir : integer;
   denominador2_dividir : integer;
   numerador1_dividir : integer;
   numerador2_dividir : integer;
   r : integer;

   peso : real;
   altura : real;
   autura_aux : real;
   result3 : real;
   resultado_imc : real;
   celcius : real;
   kelvin : real;
   celsius_Fahrenheit : real;
   Fahrenheit : real;
   kelvin_Celcius : real;
   celcius_kelvin : real;
   kelvin_Fahrenheit : real;
   Fahrenheit_from_kelvin : real;
   fahrenheit_Celcius : real;
   Celcius_from_Fahrenheit : real;
   fahrenheit_Kelvin : real;
   Kelvin_from_Fahrenheit : real;
   resultado : real;


// INICIO DO PROGRAMA:
begin

     // "INICIALIZANDO VARIAVEIS":
     escolha_usuario := 1;
     denominador1 := 0;
     denominador2 := 0;
     resultado := 0;
     a := 0;
     b := 0;
     denominador_soma := 0;
     numerador1_soma := 0;
     numerador2_soma := 0;
     numerador2 := 0;
     result1 := 0;
     result2 := 0;
     denominador1_multiplicar := 0;
     denominador2_multiplicar := 0;
     numerador1_multiplicar := 0;
     numerador2_multiplicar := 0;
     numerador := 0;
     denominador := 0;
     result := 0;
     denominador1_dividir := 0;
     denominador2_dividir := 0;
     numerador1_dividir := 0;
     numerador2_dividir := 0;
     r := 0;

     while escolha_usuario<>0 do
            begin
                  
                  // "ZERANDO VALORES":
                  denominador1_dividir := 0;
    		  denominador2_dividir := 0;
		  numerador1_dividir := 0;
		  numerador2_dividir := 0;
                  escolha_usuario := 1;
		  denominador1 := 0;
		  denominador2 := 0;
		  resultado := 0;
		  a := 0;
		  b := 0;
		  denominador_soma := 0;
		  numerador1_soma := 0;
		  numerador2_soma := 0;
		  numerador2 := 0;
		  result1 := 0;
		  result2 := 0;
		  denominador1_multiplicar := 0;
		  denominador2_multiplicar := 0;
		  numerador1_multiplicar := 0;
		  numerador2_multiplicar := 0;
		  numerador := 0;
		  denominador := 0;
		  result := 0;
                  r := 0;

                  // MENU:
                  clrscr;
                  writeLn;
                  writeLn;
                  textcolor(12);
                  writeLn(' ... MENU GERAL - CALCULADORA:');
                  writeLn;
                  textcolor(14);
                  writeLn(' ... 0 = SAIR.');
                  textcolor(15);
                  writeLn(' ... 1 = CALCULO DE MMC.');
                  writeLn(' ... 2 = SOMAR FRACAO.');
                  writeLn(' ... 3 = SUBTRAIR FRACAO.');
                  writeLn(' ... 4 = MULTIPLICAR FRACAO.');
                  writeLn(' ... 5 = DIVIDIR FRACAO.');
                  writeLn(' ... 6 = CALCULO DE IMC.');
                  writeLn(' ... 7 = CONVERTER CELSIUS PARA KELVIN.');
                  writeLn(' ... 8 = CONVERTER CELSIUS PARA FAHRENHEIT.');
                  writeLn(' ... 9 = CONVERTER KELVIN PARA CELSIUS.');
                  writeLn(' ... 10 = CONVERTER KELVIN PARA FAHRENHEIT.');
                  writeLn(' ... 11 = CONVERTER FAHRENHEIT PARA CELSIUS.');
                  writeLn(' ... 12 = CONVERTER FAHRENHEIT PARA KELVIN.');
                  writeLn;
                  textcolor(11);
                  write(' ... DIGITE SUA ESCOLHA: ');
                  textcolor(10);
                  ReadLn (escolha_usuario);

                  // "FILTRAGEM DA ESCOLHA DO USUARIO":
                  // BLOCO QUE SE TRATA DO ENCERRAMENTO DO PROGRAMA:
                  case escolha_usuario of
                  0: begin
                          textcolor(13);
            	          clrscr;
            	          writeLn;
                          writeLn;
                          writeLn;
                          writeLn(' ... VOCE SAIU!');
                          ReadKey;
                          escolha_usuario := 0;
                  end;

                  // BLOCO QUE SE TRATA DO MMC:
                  1: begin
                          clrscr;
                          writeLn;
                          writeLn;
            	          textcolor(12);
            	          writeLn(' ... CALCULO DE MMC.');
                          writeLn;
            	          textcolor(11);
                          write(' ... Digite o primeiro MMC: ');
                          textcolor(10);
                          ReadLn (denominador1);
                          textcolor(11);
                          write(' ... Digite o segundo MMC: ');
                          textcolor(10);
                          ReadLn (denominador2);

		          a := denominador1;
		          b := denominador2;

		          while b<>0 do
                                 begin
                                      r := (a mod b);
		                      a := b;
		                      b := r;
                                 end;

		          resultado := (denominador1*(denominador2 div a));
		          textcolor(14);
		          writeLn;
                          writeLn;
                          writeLn(' ... O MMC DE ', denominador1, ' E ', denominador2, ' E: ', resultado:3:2);
                          writeLn;
                          writeLn;
                          writeLn;
			  ReadKey;
                  end;

                  // BLOCO QUE SE TRATA DA SOMA DE FRAÇÕES:
                  2: begin
                          while denominador_soma = 0 do
                                 begin
                                      clrscr;
	            	              writeLn;
                                      writeLn;
	            	              textcolor(12);
	            	              writeLn(' ... SOMA DE FRACOES.');
                                      writeLn;
	            	              textcolor(11);
	                              write(' ... Digite o denominador: ');
	                              textcolor(10);
                                      ReadLn (denominador_soma);
	                              textcolor(11);
	                              write(' ... Digite o primeiro numerador: ');
	                              textcolor(10);
                                      ReadLn (numerador1_soma);
	                              textcolor(11);
	                              write(' ... Digite o segundo numerador: ');
	                              textcolor(10);
                                      ReadLn (numerador2_soma);

	                              if (denominador_soma = 0) then
                                         begin
					      textcolor(14);
					      writeLn;
                                              writeLn;
					      writeLn(' ... O DENOMINADOR NAO PODE SER ZERO!');
					      ReadKey;
                                         end;

                                 end;

		  result1 := (numerador1_soma+numerador2_soma);
		  result2 := (result1 div denominador_soma);
                  writeLn;
                  writeLn;
		  textcolor(10);
                  writeLn(' ... SUA FRACAO: ', (numerador1_soma+numerador2_soma), '/', denominador_soma);
                  textcolor(14);
                  writeLn(' ... A APROXIMACAO DEU: ', result2);
                  ReadKey;

                  end;

                  // BLOCO QUE SE TRATA DA SUBTRAÇÃO DE FRAÇÕES:
                  3: begin
                          while denominador_soma = 0 do
                                 begin
                                      clrscr;
	            	              writeLn;
                                      writeLn;
	            	              textcolor(12);
	            	              writeLn(' ... SUBTRACAO DE FRACOES.');
                                      writeLn;
	            	              textcolor(11);
	                              write(' ... Digite o denominador: ');
	                              textcolor(10);
                                      ReadLn (denominador_soma);
	                              textcolor(11);
	                              write(' ... Digite o primeiro numerador: ');
	                              textcolor(10);
                                      ReadLn (numerador1_soma);
	                              textcolor(11);
	                              write(' ... Digite o segundo numerador: ');
	                              textcolor(10);
                                      ReadLn (numerador2_soma);

	                              if (denominador_soma = 0) then
                                         begin
                                              textcolor(14);
					      writeLn;
                                              writeLn;
					      writeLn(' ... O DENOMINADOR NAO PODE SER ZERO!');
					      ReadKey;
                                         end;

                                 end;

		  result1 := (numerador1_soma-numerador2_soma);
		  result2 := (result1 div denominador_soma);
                  writeLn;
                  writeLn;
		  textcolor(10);
                  writeLn(' ... SUA FRACAO: ', (numerador1_soma-numerador2_soma), '/', denominador_soma);
                  textcolor(14);
                  writeLn(' ... A APROXIMACAO DEU: ', result2);
                  ReadKey;

                  end;

            // BLOCO QUE SE TRATA DA MULTIPLICAÇÃO DE FRAÇÕES:
            4: begin
                    while ((denominador1_multiplicar=0) or (denominador1_multiplicar=1) or (denominador2_multiplicar=0) or (denominador2_multiplicar=1)) do
                      begin
        	           clrscr;
                           writeLn;
                           writeLn;
            	           textcolor(12);
            	           writeLn(' ... MULTIPLICACAO DE FRACOES:');
                           writeLn;
    			   textcolor(11);
                           write(' ... Digite o primeiro denominador: ');
                           textcolor(10);
                           ReadLn (denominador1_multiplicar);
                           textcolor(11);
                           write(' ... Digite o segundo denominador: ');
                           textcolor(10);
                           ReadLn (denominador2_multiplicar);
                           textcolor(11);
                           write(' ... Digite o primeiro numerador: ');
                           textcolor(10);
                           ReadLn (numerador1_multiplicar);
                           textcolor(11);
                           write(' ... Digite o segundo numerador: ');
                           textcolor(10);
                           ReadLn (numerador2_multiplicar);

                           if (denominador1_multiplicar = 0) then
                              begin;
                                    textcolor(14);
                                    writeLn;
                                    writeLn;
                                    writeLn(' ... DENOMINADOR 1 - NAO HA SUPORTE PARA ESTE DENOMINADOR!');
                                    ReadKey;
                              end;

                           if (denominador2_multiplicar = 0) then
                              begin
                                   textcolor(14);
                                   writeLn;
                                   writeLn;
                                   writeLn(' ... DENOMINADOR 2 - NAO HA SUPORTE PARA ESTE DENOMINADOR!');
                                   ReadKey;
                              end;

                           if (denominador1_multiplicar = 1) then
                              begin
                                   textcolor(14);
                                   writeLn;
                                   writeLn;
                                   writeLn(' ... DENOMINADOR 1 - NAO HA SUPORTE PARA ESTE DENOMINADOR!');
                                   ReadKey;
                              end;

                           if (denominador2_multiplicar = 1) then
                              begin
                                   textcolor(14);
                                   writeLn;
                                   writeLn;
                                   writeLn(' ... DENOMINADOR 2 - NAO HA SUPORTE PARA ESTE DENOMINADOR!');
                                   ReadKey;
                              end;
                              end;

		              numerador := (numerador1_multiplicar*numerador2_multiplicar);
		              denominador := (denominador1_multiplicar*denominador2_multiplicar);
		              result := (numerador div denominador);

        		      textcolor(10);
        		      writeLn;
                              writeLn;

                              writeLn(' ... SUA FRACAO: ', (numerador1_multiplicar*numerador2_multiplicar), '/', (denominador1_multiplicar*denominador2_multiplicar));
                              textcolor(14);
                              writeLn(' ... A APROXIMACAO DEU: ', result);
                              ReadKey

                              end;

            // BLOCO QUE SE TRATA DA DIVISÃO DE FRAÇÕES:
            5: begin
                    while ((denominador1_dividir = 0) or (denominador2_dividir = 0)) do
                      begin
                           clrscr;
	            	   writeLn;
                           writeLn;
	            	   textcolor(12);
	            	   writeLn(' ... DIVISAO DE FRACOES:');
                           writeLn;

	            	   textcolor(11);
	                   write(' ... Digite o primeiro numerador: ');
	                   textcolor(10);
                           ReadLn (numerador1_dividir);
	                   textcolor(11);
	                   write(' ... Digite o segundo numerador: ');
	                   textcolor(10);
                           ReadLn (numerador2_dividir);

	                   textcolor(11);
	                   write(' ... Digite o primeiro denominador: ');
	                   textcolor(10);
                           ReadLn (denominador1_dividir);
	                   textcolor(11);
	                   write(' ... Digite o segundo denominador: ');
	                   textcolor(10);
                           ReadLn (denominador2_dividir);

                           if (denominador1_dividir = 0) then
                              begin
                                   textcolor(14);
                                   writeLn;
                                   writeLn;
                                   writeLn(' ... DENOMINADOR 1 - NAO HA SUPORTE PARA ESTE DENOMINADOR!');
                                   ReadKey;
                              end;

                           if (denominador2_dividir = 0) then
                              begin
                                   textcolor(14);
                                   writeLn;
                                   writeLn;
                                   writeLn(' ... DENOMINADOR 2 - NAO HA SUPORTE PARA ESTE DENOMINADOR!');
                                   ReadKey;
                              end;

                           end;

		           numerador := (numerador1_dividir*denominador2_dividir);
		           denominador := (denominador1_dividir*numerador2_dividir);
		           result := (numerador div denominador);

        		   textcolor(10);
        		   writeLn;
                           writeLn;
                           writeLn(' ... SUA FRACAO: ', (numerador1_dividir*denominador2_dividir), '/', (denominador1_dividir*numerador2_dividir));
                           textcolor(14);
                           writeLn(' ... A APROXIMACAO DEU: ', result);
                           ReadKey;

                           end;

            // BLOCO QUE TRATA SOBRE O IMC:
            6: begin
                    peso := 0.0;
                    altura := 0.0;
                    result3 := 0.0;
                    resultado_imc := 0.0;
                    autura_aux := 0.0;

                    clrscr;
            	    writeLn;
                    writeLn;
            	    textcolor(12);
            	    writeLn(' ... IMC:');
                    writeLn;

	            textcolor(11);
                    write(' ... Digite o valor do peso corporal: ');
                    textcolor(10);
                    ReadLn (peso);
                    textcolor(11);
                    write(' ... Digite o valor da altura: ');
                    textcolor(10);
                    ReadLn (altura);

                    autura_aux := (altura*altura);
        	    resultado_imc := (peso/autura_aux);
        	    result3 := resultado_imc;

        	    textcolor(10);
        	    writeLn;
                    writeLn;
        	    writeLn(' ... IMC = ', result3:3:2);

                    if (result3<18) then
                       begin
                            textcolor(14);
                            writeLn(' ... A PESSOA ESTA ABAIXO DO PESO!');
                            ReadKey;
                       end;

                    if ((result3>18) and (result3<25)) then
                       begin
                            textcolor(14);
                            writeLn(' ... A PESSOA ESTA COM O PESO NORMAL!');
                            ReadKey;
                       end;

                    if ((result3>25) and (result3<30)) then
                       begin
                            textcolor(14);
                            writeLn(' ... A PESSOA ESTA COM SOBRE PESO!');
                            ReadKey;
                       end;

                    if ((result3>30) and (result3<35)) then
                       begin
                            textcolor(14);
                            writeLn(' ... A PESSOA ESTA COM OBESIDADE GRAU I!');
                            ReadKey;
                       end;

                    if ((result3>35) and (result3<40)) then
                       begin
                            textcolor(14);
                            writeLn(' ... A PESSOA ESTA COM OBESIDADE GRAU II!');
                            ReadKey;
                       end;

                    if (result3>40) then
                       begin
                            textcolor(14);
                            writeLn(' ... A PESSOA ESTA COM OBESIDADE GRAU III!');
                            ReadKey;
                       end;

                    end;

            // MÉTODO PARA O CÁLCULO DE TEMPERATURA:
            // CELSIUS PARA KELVIN:
            7: begin

                    celcius := 0.0;
                    kelvin := 0.0;

		    clrscr;
            	    writeLn;
                    writeLn;
            	    textcolor(12);
            	    writeLn(' ... CELSIUS PARA KELVIN:');
                    writeLn;

                    textcolor(11);
                    write(' ... Digite o valor da temperatura em celsius: ');
                    textcolor(10);
                    ReadLn (celcius);

		    kelvin := (celcius+273.15);
		    textcolor(14);
		    writeLn;
                    writeLn;
                    writeLn(' ... A TEMPERATURA DE ', celcius:3:2, ' GRAUS CELSIUS E IGUAL A ', kelvin:3:2, ' KELVIN');
                    ReadKey;

                    end;

            // MÉTODO PARA O CÁLCULO DE TEMPERATURA:
            // CELSIUS PARA FAHRENHEIT:
            8: begin

                    celsius_Fahrenheit := 0.0;
                    Fahrenheit := 0.0;

                    clrscr;
            	    writeLn;
                    writeLn;
            	    textcolor(12);
            	    writeLn(' ... CELSIUS PARA FAHRENHEIT: ');
                    writeLn;

                    textcolor(11);
                    write(' ... Digite o valor da temperatura em celsius: ');
                    textcolor(10);
                    ReadLn (celsius_Fahrenheit);

		    Fahrenheit := ((celsius_Fahrenheit*9/5)+32);
		    textcolor(14);
		    writeLn;
                    writeLn;
                    writeLn(' ... A TEMPERATURA DE ',celsius_Fahrenheit:3:2, ' GRAUS CELSIUS E IGUAL A ', Fahrenheit:3:2, ' FAHRENHEIT');
                    ReadKey;

                    end;

            // MÉTODO PARA O CÁLCULO DE TEMPERATURA:
            // KELVIN PARA CELSIUS:
            9: begin

                    kelvin_Celcius := 0.0;
                    celcius_kelvin := 0.0;

                    clrscr;
            	    writeLn;
                    writeLn;
            	    textcolor(12);
            	    writeLn(' ... KELVIN PARA CELSIUS:');
                    writeLn;

            	    textcolor(11);
                    write(' ... Digite o valor da temperatura em kelvin: ');
                    textcolor(10);
                    ReadLn (kelvin_Celcius);

		    celcius_kelvin := (kelvin_Celcius-273.15);
		    textcolor(14);
		    writeLn;
                    writeLn;
                    writeLn(' ... A TEMPERATURA DE ', kelvin_Celcius:3:2, 'KELVIN E IGUAL A ', celcius_kelvin:3:2, ' CELCIUS');
                    ReadKey;

                    end;

            // MÉTODO PARA O CÁLCULO DE TEMPERATURA:
            // KELVIN PARA FAHRENHEIT:
            10: begin

                     kelvin_Fahrenheit := 0.0;
                     Fahrenheit_from_kelvin := 0.0;

                     clrscr;
            	     writeLn;
                     writeLn;
            	     textcolor(12);
            	     writeLn(' ... KELVIN PARA FAHRENHEIT:');
                     writeLn;

                     textcolor(11);
                     write(' ... Digite o valor da temperatura em kelvin: ');
                     textcolor(10);
                     ReadLn (kelvin_Fahrenheit);

		     Fahrenheit_from_kelvin := (((kelvin_Fahrenheit-273.15)*9/5)+32);
                     writeLn;
                     writeLn;
                     textcolor(14);
                     writeLn(' ... A TEMPERATURA DE ', kelvin_Fahrenheit:3:2, ' KELVIN E IGUAL A ', Fahrenheit_from_kelvin:3:2, ' FAHRENHEIT');
                     ReadKey;

                     end;

            // MÉTODO PARA O CÁLCULO DE TEMPERATURA:
            // FAHRENHEIT PARA CELSIUS:
            11: begin

                     fahrenheit_Celcius := 0.0;
                     Celcius_from_Fahrenheit := 0.0;

                     clrscr;
            	     writeLn;
                     writeLn;
            	     textcolor(12);
            	     writeLn(' ... FAHRENHEIT PARA CELSIUS:');
                     writeLn;

                     textcolor(11);
                     write(' ... Digite o valor da temperatura em fahrenheit: ');
                     textcolor(10);
                     ReadLn (fahrenheit_Celcius);

		     Celcius_from_Fahrenheit := ((fahrenheit_Celcius-32)*5/9);
		     textcolor(14);
		     writeLn;
                     writeLn;
                     writeLn(' ... A TEMPERATURA DE ', fahrenheit_Celcius:3:2, ' FAHRENHEIT E IGUAL A ', Celcius_from_Fahrenheit:3:2, ' CELCIUS');
                     ReadKey;

                     end;

            // MÉTODO PARA O CÁLCULO DE TEMPERATURA:
            // FAHRENHEIT PARA KELVIN:
            12: begin

                     fahrenheit_Kelvin := 0.0;
                     Kelvin_from_Fahrenheit := 0.0;

                     clrscr;
            	     writeLn;
                     writeLn;
            	     textcolor(12);
            	     writeLn(' ... FAHRENHEIT PARA KELVIN:');
                     writeLn;

                     textcolor(11);
                     write(' ... Digite o valor da temperatura em fahrenheit: ');
                     textcolor(10);
                     ReadLn (fahrenheit_Kelvin);

                     Kelvin_from_Fahrenheit := (((fahrenheit_Kelvin-32)*5/9)+273.15);
                     writeLn;
                     writeLn;
            	     textcolor(14);
                     writeLn(' ... A TEMPERATURA DE ', fahrenheit_Kelvin:3:2, ' FAHRENHEIT E IGUAL A ', Kelvin_from_Fahrenheit:3:2, ' KELVIN');
                     ReadKey;

                     end;

                     else
                        textcolor(14);
                        writeLn;
                        writeLn(' ... OCORREU UM ERRO!');
                        writeLn(' ... POR FAVOR TENTE NOVAMENTE!');
                        ReadKey;

                     end;
                     end;


end.





