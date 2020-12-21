


        // [" CRIADOR: LUIZ ÂNGELO MARTINS "]:

	//DESCRIÇÃO:

	//PROJETO DE SISTEMA DE ESTACIONAMENTO QUE CONSISTE EM:
        //CALCULAR O TEMPO E O TOTAL A PAGAR PARA MOTOS,
        // CALCULAR O TEMPO E O TOTAL A PAGAR PARA CARROS.

	// COMPILADOR USADO:
	// LAZARUS IDE



// IDENTIFICAÇÃO DO PROGRAMA:
program Project1;
uses crt, math;

// DECLARAÇÃO DE VARIAVEIS:
var
   repetir : integer;
   escolha_usuario : integer;
   aux1 : real;
   valor_hora : real;
   hora_inicial : real;
   hora_final : real;
   hora_resultado1 : real;
   hora_resultado2 : real;


begin

     // "INICIALIZANDO VARIAVEIS":
     repetir := 0;
     escolha_usuario := 0;
     aux1 := 0;
     valor_hora := 0;
     hora_inicial := 0;
     hora_final := 0;
     hora_resultado1 := 0;
     hora_resultado2 := 0;

     while repetir<>1 do
        begin

            repetir := 0;
	    escolha_usuario := 0;
	    aux1 := 0;
	    valor_hora := 0;
	    hora_inicial := 0;
	    hora_final := 0;
	    hora_resultado1 := 0;
	    hora_resultado2 := 0;

            clrscr;
            writeLn;
            writeLn;
            textcolor(12);
            writeLn(' ... MENU GERAL - CALCULOS:');
            textcolor(15);
            writeLn;
            writeLn(' ... 0 - SAIR.');
            writeLn(' ... 1 - CARRO.');
            writeLn(' ... 2 - MOTO.');
            writeLn;
            textcolor(11);
            write(' ... DIGITE SUA RESPOSTA: ');
            textcolor(10);
            Readln (escolha_usuario);

            case escolha_usuario of
            // CASO "0" - SAIR:
            0: begin
                    repetir := 1;
               end;

            // CASO "1" - CARRO:
            1: begin
               // ORIENTAÇÃO:
	       clrscr;
	       writeLn;
               writeLn;
               writeLn;
	       textcolor(12);
	       writeLn(' ... CALCULO DO TEMPO - CARRO:');
	       textcolor(10);
	       writeLn(' ... OBS: SEPARE OS VALORES COM PONTO');

	       // VALOR DA HORA:
	       writeLn;
               writeLn;
	       textcolor(11);
	       write(' ... DIGITE O VALOR DA HORA: ');
	       textcolor(10);
               Readln (valor_hora);

	       // HORARIO DE ENTRADA:
	       textcolor(11);
	       write(' ... DIGITE O HORARIO DE ENTRADA: ');
	       textcolor(10);
               Readln (hora_inicial);

	       // HORARIO DE SAÍDA:
	       textcolor(11);
	       write(' ... DIGITE O HORARIO DE SAIDA: ');
	       textcolor(10);
               Readln (hora_final);

               // "ARREDONDANDO VALORES":
               valor_hora := Round(valor_hora);
               hora_inicial := Round(hora_inicial);
               hora_final := Round(hora_final);

               TextColor(13);
               writeLn;
               writeLn(' ... HORA - ', valor_hora:3:2);
               writeLn(' ... ENTRADA - ', hora_inicial:3:2);
               writeLn(' ... SAIDA - ', hora_final:3:2);

	       // CALCULO:
	       hora_resultado1 := (hora_final-hora_inicial);
	       hora_resultado2 := (hora_resultado1*valor_hora);
	       aux1 := (hora_resultado2);

	       // EXIBIÇÃO:
	       writeLn;
	       textcolor(10);
	       writeLn(' ... TOTAL DE HORAS: ', hora_resultado1:3:2);
	       writeLn(' ... VALOR BRUTO: ', aux1:3:2);
	       textcolor(14);
	       writeLn(' ... TOTAL A PAGAR: ', hora_resultado2:3:2);
	       writeLn;
               writeLn;
	       textcolor(15);
	       writeLn;
	       ReadKey;

               end;

            // CASO "2" - MOTO:
            2: begin
               // ORIENTAÇÃO:
	       clrscr;
	       writeLn;
               writeLn;
               writeLn;
	       textcolor(12);
	       writeLn(' ... CALCULO DO TEMPO - MOTO:');
	       textcolor(10);
	       writeLn(' ... OBS: SEPARE OS VALORES COM PONTO');

	       // VALOR DA HORA:
	       writeLn;
               writeLn;
	       textcolor(11);
	       write(' ... DIGITE O VALOR DA HORA: ');
	       textcolor(10);
               Readln (valor_hora);

	       // HORARIO DE ENTRADA:
	       textcolor(11);
	       write(' ... DIGITE O HORARIO DE ENTRADA: ');
	       textcolor(10);
               Readln (hora_inicial);

	       // HORARIO DE SAÍDA:
	       textcolor(11);
	       write(' ... DIGITE O HORARIO DE SAIDA: ');
	       textcolor(10);
               Readln (hora_final);

               // "ARREDONDANDO VALORES":
               valor_hora := Round(valor_hora);
               hora_inicial := Round(hora_inicial);
               hora_final := Round(hora_final);

               TextColor(13);
               writeLn;
               writeLn(' ... HORA - ', valor_hora:3:2);
               writeLn(' ... ENTRADA - ', hora_inicial:3:2);
               writeLn(' ... SAIDA - ', hora_final:3:2);

	       // CALCULO:
	       hora_resultado1 := (hora_final-hora_inicial);
	       hora_resultado2 := (hora_resultado1*valor_hora);
	       aux1 := (hora_resultado2);

	       // EXIBIÇÃO:
	       writeLn;
	       textcolor(10);
	       writeLn(' ... TOTAL DE HORAS: ', hora_resultado1:3:2);
	       writeLn(' ... VALOR BRUTO: ', aux1:3:2);
	       textcolor(14);
	       writeLn(' ... TOTAL A PAGAR: ', hora_resultado2:3:2);
	       writeLn;
               writeLn;
	       textcolor(15);
	       writeLn;
	       ReadKey;

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





