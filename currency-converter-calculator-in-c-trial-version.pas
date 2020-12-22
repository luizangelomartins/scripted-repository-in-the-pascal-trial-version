


        // [" CRIADOR: LUIZ ÂNGELO MARTINS "]:

	// DESCRIÇÃO:
	// PROGRAMA QUE VISA CONVERTER OS VALORES DAS PRINCIPAIS MOEDAS DO MUNDO:
	// Real,
	// Dólar Americano,
	// Dólar Australiano,
	// Dólar Canadense,
	// Euro,
	// Franco Suíço,
	// Iene,
	// Libra esterlina,
	// Lira Turca,
	// Peso Argentino,
	// Renmimbi.

	// COMPILADOR USADO:
	// LAZARUS IDE


// IDENTIFICAÇÃO DO PROGRAMA:
program Project1;
uses crt, sysutils, math;

// DECLARAÇÃO DE VARIAVEIS:
var
   repetir : integer;
   escolha1 : integer;
   nome : String[20];
   valor_moeda : real;
   quantia_moeda : real;
   resultado : real;


// INICIO DO PROGRAMA:
begin

     // "INICIALIZANDO VARIAVEIS":
     repetir := 0;
     escolha1 := 0;
     nome := '';
     valor_moeda := 0.0;
     quantia_moeda := 0.0;
     resultado := 0.0;

     while repetir<>1 do
            begin
                 nome := '';
                 clrscr;
                 writeLn;
                 writeLn;
                 textcolor(12);
                 writeLn(' ... MENU GERAL - CONVERSOR:');
                 writeLn;
                 textcolor(14);
                 writeLn(' ... 0 - SAIR.');
                 textcolor(15);
	         writeLn(' ... 1 - REAL.');
	         writeLn(' ... 2 - EURO.');
	         writeLn(' ... 3 - IENE.');
	         writeLn(' ... 4 - DOLAR AMERICANO.');
	         writeLn(' ... 5 - DOLAR AUSTRALIANO.');
	         writeLn(' ... 6 - DOLAR CANADENSE.');
	         writeLn(' ... 7 - FRANCO SUICO.');
	         writeLn(' ... 8 - LIBRA ESTERLINA.');
	         writeLn(' ... 9 - LIRA TURCA.');
	         writeLn(' ... 10 - PESO ARGENTINO.');
	         writeLn(' ... 11 - RENMIMBI');
                 writeLn;
                 textcolor(11);
                 write(' ... DIGITE SUA RESPOSTA: ');
                 textcolor(10);
                 ReadLn (escolha1);

                 // "FILTRAGEM DA ESCOLHA DO USUARIO":
                 // CASO "0" - SAIR:
                 case escolha1 of
                 0: begin
                      repetir := 1;
                    end;

                 // CASO "1" - REAL:
                 // INICIO:
                 1: begin
                         clrscr;
                         nome := 'REAL';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "2" - EURO:
                 // INICIO:
                 2: begin
                         clrscr;
                         nome := 'EURO';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "3" - IENE:
                 // INICIO:
                 3: begin
                         clrscr;
                         nome := 'IENE';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "4" - DÓLAR AMERICANO:
                 // INICIO:
                 4: begin
                         clrscr;
                         nome := 'DOLAR AMERICANO';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "5" - DÓLAR AUSTRALIANO:
                 // INICIO:
                 5: begin
                         clrscr;
                         nome := 'DOLAR AUSTRALIANO';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "6" - DÓLAR CANADENSE:
                 // INICIO:
                 6: begin
                         clrscr;
                         nome := 'DOLAR CANADENSE';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "7" - FRANCO SUÍÇO:
                 // INICIO:
                 7: begin
                         clrscr;
                         nome := 'FRANCO SUICO';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "8" - LIBRA ESTERLINA:
                 // INICIO:
                 8: begin
                         clrscr;
                         nome := 'LIBRA ESTERLINA';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "9" - LIRA TURCA:
                 // INICIO:
                 9: begin
                         clrscr;
                         nome := 'LIRA TURCA';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "10" - PESO ARGENTINO:
                 // INICIO:
                 10: begin
                         clrscr;
                         nome := 'PESO ARGENTINO';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                 // CASO "11" - RENMIMBI:
                 // INICIO:
                 11: begin
                         clrscr;
                         nome := 'RENMIMBI';
			 writeLn;
                         writeLn;
                         writeLn;
            		 textcolor(12);
            		 writeLn(' ... MENU GERAL - ', nome);
                         writeLn;
                         writeLn;
			 textcolor(11);
			 writeLn(' ... DIGITE O VALOR UNITARIO ATUAL DE(A) ', nome, ' (S)');
                         write(' ... EM RELACAO A MOEDA DE INTERESSE: ');
			 textcolor(10);
                         ReadLn (valor_moeda);
                         //valor_moeda := Round(valor_moeda);
			 textcolor(11);
                         writeLn;
			 write(' ... DIGITE A QUANTIA DE(A) ', nome, ' (S) EM POSSE: ');
			 textcolor(10);
                         ReadLn (quantia_moeda);
                         //quantia_moeda := Round(quantia_moeda);
			 resultado := (valor_moeda*quantia_moeda);
			 textcolor(14);
                         writeLn;
                         writeLn;
                         writeLn(' ... VOCE TEM: ', resultado:3:2, ' DA MOEDA INTERESSADA EM POSSE.');
                         ReadKey;

                    end; // TÉRMINO!

                    else
                        textcolor(14);
                        writeLn;
                        writeLn(' ... OCORREU UM ERRO!');
                        writeLn(' ... POR FAVOR TENTE NOVAMENTE!');
                        ReadKey;

                 end;
                 end;

end.





