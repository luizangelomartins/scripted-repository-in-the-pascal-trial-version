


        // [" CRIADOR: LUIZ ÂNGELO MARTINS "]:

	// DESCRIÇÃO:
	// PROJETO DE CALCULOS QUE CONSISTE EM:

	// DIVISÃO,
	// MULTIPLICAÇÃO,
	// POTÊNCIAÇÃO,
	// RADICIAÇÃO,
	// SOMA,
	// SUBTRAÇÃO.

	// COMPILADOR USADO:
	// LAZARUS IDE



// IDENTIFICAÇÃO DO PROGRAMA:
program Project1;
uses crt, math;

// DECLARAÇÃO DE VARIAVEIS:
var
   repetir : integer;
   escolha_usuario : integer;
   repetir_conta : integer;
   escolha_conta : integer;
   val1 : real;
   val2 : real;


begin

     // "INICIALIZANDO VARIAVEIS":
     repetir := 1;
     escolha_usuario := 0;
     repetir_conta := 1;
     escolha_conta := 0;
     val1 := 0.0;
     val2 := 0.0;

     while repetir<>0 do
        begin
             repetir := 1;
	     escolha_usuario := 0;
	     repetir_conta := 1;
	     escolha_conta := 0;
	     val1 := 0;
	     val2 := 0;

            // EXIBIÇÃO DO MENU:
            clrscr;
            writeLn;
            writeLn;
            textcolor(12);
            writeLn(' ... CALCULADORA SIMPLES:');
            writeLn(' ... MENU PRINCIPAL:');
            textcolor(15);
            writeLn;
            writeLn(' ... 0 - SAIR.');
            writeLn(' ... 1 - SOMAR.');
            writeLn(' ... 2 - SUBTRAIR.');
            writeLn(' ... 3 - MULTIPLICAR.');
            writeLn(' ... 4 - DIVIDIR.');
            writeLn(' ... 5 - RAIZ QUADRADA.');
            writeLn(' ... 6 - POTENCIACAO');
            writeLn;
            textcolor(11);
            write(' ... DIGITE SUA RESPOSTA: ');
            textcolor(10);
            ReadLn (escolha_usuario);

            case escolha_usuario of
            // CASO "0" - SAIR:
            0: begin
                    repetir := 0;
               end;

            // CASO "1" - SOMAR:
            1: begin
                    repetir_conta := 1;
		    val1 := 0;
		    val2 := 0;

		    while repetir_conta<>0 do
                          begin
                               clrscr;
		               writeLn;
                               writeLn;
		               textcolor(10);
		               writeLn(' ... MENU - SOMAR:');
                               writeLn;
                               writeLn;
		               textcolor(15);
		               writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
		               writeLn(' ... 1 - ADICIONAR VALOR INICIAL.');
		               writeLn(' ... 2 - SOMAR VALORES');
		               textcolor(14);
		               writeLn(' ... | TOTAL DA SOMA: ', val2:3:2);
		               writeLn;
                               writeLn;
		               textcolor(11);
		               write(' ... DIGITE SUA RESPOSTA: ');
		               textcolor(10);
                               ReadLn (escolha_conta);

                               case escolha_conta of
		               // CASO "0" - VOLTAR AO MENU PRINCIPAL:
		               0: begin
                                       val1 := 0;
			               val2 := 0;
		                       repetir_conta := 0;
                                  end;

		               // CASO "1" - ADICIONAR VALOR INICIAL:
		               1: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR INICIAL PARA SOMA: ');
		                       textcolor(10);
                                       ReadLn (val2);
                                  end;

		               // CASO "2" - ADICIONAR VALORES | [ SOMAR ]:
		               2: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR PARA ADICAO: ');
		                       textcolor(10);
                                       ReadLn (val1);
		                       val2 := (val2+val1);
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

            // CASO "2" - SUBTRAIR:
            2: begin
                    repetir_conta := 1;
		    val1 := 0;
		    val2 := 0;

		    while repetir_conta<>0 do
                          begin
                               clrscr;
		               writeLn;
                               writeLn;
		               textcolor(10);
		               writeLn(' ... MENU - SUBTRAIR:');
                               writeLn;
                               writeLn;
		               textcolor(15);
		               writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
		               writeLn(' ... 1 - ADICIONAR VALOR INICIAL.');
		               writeLn(' ... 2 - SUBTRAIR VALORES');
		               textcolor(14);
		               writeLn(' ... | TOTAL DA SUBTRACAO: ', val2:3:2);
		               writeLn;
                               writeLn;
		               textcolor(11);
		               write(' ... DIGITE SUA RESPOSTA: ');
		               textcolor(10);
                               ReadLn (escolha_conta);

                               case escolha_conta of
		               // CASO "0" - VOLTAR AO MENU PRINCIPAL:
		               0: begin
                                       val1 := 0;
			               val2 := 0;
		                       repetir_conta := 0;
                                  end;

		               // CASO "1" - ADICIONAR VALOR INICIAL:
		               1: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR INICIAL PARA SUBTRACAO: ');
		                       textcolor(10);
                                       ReadLn (val2);
                                  end;

		               // CASO "2" - ADICIONAR VALORES | [ SUBTRACAO ]:
		               2: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR PARA SUBTRACAO: ');
		                       textcolor(10);
                                       ReadLn (val1);
		                       val2 := (val2-val1);
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

            // CASO "3" - MULTIPLICAR:
            3: begin
                    repetir_conta := 1;
		    val1 := 0;
		    val2 := 0;

		    while repetir_conta<>0 do
                          begin
                               clrscr;
		               writeLn;
                               writeLn;
		               textcolor(10);
		               writeLn(' ... MENU - MULTIPLICAR:');
                               writeLn;
                               writeLn;
		               textcolor(15);
		               writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
		               writeLn(' ... 1 - ADICIONAR VALOR INICIAL.');
		               writeLn(' ... 2 - MULTIPLICAR VALORES');
		               textcolor(14);
		               writeLn(' ... | TOTAL DA MULTIPLICACAO: ', val2:3:2);
		               writeLn;
                               writeLn;
		               textcolor(11);
		               write(' ... DIGITE SUA RESPOSTA: ');
		               textcolor(10);
                               ReadLn (escolha_conta);

                               case escolha_conta of
		               // CASO "0" - VOLTAR AO MENU PRINCIPAL:
		               0: begin
                                       val1 := 0;
			               val2 := 0;
		                       repetir_conta := 0;
                                  end;

		               // CASO "1" - ADICIONAR VALOR INICIAL:
		               1: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR INICIAL PARA MULTIPLICACAO: ');
		                       textcolor(10);
                                       ReadLn (val2);
                                  end;

		               // CASO "2" - ADICIONAR VALORES | [ MULTIPLICACAO ]:
		               2: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR PARA MULTIPLICACAO: ');
		                       textcolor(10);
                                       ReadLn (val1);
		                       val2 := (val2*val1);
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

            // CASO "4" - DIVIDIR:
            4: begin
                    repetir_conta := 1;
		    val1 := 0;
		    val2 := 0;

		    while repetir_conta<>0 do
                          begin
                               clrscr;
		               writeLn;
                               writeLn;
		               textcolor(10);
		               writeLn(' ... MENU - DIVIDIR:');
                               writeLn;
                               writeLn;
		               textcolor(15);
		               writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
		               writeLn(' ... 1 - ADICIONAR VALOR INICIAL.');
		               writeLn(' ... 2 - DIVIDIR VALORES');
		               textcolor(14);
		               writeLn(' ... | TOTAL DA DIVISAO: ', val2:3:2);
		               writeLn;
                               writeLn;
		               textcolor(11);
		               write(' ... DIGITE SUA RESPOSTA: ');
		               textcolor(10);
                               ReadLn (escolha_conta);

                               case escolha_conta of
		               // CASO "0" - VOLTAR AO MENU PRINCIPAL:
		               0: begin
                                       val1 := 0;
			               val2 := 0;
		                       repetir_conta := 0;
                                  end;

		               // CASO "1" - ADICIONAR VALOR INICIAL:
		               1: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR INICIAL PARA DIVISAO: ');
		                       textcolor(10);
                                       ReadLn (val2);
                                  end;

		               // CASO "2" - ADICIONAR VALORES | [ DIVISAO ]:
		               2: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR PARA DIVISAO: ');
		                       textcolor(10);
                                       ReadLn (val1);
		                       val2 := (val2/val1);
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

            // CASO "5" - RAIZ QUADRADA:
            5: begin
                    repetir_conta := 1;
		    val1 := 0;
		    val2 := 0;

		    while repetir_conta<>0 do
                          begin
                               clrscr;
		               writeLn;
                               writeLn;
		               textcolor(10);
		               writeLn(' ... MENU - RAIZ QUADRADA:');
                               writeLn;
                               writeLn;
		               textcolor(15);
		               writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
		               writeLn(' ... 1 - ADICIONAR VALOR INICIAL.');
		               writeLn(' ... 2 - CALCULAR RAIZ');
		               textcolor(14);
		               writeLn(' ... | TOTAL DA RADICIACAO: ', val2:3:2);
		               writeLn;
                               writeLn;
		               textcolor(11);
		               write(' ... DIGITE SUA RESPOSTA: ');
		               textcolor(10);
                               ReadLn (escolha_conta);

                               case escolha_conta of
		               // CASO "0" - VOLTAR AO MENU PRINCIPAL:
		               0: begin
                                       val1 := 0;
			               val2 := 0;
		                       repetir_conta := 0;
                                  end;

		               // CASO "1" - ADICIONAR VALOR INICIAL:
		               1: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR PARA O CALCULO DA RAIZ: ');
		                       textcolor(10);
                                       ReadLn (val2);
                                  end;

		               // CASO "2" - ADICIONAR VALORES | [ CALCULO DA RAIZ ]:
		               2: begin
                                       val2 := sqrt(val2);
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

            // CASO "6" - POTÊNCIAÇÃO:
            6: begin
                    repetir_conta := 1;
		    val1 := 0;
		    val2 := 0;

		    while repetir_conta<>0 do
                          begin
                               clrscr;
		               writeLn;
                               writeLn;
		               textcolor(10);
		               writeLn(' ... MENU - POTENCIACAO:');
                               writeLn;
                               writeLn;
		               textcolor(15);
		               writeLn(' ... 0 - VOLTAR AO MENU PRINCIPAL.');
		               writeLn(' ... 1 - ADICIONAR VALOR INICIAL.');
		               writeLn(' ... 2 - CALCULAR POTENCIA');
		               textcolor(14);
		               writeLn(' ... | TOTAL DA POTENCIACAO: ', val2:3:2);
		               writeLn;
                               writeLn;
		               textcolor(11);
		               write(' ... DIGITE SUA RESPOSTA: ');
		               textcolor(10);
                               ReadLn (escolha_conta);

                               case escolha_conta of
		               // CASO "0" - VOLTAR AO MENU PRINCIPAL:
		               0: begin
                                       val1 := 0;
			               val2 := 0;
		                       repetir_conta := 0;
                                  end;

		               // CASO "1" - ADICIONAR VALOR INICIAL:
		               1: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR PARA O CALCULO DA POTENCIA: ');
		                       textcolor(10);
                                       ReadLn (val2);
                                  end;

		               // CASO "2" - ADICIONAR VALORES | [ CALCULO DA POTENCIA ]:
		               2: begin
                                       writeLn;
		                       textcolor(11);
		                       write(' ... DIGITE O VALOR DO EXPOENTE: ');
		                       textcolor(10);
                                       ReadLn (val1);
                                       val2 := exp(val1*ln(val2));
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

