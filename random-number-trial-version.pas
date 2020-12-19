


        // [" CRIADOR: LUIZ ÂNGELO MARTINS "]:

	// DESCRIÇÃO:
		//PROGRAMA SIMPLES PARA GERAR NÚMEROS ALEATÓRIOS.

	// COMPILADOR USADO:
		// LAZARUS IDE


// IDENTIFICAÇÃO DO PROGRAMA:
program project1;
uses crt, sysutils;

var
   aux0 : integer;
   aux1 : integer;
   aux2 : integer;
   aux3 : integer;
   valor1 : integer;
   valor2 : integer;
   escolha : integer;
   repetir : integer;
   repetidor1 : integer;
   repetidor2 : integer;
   vetor_numero : array[1..15] of integer;

// INICIO DO PROGRAMA:
begin

     // "INICIALIZANDO VARIAVEIS":
     aux0 := 0;
     aux1 := 0;
     aux2 := 0;
     aux3 := 0;
     valor1 := 0;
     valor2 := 0;
     escolha := 0;
     repetir := 1;
     repetidor1 := 0;
     repetidor2 := 0;

     while repetir <> 0 do
        begin

	       // "ZERANDO VALORES":
               aux1 := 0;
	       valor1 := 0;
	       valor2 := 0;
	       escolha := 0;
	       repetir := 1;
	       repetidor1 := 0;
    	       repetidor2 := 0;

               // EXIBIÇÃO/CONSTRUÇÃO DO MENU:
               clrscr;
               aux1 := 0;
               writeLn;
               writeLn;
               writeLn;
               TextColor(12);
               writeLn(' ... GERADOR DE NUMEROS ALEATORIOS:');
               writeLn;
               TextColor(15);
               writeLn(' ... 0 - SAIR.');
               writeLn(' ... 1 - GERAR NUMERO(S) ALEATORIO(S).');
               writeLn;
               TextColor(11);
               write(' ... DIGITE SUA RESPOSTA: ');
               TextColor(10);
               ReadLn (escolha);


              // "FILTRAGEM DA ESCOLHA DO USUARIO":
              // CASO "0" - SAIR:
              case escolha of
              0: begin
	         repetir := escolha;
              end;

              // CASO "1" - GERAR NÚMERO(S) ALEATÓRIO(S):
              1: begin
                   while aux1<>1 do
                         begin
                              clrscr;
                              writeLn;
                              writeLn;
                              writeLn;
                              TextColor(12);
                              writeLn(' ... ENTRADA DE DADOS:');
                              writeLn;
                              writeLn;
                              TextColor(11);
                              write(' ... DESEJA GERAR QUANTOS NUMEROS ?: 0 - 9: ');
                              TextColor(10);
                              Readln (valor1);
                              TextColor(11);
                              write(' ... DESEJA GERAR NUMEROS ENTRE QUAL INTERVALO ?: 0 - ');
                              TextColor(10);
                              Readln (valor2);

                              if (valor1 < 10) then
		                 aux1 := 1;

                              end;

			         writeLn;

			         // GERANDO O VETOR:
                                 randomize;
			         while repetidor1<>valor1 do
                                        begin
                                             vetor_numero[repetidor1] := random(valor2);
					     repetidor1 := repetidor1+1;
                                        end;

			         // ORDENANDO O VETOR:
                                 for aux3 := 0 to valor1 do
                                     begin
                                          for aux2 := 0 to valor1 do
                                              begin
                                                   if vetor_numero[aux3] < vetor_numero[aux2] then
                                                      begin
                                                           aux0 := vetor_numero[aux3];
                                                           vetor_numero[aux3] := vetor_numero[aux2];
                                                           vetor_numero[aux2] := aux0;
                                                      end;
                                              end;
                                     end;

                                  clrscr;
                                  writeLn;
                                  writeLn;
                                  writeLn;
                                  TextColor(12);
                                  writeLn(' ... NUMEROS GERADOS:');
                                  writeLn;
                                  TextColor(13);
				  writeLn(' ... QUANTIA - ', valor1);
                        	  writeLn(' ... INTERVALO - ', valor2);
                        	  writeLn;

				  // EXIBINDO OS VALORES:
				  while repetidor2 <> valor1 do
                                         begin
                                              TextColor(14);
					      writeLn(' ... ALEATORIO - ', ( repetidor2 + 1 ), ' - ', vetor_numero[repetidor2] );
					      repetidor2 := repetidor2+1;
				         end;

                                  TextColor(10);
                                  writeLn;
				  writeLn(' ... NUMEROS GERADOS COM SUCESSO!');
				  writeLn;
                                  ReadKey;

                   end;

               end;

        end;

end.





