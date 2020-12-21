


        // [" CRIADOR: LUIZ ÂNGELO MARTINS "]:

	// DESCRIÇÃO:
	   // PROJETO DE "TIMER/TEMPORIZADOR" QUE CONSISTE EM:

		// CRONOMETRAR,
		// TEMPORIZAR.

	// COMPILADOR USADO:
		// LAZARUS IDE



// IDENTIFICAÇÃO DO PROGRAMA:
program Project1;
uses crt;

// DECLARAÇÃO DE VARIAVEIS:
var
  repetir : integer;
  repetir2 : integer;
  repetir3 : integer;
  escolha_usuario : integer;
  escolha_usuario2 : integer;
  escolha_usuario3 : integer;
  aux1 : integer;
  aux2 : integer;
  tempo2 : integer;
  tempo3 : integer;
  tempo4 : integer;
  tempo5 : integer;
  tempo6 : integer;
  tempo_aux1 : integer;
  tempo_aux2 : integer;
  tempo_aux3 : integer;


begin

     // "INICIALIZANDO VARIAVEIS":
        repetir := 0;
        repetir2 := 0;
        repetir3 := 0;
        escolha_usuario := 0;
        escolha_usuario2 := 0;
        escolha_usuario3 := 0;
        aux1 := 0;
        aux2 := 0;
        tempo2 := 0;
        tempo3 := 0;
        tempo4 := 0;
        tempo5 := 0;
        tempo6 := 0;
        tempo_aux1 := 0;
        tempo_aux2 := 0;
        tempo_aux3 := 0;

        while repetir<>1 do
              begin

                   // "ZERANDO VALORES":
                   repetir := 0;
		   escolha_usuario := 0;
		   escolha_usuario2 := 0;
		   escolha_usuario3 := 0;
		   aux1 := 0;
		   aux2 := 0;
		   tempo2 := 0;
		   tempo3 := 0;
		   tempo4 := 0;
		   tempo5 := 0;
		   tempo6 := 0;
		   repetir2 := 0;

            	   // EXIBIÇÃO DO MENU:
            	   clrscr;
                   writeLn;
                   writeLn;
                   writeLn;
                   textcolor(12);
                   writeLn(' ... MENU - GERAL:');
                   writeLn;
                   textcolor(15);
                   writeLn(' ... 0 - SAIR.');
                   writeLn(' ... 1 - CRONOMETRO.');
                   writeLn(' ... 2 - TEMPORIZADOR.');
                   writeLn;
                   textcolor(11);
                   write(' ... DIGITE SUA RESPOSTA: ');
                   textcolor(10);
                   Readln (escolha_usuario);

                   // "FILTRAGEM DA ESCOLHA DO USUARIO":
                   // CASO "0" - SAIR:
                   case escolha_usuario of
                   0: begin
                        repetir := 1;
                   end;

                   // CASO "1" - CRONOMETRO:
                   1: begin

        	      repetir2 := 0;
                      tempo_aux1 := 0;
                      tempo_aux2 := 0;
                      tempo_aux3 := 0;

        	      while repetir2<>1 do
                            begin
                               // EXIBIÇÃO DO MENU DO CRONOMETRO:
                	       clrscr;
			       writeLn;
                               writeLn;
                               writeLn;
			       textcolor(12);
			       writeLn(' ... MENU - CRONOMETRO');
			       textcolor(10);
			       writeLn(' ... TEMPO LIMITE: 10 ( DEZ ) HORAS');
			       writeLn;
			       textcolor(15);
			       writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
			       writeLn(' ... 1 - INICIAR CONTAGEM.');
			       writeLn(' ... 2 - ACERTAR O TEMPO.');
			       writeLn;
			       textcolor(11);
			       write(' ... DIGITE SUA RESPOSTA: ');
			       textcolor(10);
                               Readln (escolha_usuario2);

                               // "FILTRAGEM DA ESCOLHA DO USUARIO":
                               // CASO "0" - SAIR:
                               case escolha_usuario2 of
                               0: begin
                                  repetir2 := 1;
                               end;

                               // CASO "1" - INICIAR CONTAGEM:
                               1: begin
                                  writeLn;
				  aux1 := 0;
				  aux2 := 1;

				  while aux2<>3 do
                                        begin
                                             textcolor(14);
					     clrscr;
					     writeLn;
                                             writeLn;
                                             writeLn;
					     writeLn(' ... CONTAGEM:');
                                             writeLn;
					     textcolor(10);
					     writeLn(' ... CRONOMETRO - ', tempo2, 'h:', tempo3, tempo4, 'm:', tempo5, tempo6, 's');
					     tempo6 := tempo6+1;

					     // "SEGUNDOS":
					     if (tempo6 > 9) then
                                                begin
                                                  tempo6 := 0;
                                                  tempo5 := tempo5+1;
                                                end;


					     if (tempo5 > 5) then
                                                begin
                                                  tempo5 := 0;
                                                  tempo4 := tempo4+1;
                                                end;

					     // "MINUTOS":
					     if (tempo4 > 9) then
                                                begin
                                                  tempo4 := 0;
                                                  tempo3 := tempo3+1;
                                                end;

                                             if (tempo3 > 5) then
                                                begin
                                                  tempo3 := 0;
                                                  tempo2 := tempo2+1;
                                                end;

					     // "HORAS":
					     if (tempo2 > 9) then
                                                begin
                                                  tempo6 := 0;
                                                  tempo5 := 0;
                                                  tempo4 := 0;
                                                  tempo3 := 0;
                                                  tempo2 := 0;

                                                  writeLn;
                                                  writeLn;
                                                  writeLn;
                                                  textcolor(13);
                                                  writeLn(' ... TEMPO LIMITE ATINGIDO!');
                                                  ReadKey;
                                                  break;

                                                end;

                                             Delay(1000);

                                        end;

                                        end;

                                        // CASO "2" - ACERTAR O TEMPO:
			                2: begin
                                                textcolor(14);
						clrscr;
						writeLn;
                                                writeLn;
						writeLn(' ... DEFINIR TEMPO:');

						// "SEGUNDOS":
						while tempo_aux1<>1 do
                                                      begin
                                                           textcolor(14);
						           clrscr;
						           writeLn;
                                                           writeLn;
						           writeLn(' ... DEFINIR TEMPO:');
						           writeLn;
							   textcolor(14);
							   writeLn(' ... SEGUNDOS:');
							   textcolor(11);
							   write(' ... DIGITE OS SEGUNDOS PARTE 1 - ( 0 - 9 ): ');
							   textcolor(10);
                                                           Readln(tempo6);
							   textcolor(11);
							   write(' ... DIGITE OS SEGUNDOS PARTE 2 - ( 0 - 5 ): ');
							   textcolor(10);
                                                           Readln (tempo5);

                                                           if ((tempo6<10) and (tempo5<6)) then
                                                                      begin
                                                                        tempo_aux1 := 1;
                                                                      end;

                                                      end;

						      // "MINUTOS":
						      while tempo_aux2<>1 do
                                                            begin
                                                                 textcolor(14);
						                 clrscr;
						                 writeLn;
                                                                 writeLn;
						                 writeLn(' ... DEFINIR TEMPO:');
							         writeLn;
							         textcolor(14);
							         writeLn(' ... MINUTOS:');
							         textcolor(11);
							         write(' ... DIGITE OS MINUTOS PARTE 1 - ( 0 - 9 ): ');
							         textcolor(10);
                                                                 Readln (tempo4);
							         textcolor(11);
							         write(' ... DIGITE OS MINUTOS PARTE 2 - ( 0 - 5 ): ');
							         textcolor(10);
                                                                 Readln (tempo3);
							            if ((tempo4<10) and (tempo3<6)) then
                                                                       begin
                                                                         tempo_aux2 := 1;
                                                                       end;
                                                            end;

							    // "HORAS":
							    while tempo_aux3<>1 do
                                                                  begin
                                                                    textcolor(14);
						                    clrscr;
						                    writeLn;
                                                                    writeLn;
						                    writeLn(' ... DEFINIR TEMPO:');
							            writeLn;
							            textcolor(14);
							            writeLn(' ... HORAS:');
							            textcolor(11);
							            write(' ... DIGITE AS HORAS PARTE 1 - ( 0 - 9 ): ');
							            textcolor(10);
                                                                    Readln (tempo2);
							            if tempo2<10 then
                                                                       begin
                                                                          tempo_aux3 := 1;
                                                                       end;
                                                                    end;

                                            end;

                                            else
                                               textcolor(14);
                                               writeLn;
                                               writeLn;
                                               writeLn(' ... OCORREU UM ERRO!');
                                               writeLn(' ... POR FAVOR TENTE NOVAMENTE!');
                                               ReadKey;

                                            end;
                                            end;
                                            end;

                    // CASO "2" - TEMPORIZADOR:
                    2: begin

        	       repetir3 := 0;
                       tempo_aux1 := 0;
                       tempo_aux2 := 0;
                       tempo_aux3 := 0;

		       while repetir3<>1 do
                             begin
                                  clrscr;
			          writeLn;
                                  writeLn;
			          textcolor(12);
			          writeLn(' ... MENU - TEMPORIZADOR:');
			          textcolor(10);
			          writeLn(' ... TEMPO LIMITE: 10 ( DEZ ) HORAS');
			          writeLn;
			          textcolor(15);
			          writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
			          writeLn(' ... 1 - ACERTAR O TEMPO E INICIAR CONTAGEM.');
			          writeLn;
			          textcolor(11);
			          write(' ... DIGITE SUA RESPOSTA: ');
			          textcolor(10);
                                  Readln (escolha_usuario3);

                                  case escolha_usuario3 of
			          // CASO "0" - SAIR:
			          0: begin
                                          repetir3 := 1;
                                     end;

			          // CASO "1" - ACERTAR O TEMPO E INICIAR CONTAGEM:
			          1: begin
                                          textcolor(14);
					  clrscr;
					  writeLn;
                                          writeLn;
					  writeLn(' ... DEFINIR TEMPO:');

					  // "SEGUNDOS":
					  while tempo_aux1<>1 do
                                                begin
                                                  textcolor(14);
					          clrscr;
					          writeLn;
                                                  writeLn;
					          writeLn(' ... DEFINIR TEMPO:');
                                                   writeLn;
						   textcolor(14);
						   writeLn(' ... SEGUNDOS:');
						   textcolor(11);
						   write(' ... DIGITE OS SEGUNDOS PARTE 1 - ( 0 - 9 ): ');
						   textcolor(10);
                                                   Readln (tempo6);
						   textcolor(11);
						   write(' ... DIGITE OS SEGUNDOS PARTE 2 - ( 0 - 5 ): ');
						   textcolor(10);
                                                   Readln (tempo5);

                                                   if ((tempo6<10) and (tempo5<6)) then
                                                      begin
                                                           tempo_aux1 := 1;
                                                      end;

                                                end;

					  // "MINUTOS":
					  while tempo_aux2<>1 do
                                                begin
                                                     textcolor(14);
					             clrscr;
					             writeLn;
                                                     writeLn;
					             writeLn(' ... DEFINIR TEMPO:');
                                                     writeLn;
						     textcolor(14);
						     writeLn(' ... MINUTOS:');
						     textcolor(11);
						     write(' ... DIGITE OS MINUTOS PARTE 1 - ( 0 - 9 ): ');
						     textcolor(10);
                                                     Readln (tempo4);
						     textcolor(11);
						     write(' ... DIGITE OS MINUTOS PARTE 2 - ( 0 - 5 ): ');
						     textcolor(10);
                                                     Readln (tempo3);

						     if ((tempo4<10) and (tempo3<6)) then
                                                        begin
                                                             tempo_aux2 := 1;
                                                        end;

                                                        end;

					  // "HORAS":
					  while tempo_aux3<>1 do
                                                begin
                                                     textcolor(14);
					             clrscr;
					             writeLn;
                                                     writeLn;
					             writeLn(' ... DEFINIR TEMPO:');
                                                     writeLn;
						     textcolor(14);
						     writeLn(' ... HORAS:');
						     textcolor(11);
						     write(' ... DIGITE AS HORAS PARTE 1 - ( 0 - 9 ): ');
						     textcolor(10);
                                                     Readln (tempo2);

                                                     if tempo2<10 then
                                                        begin
                                                             tempo_aux3 := 1;
                                                        end;

                                                        end;

			                  writeLn;
					  aux1 := 0;
					  aux2 := 1;

					  while aux2<>3 do
                                                begin
                                                     textcolor(14);
						     clrscr;
						     writeLn;
                                                     writeLn;
                                                     writeLn;
						     writeLn(' ... CONTAGEM:');
                                                     writeLn;
						     textcolor(10);
						     writeLn(' ... TEMPORIZADOR - ', tempo2, 'h:', tempo3, tempo4, 'm:', tempo5, tempo6, 's');
						     tempo6 := tempo6-1;

					             // "SEGUNDOS":
					             if tempo6<0 then
                                                        begin
                                                             tempo6 := 9;
                                                             tempo5 := tempo5-1;
                                                        end;

					             if tempo5<0 then
                                                        begin
                                                             tempo5 := 5;
                                                             tempo4 := tempo4-1;
                                                        end;

					             // "MINUTOS":
					             if tempo4<0 then
                                                        begin
                                                             tempo4 := 9;
                                                             tempo3 := tempo3-1;
                                                        end;

					             if tempo3<0 then
                                                        begin
                                                             tempo3 := 5;
                                                             tempo2 := tempo2-1;
                                                        end;

					             // "HORAS":
					             if ((tempo2<1) and (tempo3<1) and (tempo4<1) and (tempo5<1) and (tempo6<1)) then
                                                        begin
					                     tempo2 := 1;
					                     tempo3 := 0;
					                     tempo4 := 0;
					                     tempo5 := 5;
					                     tempo6 := 9;

                                                             writeLn;
                                                             writeLn;
                                                             writeLn;
                                                             textcolor(13);
                                                             writeLn(' ... TEMPO LIMITE ATINGIDO!');
                                                             ReadKey;
                                                             break;

                                                        end;

                                                     Delay(1000);

                                                end;

                                     end;

                                     else
                                         textcolor(14);
                                         writeLn;
                                         writeLn;
                                         writeLn(' ... OCORREU UM ERRO!');
                                         writeLn(' ... POR FAVOR TENTE NOVAMENTE!');
                                         ReadKey;

                             end;

                             end;
                       end;

                       else
                         textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... OCORREU UM ERRO!');
                         writeLn(' ... POR FAVOR TENTE NOVAMENTE!');
                         ReadKey;

                       end;

                       end;

end.





