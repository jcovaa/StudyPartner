Program StudyPartner  ;


var
//menu
language, app: char;
//calculator
appcalc: char;
//adicao
c5: char;
i2, n: integer;
soma, num: real;
//subtracao
c8: char;
number1,number2,subtracao: real;
//multiplicacao
c9: char;
n1,n2,produto: real;
//divisao
c10: char;
quociente,numb1,numb2: real;
//2nd degree equation
a,b,c: integer;
delta: real;
x,x1,x2: real;
c1: char;
//tabuada
tabuada, i: integer;
c2: char;
//trigonometria
graus, graus_rad, tan: real;
c4: char;
//tabela periodica
c11,c19,c24: char;
atom: integer;
//sobre
c3: char;
//apontamentos
nota1,nota2,nota3: string;
c6,c7: char;
//constantes fisicas fundamentais
c12,c13: char;
//formulario
c14,c15,c16,c17,c18: char; 
//cronometro
tempo1: integer;
c20,c22: char;
//relogio
hora, minuto, segundo, msegundo: integer ;
dia, mes, ano, diaSemana: integer ;
//temporizador
tempo: integer;
c21: char;
//jogo
y, num1, num2, num3, num4: integer;
resp1, resp2, resp3: char;
c23: char;


Begin
  
  //aplicação notas
  nota1 := '(vazio)';
  nota2 := '(vazio)';
  nota3 := '(vazio)';
  //ultimasubtraçao
  subtracao := 0;
  //ultimamultiplicação
  produto := 0;
  
  
  //#27 é a tecla 'esc'
  //#13 é a tecla enter
  
  //cor ecrã linguagem
  textcolor (0);
  textbackground (7);
  clrscr;
  //ecrã linguagem
  Repeat
    Writeln (' ');
    Writeln (' ');
    textbackground (1);
    Writeln ('                                                                                  ');
    Writeln ('                                STUDYPARTNER                                      ');
    Writeln ('                                                                                  ');
    textbackground (7);
    Writeln (' ');
    Writeln (' ');
    Writeln ('ESCOLHA A LINGUAGEM');
    Writeln ('[1] Português');
    Writeln ('[2] English');
    Writeln ('[3] Deutsch');
    Writeln (' ');
    language:= readkey;
    clrscr;
    Case language of
      //português
      '1': begin
        Repeat
          clrscr;
          Writeln (' ');
          Writeln (' ');
          textbackground (1);
          Writeln ('                                                                                  ');
          Writeln ('                                STUDYPARTNER                                      ');
          Writeln ('                                                                                  ');
          textbackground (7);
          Writeln (' ');
          Writeln (' ');
          textbackground (1);
          Writeln ('           MENU PRINCIPAL            ');
          textbackground (7);
          Writeln ('');
          Writeln ('[1] Calculadora');
          Writeln ('[2] Tabela periódica');
          Writeln ('[3] Constantes físicas fundamentais');
          Writeln ('[4] Fórmulas');
          Writeln ('[5] Apontamentos');
          Writeln ('[6] Relógio');
          Writeln ('[7] Para descontrair');
          Writeln ('[8] Sobre');
          Writeln ('[ESC] Sair');
          Writeln (' ');
          app:= readkey;
          //escolha aplicaçao
          Case app of
            //calculadora
            '1': begin
              Repeat
                clrscr;
                Writeln (' ');
                Writeln (' ');
                textbackground (6);
                Writeln ('                                                                                  ');
                Writeln ('                                  CALCULADORA                                     ');
                Writeln ('                                                                                  ');
                textbackground (7);
                Writeln (' ');
                Writeln (' ');
                Writeln ('[1] Adiçao');
                Writeln ('[2] Subtracao');
                Writeln ('[3] Multiplicaçao');
                Writeln ('[4] Divisao');
                Writeln ('[5] Resolver equaçao do segundo grau');
                Writeln ('[6] Tabuada');
                Writeln ('[7] Trigonometria');
                Writeln ('[ESC] Voltar');
                Writeln (' ');
                appcalc:= readkey;
                Case appcalc of  
                  '1': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                    ADIÇAO                                        ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('Resultado última adiçao = ',soma:0:2);
                      Writeln ('');
                      Write ('Quantos números participam na soma? ');
                      Readln (n);
                      Writeln ('');
                      soma:= 0;
                      For i2:=1 to n do
                      begin
                        Write ('num',i2,' = ');
                        Readln (num);
                        soma := soma + num;
                      end;
                      Writeln ('');
                      Writeln ('Resultado = ',soma:0:2);
                      Writeln ('');
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c5:= readkey;
                    Until c5=#27
                  end;
                  '2': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                    SUBTRACAO                                     ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('Resultado última subtraçao = ',subtracao:0:2);
                      Writeln ('');
                      Write ('num1 = ');
                      Readln (number1);
                      Write ('num2 = ');
                      Readln (number2);
                      Writeln ('');
                      subtracao := number1-number2;
                      Writeln (number1:0:2,'-',number2:0:2,'=',subtracao:0:2);
                      Writeln ('');
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c8:= readkey;
                    Until (c8=#27)
                  end;
                  '3': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                  MULTIPLICAÇAO                                   ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('Resultado última multiplicaçao = ',produto:0:2);
                      Writeln ('');
                      Write ('num1 = ');
                      Read (n1);
                      Write ('num2 = ');
                      Readln (n2);
                      Writeln ('');
                      produto := n1*n2;
                      Writeln (n1:0:2,'x',n2:0:2,'=',produto:0:2);
                      Writeln ('');
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c9:= readkey;
                    Until (c9=#27)
                  end;
                  '4': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                     DIVISAO                                      ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('Resultado última divisao = ',quociente:0:2);
                      Writeln ('');
                      Write ('num1 = ');
                      Read (numb1);
                      Write ('num2 = ');
                      Read (numb2);
                      quociente := numb1/numb2;
                      Writeln (numb1:0:2,'/',numb2:0:2,'=',quociente:0:2);
                      Writeln ('');
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c10:= readkey;
                    Until c10=#27
                  end;
                  '5': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                       RESOLVER EQUAÇAO DO SEGUNDO GRAU                           ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Write ('a=');
                      Read (a);
                      Write ('b=');
                      Read (b);
                      Write ('c=');
                      Read (c);
                      Writeln (' ');
                      delta:=(b*b-4*a*c);
                      Writeln (a,'X^2+(',b,')X+(',c,')=0');
                      Writeln (' ');
                      Writeln ('delta=',delta:0:0);
                      If (delta<0) then begin
                        Writeln (' ');
                        Writeln ('Equaçao impossível');
                        Writeln ('Nao existem raízes reais');
                        Writeln (' ');
                      end;
                      If (delta=0) then begin
                        x:=(-b/(2*a));
                        Writeln (' ');
                        Writeln ('x=',x:0:2,' (x2)');
                        Writeln (' ');
                      end;
                      If (delta>0) then begin
                        x1:=(-b-sqrt(delta))/(2*a);
                        x2:=(-b+sqrt(delta))/(2*a);
                        Writeln (' ');
                        Writeln ('x1=',x1:0:2);
                        Writeln ('x2=',x2:0:2);
                        Writeln (' ');
                      end;
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c1:= readkey;
                    Until (c1= #27);
                  end;
                  '6': begin
                    Repeat
                      clrscr;
                      Writeln ('');
                      Writeln ('');
                      Textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                   TABUADA                                        ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('');
                      Write ('Tabuada de que número? ');
                      Readln (tabuada);
                      Writeln ('');
                      textbackground (6);
                      Writeln ('      TABUADA DO ',tabuada,'       ');
                      textbackground (7);
                      Writeln ('');
                      For i:=1 to 10 do
                      Begin
                        Writeln (tabuada,'x',i,'=',tabuada*i);
                      end;
                      Writeln ('');
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c2:= readkey;
                    Until (c2=#27)
                  end;
                  '7': begin
                    Repeat
                      clrscr;
                      clrscr;
                      Writeln ('');
                      Writeln ('');
                      Textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                 TRIGONOMETRIA                                    ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('');
                      Write ('ângulo (graus) = ');
                      Readln (graus);
                      Writeln ('');
                      graus_rad := graus*(3.14159/180);
                      Writeln ('sen (',graus:0:0,') = ',sin(graus_rad):0:2);
                      Writeln ('cos (',graus:0:0,') = ',cos(graus_rad):0:2);
                      If (graus=90) or (graus=270) then begin
                        Writeln ('tan (',graus:0:0,') = [Nao existe]');
                      end
                      Else
                      begin
                        tan := sin(graus_rad)/cos(graus_rad);
                        Writeln ('tan (',graus:0:0,') = ',tan:0:2);
                      end;
                      Writeln ('');
                      Writeln ('[ENTER] Repetir');
                      Writeln ('[ESC] Voltar');
                      c4:= readkey;
                    Until (c4=#27)
                  end;
                End;
              Until (appcalc=#27);
            end;
            //tabela periodica
            '2': begin
              Repeat
                clrscr;
                Writeln (' ');
                Writeln (' ');
                textbackground (2);
                Writeln ('                                                                                  ');
                Writeln ('                                TABELA PERIODICA                                  ');
                Writeln ('                                                                                  ');
                textbackground (7);
                Writeln (' ');
                Writeln (' ');
                textbackground (2);
                Writeln ('         PROCURAR ELEMENTO          ');
                textbackground (7);
                Writeln ('');
                Write ('Indique o número atómico: ');
                Readln (atom);
                Case atom of
                  1: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('            HIDROGÉNIO            ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('1 H');
                      Writeln ('Nao-metal');
                      Writeln ('Massa atómica relativa : 1.01');
                      Writeln ('1s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  2: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               HÉLIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('2 He');
                      Writeln ('Nao-metal');
                      Writeln ('Gás nobre');
                      Writeln ('Massa atómica relativa : 4.01');
                      Writeln ('1s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  3: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               LITIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('3 Li');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino');
                      Writeln ('Massa atómica relativa : 6.94');
                      Writeln ('[He] 2s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  4:  begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              BERILIO              ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('4 Be');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino-terroso');
                      Writeln ('Massa atómica relativa : 9.01');
                      Writeln ('[He] 2s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  5: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              BORO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('5 B');
                      Writeln ('Nao-metal');
                      Writeln ('Massa atómica relativa : 10.81');
                      Writeln ('[He] 2s^2 2p');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  6: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('             CARBONO              ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('6 C');
                      Writeln ('Nao-metal');
                      Writeln ('Massa atómica relativa : 12.01');
                      Writeln ('[He] 2s^2 2p^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  7: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('             NITROGÉNIO             ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('7 N');
                      Writeln ('Nao-metal');
                      Writeln ('Massa atómica relativa : 14.01');
                      Writeln ('[He] 2s^2 2p^3');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  8: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              OXIGENIO              ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('8 O');
                      Writeln ('Nao-metal');
                      Writeln ('Massa atómica relativa : 16.00');
                      Writeln ('[He] 2s^2 2p^4');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  9: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               FLUOR               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('9 F');
                      Writeln ('Nao-Metal');
                      Writeln ('Halogénio');
                      Writeln ('Massa atómica relativa : 19.00');
                      Writeln ('[He] 2s^2 2p^5');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  10: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                NEON                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('10 Ne');
                      Writeln ('Nao-Metal');
                      Writeln ('Gás nobre');
                      Writeln ('Massa atómica relativa : 20.18');
                      Writeln ('[He] 2s^2 2p^6');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  11: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                SODIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('11 Na');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino');
                      Writeln ('Massa atómica relativa : 22.99');
                      Writeln ('[Ne] 3s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  12: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              MAGNESIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('12 Mg');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino-terroso');
                      Writeln ('Massa atómica relativa : 24.31');
                      Writeln ('[Ne] 3s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  13: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ALUMINIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('13 Al');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 26.98');
                      Writeln ('[Ne] 3s^2 3p');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  14: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              SILICIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('14 Si');
                      Writeln ('Nao-Metal');
                      Writeln ('Massa atómica relativa : 28.09');
                      Writeln ('[Ne] 3s^2 3p^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  15: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              FOSFORO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('15 P');
                      Writeln ('Nao-Metal');
                      Writeln ('Massa atómica relativa : 30.97');
                      Writeln ('[Ne] 3s^2 3p^3');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  16: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ENXOFRE               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('16 S');
                      Writeln ('Nao-Metal');
                      Writeln ('Massa atómica relativa : 32.06');
                      Writeln ('[Ne] 3s^2 3p^4');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  17: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               CLORO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('17 Cl');
                      Writeln ('Nao-Metal');
                      Writeln ('Halogénio');
                      Writeln ('Massa atómica relativa : 35.45');
                      Writeln ('[Ne] 3s^2 3p^5');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  18: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               ARGON                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('18 Ar');
                      Writeln ('Nao-Metal');
                      Writeln ('Gás nobre');
                      Writeln ('Massa atómica relativa : 39.95');
                      Writeln ('[Ne] 3s^2 3p^6');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  19: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              POTASSIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('19 K');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino');
                      Writeln ('Massa atómica relativa : 39.10');
                      Writeln ('[Ar] 4s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  20: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CALCIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('20 Ca');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino-terroso');
                      Writeln ('Massa atómica relativa : 40.08');
                      Writeln ('[Ar] 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  21: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ESCANDIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('21 Sc');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 44.96');
                      Writeln ('[Ar] 3d 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  22: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TITANIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('22 Ti');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 47.87');
                      Writeln ('[Ar] 3d^2 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  23: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              VANADIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('23 V');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 50.94');
                      Writeln ('[Ar] 3d^3 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  24: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CROMO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('24 Cr');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 52.00');
                      Writeln ('[Ar] 3d^5 4s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  25: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              MANGANES               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('25 Mn');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 54.94');
                      Writeln ('[Ar] 3d^5 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  26: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              FERRO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('26 Fe');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 55.85');
                      Writeln ('[Ar] 3d^6 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  27: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              COBALTO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('27 Co');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 58.93');
                      Writeln ('[Ar] 3d^7 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  28: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              NIQUEL               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('28 Ni');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 58.69');
                      Writeln ('[Ar] 3d^8 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  29: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              COBRE               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('29 Cu');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 63.55');
                      Writeln ('[Ar] 3d^10 4s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  30: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ZINCO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('30 Zn');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 65.38');
                      Writeln ('[Ar] 3d^10 4s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  31: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              GALIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('31 Ga');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 69.72');
                      Writeln ('[Ar] 3d^10 4s^2 4p');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  32: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              GERMANIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('32 Ge');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 72.63');
                      Writeln ('[Ar] 3d^10 4s^2 4p^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  33: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ARSENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('33 As');
                      Writeln ('Nao-Metal');
                      Writeln ('Massa atómica relativa : 74.92');
                      Writeln ('[Ar] 3d^10 4s^2 4p^3');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  34: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              SELENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('34 Se');
                      Writeln ('Nao-Metal');
                      Writeln ('Massa atómica relativa : 78.97');
                      Writeln ('[Ar] 3d^10 4s^2 4p^4');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  35: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              BROMO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('35 Br');
                      Writeln ('Nao-Metal');
                      Writeln ('Halogenio');
                      Writeln ('Massa atómica relativa : 79.90');
                      Writeln ('[Ar] 3d^10 4s^2 4p^5');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  36: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CRIPTON               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('36 Kr');
                      Writeln ('Nao-Metal');
                      Writeln ('Gás nobre');
                      Writeln ('Massa atómica relativa : 83.80');
                      Writeln ('[Ar] 3d^10 4s^2 4p^5');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  37: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              RUBIDIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('37 Rb');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino');
                      Writeln ('Massa atómica relativa : 85.47');
                      Writeln ('[Kr] 5s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  38: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ESTRONCIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('38 Sr');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino-terroso');
                      Writeln ('Massa atómica relativa : 87.62');
                      Writeln ('[Kr] 5s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  39: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               ITRIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('39 Y');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 88.91');
                      Writeln ('[Kr] 4d 5s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  40: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ZIRCONIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('40 Zr');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 91.22');
                      Writeln ('[Kr] 4d^2 5s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  41: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              NIOBIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('41 Nb');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 92.91');
                      Writeln ('[Kr] 4d^4 5s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  42: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              MOLIBDENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('42 Mb');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 95.95');
                      Writeln ('[Kr] 4d^5 5s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  43: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TECNECIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('43 Tc');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [97]');
                      Writeln ('[Kr] 4d^5 5s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  44: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              RUTENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('44 Ru');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 101.07');
                      Writeln ('[Kr] 4d^7 5s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  45: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              RODIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('45 Rh');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 102.91');
                      Writeln ('[Kr] 4d^8 5s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  46: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              PALADIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('46 Pd');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 106.42');
                      Writeln ('[Kr] 4d^10');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  47: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              PRATA               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('47 Ag');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 107.87');
                      Writeln ('[Kr] 4d^10 5s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  48: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CADMIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('48 Cd');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 112.41');
                      Writeln ('[Kr] 4d^10 5s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  49: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              INDIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('49 In');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 114.82');
                      Writeln ('[Kr] 4d^10 5s^2 5p');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  50: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ESTANHO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('50 Sn');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 118.71');
                      Writeln ('[Kr] 4d^10 5s^2 5p^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  51: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ANTIMONIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('51 Sb');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 121.76');
                      Writeln ('[Kr] 4d^10 5s^2 5p^3');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  52: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TELURIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('52 Te');
                      Writeln ('Nao-Metal');
                      Writeln ('Massa atómica relativa : 127.60');
                      Writeln ('[Kr] 4d^10 5s^2 5p^4');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  53: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              IODO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('53 I');
                      Writeln ('Nao-Metal');
                      Writeln ('Halogénio');
                      Writeln ('Massa atómica relativa : 126.91');
                      Writeln ('[Kr] 4d^10 5s^2 5p^5');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  54: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              XENOMIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('54 Xe');
                      Writeln ('Nao-Metal');
                      Writeln ('Gás nobre');
                      Writeln ('Massa atómica relativa : 131.29');
                      Writeln ('[Kr] 4d^10 5s^2 5p^6');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  55: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               CESIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('55 Cs');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino');
                      Writeln ('Massa atómica relativa : 132.91');
                      Writeln ('[Xe] 6s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  56: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              BARIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('56 Ba');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino-terroso');
                      Writeln ('Massa atómica relativa : 137.33');
                      Writeln ('[Xe] 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  57: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              LANTANIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('57 La');
                      Writeln ('Metal');
                      Writeln ('Elemento de transição');
                      Writeln ('Massa atómica relativa : 138.91');
                      Writeln ('[Xe] 5d 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  58: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               CERIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('58 Ce');
                      Writeln ('Metal');
                      Writeln ('Elemento de transição');
                      Writeln ('Massa atómica relativa : 140.12');
                      Writeln ('[Xe] 4f 5d 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  59: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('             PRASEODRIMIO              ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('59 Pr');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 140.91');
                      Writeln ('[Xe] 4f^3 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  60: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              NEODIMIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('60 Nd');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 144.24');
                      Writeln ('[Xe] 4f^4 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  61: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              PROMECIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('61 Pm');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [145]');
                      Writeln ('[Xe] 4f^5 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  62: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              SAMARIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('62 Sm');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 150.36');
                      Writeln ('[Xe] 4f^6 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  63: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              EUROPIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('63 Eu');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 151.96');
                      Writeln ('[Xe] 4f^7 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  64: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              GADOLINIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('64 Gd');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 157.25');
                      Writeln ('[Xe] 4f^7 5d 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  65: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TERBIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('65 Tb');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 158.93');
                      Writeln ('[Xe] 4f^9 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  66: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              DISPROSIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('66 Dy');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 162.50');
                      Writeln ('[Xe] 4f^10 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  67: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              HOLMIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('67 Ho');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 164.93');
                      Writeln ('[Xe] 4f^11 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  68: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               ERBIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('68 Er');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 167.26');
                      Writeln ('[Xe] 4f^12 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  69: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('               TULIO                ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('69 Tm');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 168.93');
                      Writeln ('[Xe] 4f^13 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  70: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ITERBIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('12 Mg');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 173.05');
                      Writeln ('[Xe] 4f^14 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  71: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              LUTECIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('71 Lu');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 174.97');
                      Writeln ('[Xe] 4f^14 5d 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  72: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              HAFNIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('72 Hf');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 178.49');
                      Writeln ('[Xe] 4f^14 5d^2 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  73: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TANTALO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('73 Ta');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 180.95');
                      Writeln ('[Xe] 4f^15 5d^3 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  74: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TUNGSTENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('74 W');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 183.84');
                      Writeln ('[Xe] 4f^14 5d^4 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  75: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              RENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('75 Re');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 186.21');
                      Writeln ('[Xe] 4f^14 5d^5 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  76: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              OSMIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('76 Os');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 174.97');
                      Writeln ('[Xe] 4f^14 5d^6 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  77: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              IRIDIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('77 Ir');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 192.22');
                      Writeln ('[Xe] 4f^14 5d^7 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  78: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              PLATINA               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('78 Pt');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 195.08');
                      Writeln ('[Xe] 4f^14 5d^9 6s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  79: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              OURO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('79 Au');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 196.97');
                      Writeln ('[Xe] 4f^14 5d^10 6s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  80: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              MERCURIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('80 Hg');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 200.59');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  81: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TALIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('71 Lu');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 204.38');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  82: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CHUMBO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('82 Pb');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 207.20');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  83: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              BISMUTO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('83 Bi');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : 208.98');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^3');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  84: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              POLONIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('84 Po');
                      Writeln ('Metal');
                      Writeln ('Massa atómica relativa : [209]');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^4');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  85: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ASTATO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('85 At');
                      Writeln ('Nao-Metal');
                      Writeln ('Halogénio');
                      Writeln ('Massa atómica relativa : [210]');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^5');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  86: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              RADONIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('86 Rn');
                      Writeln ('Nao-Metal');
                      Writeln ('Gás nobre');
                      Writeln ('Massa atómica relativa : [222]');
                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^6');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  87: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              FRANCIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('87 Fr');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino');
                      Writeln ('Massa atómica relativa : [223]');
                      Writeln ('[Rn] 7s');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  88: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              RADIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('88 Ra');
                      Writeln ('Metal');
                      Writeln ('Metal alcalino-terroso');
                      Writeln ('Massa atómica relativa : [226]');
                      Writeln ('[Rn] 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  89: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              ACTINIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('89 Ac');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [227]');
                      Writeln ('[Rn] 6d 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  90: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              TORIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('90 Th');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 232.04');
                      Writeln ('[Rn] 6d^2 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  91: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              PROTACTINIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('91 Pa');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 231.04');
                      Writeln ('[Rn] 5f^2 6d 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  92: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              URANIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('92 U');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : 238.03');
                      Writeln ('[Rn] 5f^3 6d 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  93: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              NEPTUNIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('93 Np');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [237]');
                      Writeln ('[Rn] 5f^4 6d 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  94: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              PLUTONIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('94 Pu');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [244]');
                      Writeln ('[Rn] 5f^6 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  95: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              AMERICIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('89 Ac');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [243]');
                      Writeln ('[Rn] 5f^7 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  96: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CURIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('96 Cm');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [247]');
                      Writeln ('[Rn] 5f^7 6d 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  97: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              BERQUELIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('97 Bk');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [247]');
                      Writeln ('[Rn] 5f^9 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  98: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              CALIFORNIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('98 Cf');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [251]');
                      Writeln ('[Rn] 5f^10 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  99: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              EINSTENIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('99 Es');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [252]');
                      Writeln ('[Rn] 5f^11 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  100: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('              FERMIO               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('100 Fm');
                      Writeln ('Metal');
                      Writeln ('Elemento de transiçao');
                      Writeln ('Massa atómica relativa : [257]');
                      Writeln ('[Rn] 5f^12 7s^2');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      c11:=readkey
                    Until (c11=#27);
                  end;
                  101: begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                      Writeln ('                                                                                  ');
                      Writeln ('                                TABELA PERIODICA                                  ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (2);
                    Writeln ('              MENDELEVIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('101 Md');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [258]');
                    Writeln ('[Rn] 5f^13 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                102: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              NOBELIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('102 No');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [259]');
                    Writeln ('[Rn] 5f^14 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                103: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              LAWRENCIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('103 Lr');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [262]');
                    Writeln ('[Rn] 5f^14 6d 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                104: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              RUTHERFORDIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('104 Rf');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [267]');
                    Writeln ('[Rn] 5f^14 6d^2 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                105: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              DUBNIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('105 Db');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [270]');
                    Writeln ('[Rn] 5f^14 6d^3 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                106: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              SEABORGIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('106 Sg');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [269]');
                    Writeln ('[Rn] 5f^14 6d^4 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                107: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              BOHRIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('107 Bh');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [270]');
                    Writeln ('[Rn] 5f^14 6d^5 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                108: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              HASSIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('108 Hs');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [270]');
                    Writeln ('[Rn] 5f^14 6d^6 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                109: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              MEITNERIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('109 Mt');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [278]');
                    Writeln ('[Rn] 5f^14 6d^7 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                110: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              DARMSTADIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('110 Ds');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [281]');
                    Writeln ('[Rn] 5f^14 6d^9 7s');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                111: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              ROENTGENIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('111 Rg');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [281]');
                    Writeln ('[Rn] 5f^14 6d^10 7s');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                112: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              COPERNICIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('112 Cn');
                    Writeln ('Metal');
                    Writeln ('Elemento de transiçao');
                    Writeln ('Massa atómica relativa : [285]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                113: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              NIPONIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('113 Nh');
                    Writeln ('Metal');
                    Writeln ('Massa atómica relativa : [286]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                114: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              FLEVORIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('114 Fl');
                    Writeln ('Metal');
                    Writeln ('Massa atómica relativa : [289]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^2');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                115: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              MOSCOVIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('115 Mc');
                    Writeln ('Metal');
                    Writeln ('Massa atómica relativa : [289]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^3');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                116: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              LIVERMORIO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('116 Lv');
                    Writeln ('Metal');
                    Writeln ('Massa atómica relativa : [293]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^4');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                117: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              TENESSO               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('117 Ts');
                    Writeln ('Metal');
                    Writeln ('Massa atómica relativa : [293]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^5');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                118: begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('                                                                                  ');
                    Writeln ('                                TABELA PERIODICA                                  ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (2);
                    Writeln ('              OGANESSON               ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('118 Og');
                    Writeln ('Metal');
                    Writeln ('Massa atómica relativa : [294]');
                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^6');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c11:=readkey
                  Until (c11=#27);
                end;
                Else begin
                  Writeln ('Número atómico inválido.');
                  Writeln ('');
                  Writeln ('[ENTER] Repetir');
                  Writeln ('[ESC] Voltar');
                  c11:=readkey
                end;
              End;
            Until (c11=#27);
          end;
          //constantes fisicas fundamentais
          '3': begin
            Repeat
              clrscr;
              Writeln ('');
              Writeln ('');
              Textbackground (6);
              Writeln ('                                                                                  ');
              Writeln ('                      CONSTANTES FISICAS FUNDAMENTAIS                             ');
              Writeln ('                                                                                  ');
              textbackground (7);
              Writeln ('');
              Writeln ('');
              Writeln ('Capacidade térmica mássica: c = 4,18*10^3 (J/Kg/ºC)');
              Writeln ('');
              Writeln ('Constante de Avogadro: Na = 6,02*10^23 (mol)');
              Writeln ('');
              Writeln ('Constante de gravitaçao universal: G = 6,67*10^-11 (N/m^2/Kg)');
              Writeln ('');
              Writeln ('Índice de refraçao do ar: n = 1,000');
              Writeln ('');
              Writeln ('Módulo da aceleraçao gravítica de um corpo à superfície da Terra: g = 10 (m/s^2)');
              Writeln ('');
              Writeln ('Módulo da velocidade de propagaçao da luz no vácuo: c = 3,00*10^8 (m/s)');
              Writeln ('');
              Writeln ('Produto iónico da água (a 25 ºC): Kw = 1,0*10^-14');
              Writeln ('');
              Writeln ('Volume molar de um gás (PTN): Vm = 22,4 (dm^3/mol)');
              Writeln ('');
              Writeln ('[ENTER] Página seguinte');
              Writeln ('[ESC] Voltar');
              c12:= readkey;
              Case c12 of
                #13: begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    Textbackground (6);
                    Writeln ('                                                                                  ');
                    Writeln ('                      CONSTANTES FISICAS FUNDAMENTAIS                             ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    textbackground (6);
                    Writeln ('           DADOS ASTRONOMICOS            ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('Raio médio da Terra: 6,37*10^4 (m)');
                    Writeln ('');
                    Writeln ('Distância média Terra-Sol: 1,50*10^11 (m)');
                    Writeln ('');
                    Writeln ('Massa da Terra: 5,97*10^24 (Kg)');
                    Writeln ('');
                    Writeln ('Massa do Sol: 1,99*10^30 (Kg)');
                    Writeln ('');
                    Writeln ('[ESC] Página anterior');
                    c13:= readkey;
                  Until (c13=#27);
                end;
              End;
            Until (c12=#27);
          end;
          //formulas
          '4': begin
            Repeat
              clrscr;
              Writeln ('');
              Writeln ('');
              Textbackground (3);
              Writeln ('                                                                                  ');
              Writeln ('                                    FORMULAS                                      ');
              Writeln ('                                                                                  ');
              textbackground (7);
              Writeln ('');
              Writeln ('');
              Writeln ('[1] Física');
              Writeln ('[2] Química');
              Writeln ('[ESC] Voltar');
              c14:= readkey;
              Case c14 of
                '1': begin;
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    Textbackground (3);
                    Writeln ('                                                                                  ');
                    Writeln ('                                    FORMULAS                                      ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('           FISICA            ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('Escolha o domínio:');
                    Writeln ('');
                    Writeln ('[1] Energia');
                    Writeln ('[2] Mecânica');
                    Writeln ('[3] Ondas e eletromagnetismo');
                    Writeln ('[4] Nota');
                    Writeln ('[ESC] Voltar');
                    c15:= readkey;
                    Case c15 of
                      '1': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                            FORMULARIO DE FISICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('        DOMINIO - ENERGIA         ');
                          textbackground (7);
                          Writeln ('');
                          Writeln (' Ec=1/2*m*v^2        Epg=m*g*h           Em=Ec+Ep');
                          Writeln ('');
                          Writeln (' W=F*d*cosx          WFr=(delta)Ec       WFg=-(delta)Epg');
                          Writeln ('');
                          Writeln (' U=RI                P=RI^2              U=e-rI');
                          Writeln ('');
                          Writeln (' E=m*c*(delta)T      (delta)U=W+Q        Er=P/A');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c16:= readkey;
                        Until (c16=#27);
                      end;
                      '2': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                            FORMULARIO DE FISICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('        DOMINIO - MECANICA         ');
                          textbackground (7);
                          Writeln ('');
                          Writeln (' x=x0+v0t+1/2at^2      v=v0+at');
                          Writeln ('');
                          Writeln (' ac=v^2/r              w=2pi/T            v=w*r');
                          Writeln ('');
                          Writeln (' F=ma                 Fg=G*(m1*m2/r^2');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c16:= readkey;
                        Until (c16=#27);
                      end;
                      '3': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                            FORMULARIO DE FISICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('    DOMINIO - ONDAS E ELETROMAGNETISMO     ');
                          textbackground (7);
                          Writeln ('');
                          Writeln (' (lambda)=V/f    (fi)m=B*A*cosx      |ei|=(delta)(fi)/(delta)t ');
                          Writeln ('');
                          Writeln (' n=c/v            n1*sinx1=n2*sinx2 ');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c16:= readkey;
                        Until (c16=#27);
                      end;
                      '4': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                            FORMULARIO DE FISICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('            NOTA             ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('As palavras entre parêntesis significam as letras gregas correspondentes');
                          Writeln ('às fórmulas.');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c16:= readkey;
                        Until (c16=#27);
                      end;
                    End;
                  Until (c15=#27);
                end;
                '2': begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    Textbackground (3);
                    Writeln ('                                                                                  ');
                    Writeln ('                                    FORMULAS                                      ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('           QUIMICA            ');
                    textbackground (7);
                    Writeln ('');
                    Writeln ('Escolha o domínio:');
                    Writeln ('');
                    Writeln ('[1] Quantidade, massa e volume');
                    Writeln ('[2] Soluçoes');
                    Writeln ('[3] Nota');
                    Writeln ('[ESC] Voltar');
                    c17:= readkey;
                    Case c17 of
                      '1': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                           FORMULARIO DE QUIMICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('    DOMINIO - QUANTIDADE, MASSA E VOLUME     ');
                          textbackground (7);
                          Writeln ('');
                          Writeln (' n=N/Na          M=m/n          Vm=V/n          p=m/V');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c18:= readkey;
                        Until (c18=#27);
                      end;
                      '2': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                           FORMULARIO DE QUIMICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('          DOMINIO - SOLUÇOES           ');
                          textbackground (7);
                          Writeln ('');
                          Writeln (' c=n/V        Xa=na/ntotal       pH= -log {[H3O+]/moldm^-3} ');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c18:= readkey;
                        Until (c18=#27);
                      end;
                      '3': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                           FORMULARIO DE QUIMICA                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('              NOTA               ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('As palavras entre parêntesis significam as letras gregas correspondentes');
                          Writeln ('às fórmulas.');
                          Writeln ('');
                          Writeln ('[ESC] Voltar');
                          c18:= readkey;
                        Until (c18=#27);
                      end;
                    End;
                  Until (c17=#27);
                end;
              End;
            Until (c14=#27);
            clrscr;
          end;
          //notas
          '5': begin
            Repeat
              clrscr;
              Writeln ('');
              Writeln ('');
              Textbackground (4);
              Writeln ('                                                                                  ');
              Writeln ('                                  APONTAMENTOS                                    ');
              Writeln ('                                                                                  ');
              textbackground (7);
              Writeln ('');
              Writeln ('');
              Writeln ('[1] Aceder à nota 1');
              Writeln ('[2] Aceder à nota 2');
              Writeln ('[3] Aceder à nota 3');
              Writeln ('[ESC] Voltar');
              c6:= readkey;
              Case c6 of
                '1': begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    textbackground (4);
                    Writeln ('                                                                                  ');
                    Writeln ('                                  NOTA 1                                          ');
                    Writeln ('                                                                                  ');
                    Textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    Writeln (nota1);
                    Writeln ('');
                    Writeln ('[1] Alterar a nota 1 (a atual será perdida)');
                    Writeln ('[ESC] Voltar');
                    c7:= readkey;
                    Case c7 of
                      '1': begin
                        Writeln ('');
                        textbackground (4);
                        Writeln ('         NOTA 1 NOVA          ');
                        textbackground (7);
                        Writeln ('');
                        Writeln ('Após escrever: ');
                        Writeln ('[ENTER] Guardar e voltar');
                        Writeln ('');
                        Readln (nota1);
                        Writeln ('');
                      end;
                    End;
                  Until c7=#27
                end;
                '2': begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    textbackground (4);
                    Writeln ('                                                                                  ');
                    Writeln ('                                  NOTA 2                                          ');
                    Writeln ('                                                                                  ');
                    Textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    Writeln (nota2);
                    Writeln ('');
                    Writeln ('[1] Alterar a nota 2 (a atual será perdida)');
                    Writeln ('[ESC] Voltar');
                    c7:= readkey;
                    Case c7 of
                      '1': begin
                        Writeln ('');
                        textbackground (4);
                        Writeln ('         NOTA 2 NOVA          ');
                        textbackground (7);
                        Writeln ('');
                        Writeln ('Após escrever: ');
                        Writeln ('[ENTER] Guardar e voltar');
                        Writeln ('');
                        Readln (nota2);
                        Writeln ('');
                      end;
                    End;
                  Until c7=#27
                end;
                '3': begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    textbackground (4);
                    Writeln ('                                                                                  ');
                    Writeln ('                                  NOTA 3                                          ');
                    Writeln ('                                                                                  ');
                    Textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    Writeln (nota3);
                    Writeln ('');
                    Writeln ('[1] Alterar a nota 3 (a atual será perdida)');
                    Writeln ('[ESC] Voltar');
                    c7:= readkey;
                    Case c7 of
                      '1': begin
                        Writeln ('');
                        textbackground (4);
                        Writeln ('         NOTA 3 NOVA          ');
                        textbackground (7);
                        Writeln ('');
                        Writeln ('Após escrever: ');
                        Writeln ('[ENTER] Guardar e voltar');
                        Writeln ('');
                        Readln (nota3);
                        Writeln ('');
                      end;
                    End;
                  Until c7=#27
                end;
              End;
            Until c6=#27
          end;
          '6': begin
            Repeat
              clrscr;
              Writeln ('');
              Writeln ('');
              textbackground (3);
              Writeln ('                                                                                  ');
              Writeln ('                                  RELOGIO                                         ');
              Writeln ('                                                                                  ');
              Textbackground (7);
              Writeln ('');
              Writeln ('');
              GetTime(hora, minuto, segundo, msegundo);  //horas do computador
              Writeln(hora, 'h', minuto, 'min');
              GetDate(ano, mes, dia, diaSemana);       //data do computador
              Writeln(dia, '/', mes, '/', ano);
              Writeln ('');
              Writeln ('[ENTER] Atualizar ecra');   //atualizar as horas a partir do computador
              Writeln ('[1] Temporizador');
              Writeln ('[2] Cronómetro');
              Writeln ('[ESC] Voltar');
              c22:= readkey;
              Case c22 of
                '1': begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('                                                                                  ');
                    Writeln ('                                  RELOGIO                                         ');
                    Writeln ('                                                                                  ');
                    Textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('          TEMPORIZADOR          ');
                    textbackground (7);
                    Writeln ('');
                    write ('Defina o tempo (s): ');
                    read (tempo);
                    Repeat
                      Begin
                        delay (1000);   //1 segundo
                        clrscr;
                        Writeln ('');
                        Writeln ('');
                        textbackground (3);
                        Writeln ('                                                                                  ');
                        Writeln ('                                  RELOGIO                                         ');
                        Writeln ('                                                                                  ');
                        Textbackground (7);
                        Writeln ('');
                        Writeln ('');
                        textbackground (3);
                        Writeln ('          TEMPORIZADOR          ');
                        textbackground (7);
                        Writeln ('');
                        writeln ('Faltam ',tempo,' segundos');
                        tempo := tempo - 1;
                      End;
                    Until (tempo=-1);
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('                                                                                  ');
                    Writeln ('                                  RELOGIO                                         ');
                    Writeln ('                                                                                  ');
                    Textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('          TEMPORIZADOR          ');
                    textbackground (7);
                    writeln ('');
                    Writeln ('O tempo chegou ao fim');
                    Writeln ('');
                    Writeln ('[ESC] Voltar');
                    c21:= readkey;
                  Until (c21=#27);
                end;
                '2': begin
                  Repeat
                    clrscr;
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('                                                                                  ');
                    Writeln ('                                  RELOGIO                                         ');
                    Writeln ('                                                                                  ');
                    Textbackground (7);
                    Writeln ('');
                    Writeln ('');
                    textbackground (3);
                    Writeln ('          CRONOMETRO          ');
                    textbackground (7);
                    writeln ('');
                    Writeln ('[ENTER] Começar a cronometrar');
                    Writeln ('[ESC] Voltar');
                    tempo1:=0;
                    c20:=readkey;
                    Case c20 of
                      #13: begin
                        Repeat
                          delay (1000);
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                                  RELOGIO                                         ');
                          Writeln ('                                                                                  ');
                          Textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          textbackground (3);
                          Writeln ('          CRONOMETRO          ');
                          textbackground (7);
                          writeln ('');
                          tempo1:=tempo1 + 1;
                          Writeln (tempo1, ' segundos');
                          Writeln ('');
                          Writeln ('[SPACE] Parar');
                        Until keypressed;
                      end;
                    End;
                  Until (c20=#27);
                end;
              End;
            Until (c22=#27);
          end;
          '7': begin
            Repeat
              clrscr;
              Writeln (' ');
              Writeln (' ');
              textbackground (5);
              Writeln ('                                                                                  ');
              Writeln ('                                JOGO DA SORTE                                     ');
              Writeln ('                                                                                  ');
              textbackground (7);
              Writeln (' ');
              Writeln (' ');
              Writeln ('[1] Jogar');
              Writeln ('[2] Regras');
              Writeln ('[ESC] Voltar');
              c23:= readkey;
              Case c23 of
                '1': begin
                  Repeat
                    clrscr;
                    Writeln (' ');
                    Writeln (' ');
                    textbackground (5);
                    Writeln ('                                                                                  ');
                    Writeln ('                                JOGO DA SORTE                                     ');
                    Writeln ('                                                                                  ');
                    textbackground (7);
                    Writeln (' ');
                    Writeln (' ');
                    Writeln ('Este é o baralho contra quem está a jogar                  Este é o seu baralho');
                    Randomize;
                    For y:=1 to 1 do
                    begin
                      num1:=random (4)+3;   //numeros no intervalo 3 a 6
                      num2:=random (4)+3;
                      num3:=num1 + random (5)+3;     //numeros no intervalo 3 a 7
                      num4:=num2 + random (5)+3;
                      If (num1<10) and (num2<10) then
                      begin
                        Writeln ('                _________                                       _________');
                        Writeln ('               |         |                                     |         |');
                        Writeln ('               |         |                                     |         |');
                        Writeln ('               |         |                                     |         |');
                        Writeln ('               |    ',num1,'    |                                     |    ',num2,'    |');
                        Writeln ('               |         |                                     |         |');
                        Writeln ('               |         |                                     |         |');
                        Writeln ('               |_________|                                     |_________|');
                      end;
                      Writeln('');
                      Writeln('');
                      Writeln ('Quer mais uma carta? (s/n)');
                      Readln (resp2);
                      Case resp2 of
                        's': begin
                          clrscr;
                          Writeln (' ');
                          Writeln (' ');
                          textbackground (5);
                          Writeln ('                                                                                  ');
                          Writeln ('                                JOGO DA SORTE                                     ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln (' ');
                          Writeln (' ');
                          Writeln ('Este é o baralho contra quem está a jogar                  Este é o seu baralho');
                          If (num3>=10) and (num4<10) then
                          begin
                            Writeln ('            __________                                          _________');
                            Writeln ('           |          |                                        |         |');
                            Writeln ('           |          |                                        |         |');
                            Writeln ('           |          |                                        |         |');
                            Writeln ('           |    ',num3,'    |                                        |    ',num4,'    |');
                            Writeln ('           |          |                                        |         |');
                            Writeln ('           |          |                                        |         |');
                            Writeln ('           |__________|                                        |_________|');
                          end
                          else
                          If (num4>=10) and (num3<10) then
                          begin
                            Writeln ('             _________                                          __________');
                            Writeln ('            |         |                                        |          |');
                            Writeln ('            |         |                                        |          |');
                            Writeln ('            |         |                                        |          |');
                            Writeln ('            |    ',num3,'    |                                        |    ',num4,'    |');
                            Writeln ('            |         |                                        |          |');
                            Writeln ('            |         |                                        |          |');
                            Writeln ('            |_________|                                        |__________|');
                          end
                          else
                          If (num3>=10) and (num4>=10) then
                          begin
                            Writeln ('             __________                                          __________');
                            Writeln ('            |          |                                        |          |');
                            Writeln ('            |          |                                        |          |');
                            Writeln ('            |          |                                        |          |');
                            Writeln ('            |    ',num3,'    |                                        |    ',num4,'    |');
                            Writeln ('            |          |                                        |          |');
                            Writeln ('            |          |                                        |          |');
                            Writeln ('            |__________|                                        |__________|');
                          end
                          else
                          If (num3<10) and (num4<10) then
                          begin
                            Writeln ('              _________                                         _________');
                            Writeln ('             |         |                                       |         |');
                            Writeln ('             |         |                                       |         |');
                            Writeln ('             |         |                                       |         |');
                            Writeln ('             |    ',num3,'    |                                       |    ',num4,'    |');
                            Writeln ('             |         |                                       |         |');
                            Writeln ('             |         |                                       |         |');
                            Writeln ('             |_________|                                       |_________|');
                          end;
                          If (num3=10) and (num4=10) then
                          begin
                            Writeln ('');
                            Writeln ('Ambos obteram 10! Não houve vencedor');
                          end
                          else
                          If (num3=10) then
                          begin
                            Writeln ('');
                            Writeln ('Perdeste!');
                          end
                          else
                          If (num4=10) then
                          begin
                            Writeln ('');
                            Writeln ('Ganhaste, parabens!');
                          end
                          else
                          If (num3>10) and (num4>10) then
                          begin
                            Writeln ('');
                            Writeln ('Ambos perderam!');
                          end
                          else
                          If (num3<10) and (num3>num4) then
                          begin
                            Writeln ('');
                            Writeln ('Perdeste!');
                          end
                          else
                          If (num4<10) and (num4>num3) then
                          begin
                            Writeln ('');
                            Writeln ('Ganhaste, parabens!');
                          end
                          else
                          If (num3>10) and (num4<10) then
                          begin
                            Writeln ('');
                            Writeln ('Ganhaste, parabens!');
                          end
                          else
                          If (num3=num4) then
                          begin
                            Writeln ('');
                            Writeln ('Empate!');
                          end
                          else
                          If (num4>10) and (num3<10) then
                          begin
                            Writeln ('');
                            Writeln ('Perdeste!');
                          end;
                        end;
                        'n': begin
                          clrscr;
                          Writeln (' ');
                          Writeln (' ');
                          textbackground (5);
                          Writeln ('                                                                                  ');
                          Writeln ('                                JOGO DA SORTE                                     ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln (' ');
                          Writeln (' ');
                          Writeln ('Este é o baralho contra quem está a jogar                  Este é o seu baralho');
                          If (num3>=10) and (num2<10) then
                          begin
                            Writeln ('                __________                                      _________');
                            Writeln ('               |          |                                    |         |');
                            Writeln ('               |          |                                    |         |');
                            Writeln ('               |          |                                    |         |');
                            Writeln ('               |    ',num3,'    |                                    |    ',num2,'    |');
                            Writeln ('               |          |                                    |         |');
                            Writeln ('               |          |                                    |         |');
                            Writeln ('               |__________|                                    |_________|');
                          end
                          else
                          If (num3<10) and (num2<10) then
                          begin
                            Writeln ('                 _________                                       _________');
                            Writeln ('                |         |                                     |         |');
                            Writeln ('                |         |                                     |         |');
                            Writeln ('                |         |                                     |         |');
                            Writeln ('                |    ',num3,'    |                                     |    ',num2,'    |');
                            Writeln ('                |         |                                     |         |');
                            Writeln ('                |         |                                     |         |');
                            Writeln ('                |_________|                                     |_________|');
                          end;
                          If (num3=10) then
                          begin
                            Writeln ('');
                            Writeln ('Perdeste!');
                          end
                          else
                          If (num3>10) then
                          begin
                            Writeln ('');
                            Writeln ('Ganhaste, parabens!');
                          end
                          else
                          If (num3>num2) and (num3<10) then
                          begin
                            Writeln ('');
                            Writeln ('Perdeste!');
                          end
                          else
                          If (num2>num3) then
                          Begin
                            Writeln ('');
                            Writeln ('Ganhaste, parabens!');
                          end
                          else
                          If (num3=num2) then
                          begin
                            Writeln ('');
                            Writeln ('Empate');
                          end;
                        end;
                      End;  //case1
                      end; //for
                      Writeln ('');
                      Writeln ('[ENTER] Tentar novamente');
                      Writeln ('[ESC] Sair do jogo');
                      resp1:= readkey;
                    Until (resp1=#27)
                  end;
                  '2': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (5);
                      Writeln ('                                                                                  ');
                      Writeln ('                                JOGO DA SORTE                                     ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (5);
                      Writeln ('               REGRAS               ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('Neste jogo consegues ver o teu baralho, à direita, com um número correspondente,');
                      Writeln (' e, à esquerda, o baralho do adversário, também com um número correspondente.');
                      Writeln ('O número em cada baralho será sempre um número à sorte. Para ganhar o jogo é');
                      Writeln ('necessário obter o número 10 ou o número do adversário ultrapassar o 10. Quando ');
                      Writeln ('nenhum dos dois baralhos obtiver o número 10 ou superior, ganha quem tiver o ');
                      Writeln ('número maior.');
                      Writeln ('');
                      Writeln ('Nota 1: Ao concordar em receber mais uma carta, um número à sorte sumará com o ');
                      Writeln ('número de cada um dos baralhos.');
                      Writeln ('Nota 2: Se optar por não receber uma carta, um número à sorte sumará com o número');
                      Writeln ('do baralho do adversário e caso ninguém obtenha o número 10 ou superior ganha');
                      Writeln ('quem tiver o número maior.');
                      Writeln ('');
                      Writeln ('[ESC] Voltar');
                      resp3:= readkey;
                    Until (resp3=#27);
                  end;
                End;
              Until (c23=#27);
            end;
            '8': begin
              Repeat
                clrscr;
                Writeln (' ');
                Writeln (' ');
                textbackground (5);
                Writeln ('                                                                                  ');
                Writeln ('                                    SOBRE                                         ');
                Writeln ('                                                                                  ');
                textbackground (7);
                Writeln (' ');
                Writeln (' ');
                Writeln ('StudyPartner é um programa desenvolvido por Simao Sousa e Joao Cova.');
                Writeln ('Versao atual: v1.0');
                Writeln ('09/12/2022');
                Writeln ('Todos os direitos reservados.');
                Writeln (' ');
                Writeln ('[ESC] Voltar');
                c3:= readkey;
              Until (c3=#27)
            end;
          End;
        Until (app=#27);
        If app=#27 then exit;
      end;
      //inglês
      '2': begin
        Repeat
          clrscr;
          Writeln (' ');
          Writeln (' ');
          textbackground (1);
          Writeln ('                                                                                  ');
          Writeln ('                                STUDYPARTNER                                      ');
          Writeln ('                                                                                  ');
          textbackground (7);
          Writeln (' ');
          Writeln (' ');
          textbackground (1);
          Writeln ('             MAIN MENU               ');
          textbackground (7);
          Writeln ('');
          Writeln ('[1] Calculator');
          Writeln ('[2] Periodic table');
          Writeln ('[3] Fundamental physical constants');
          Writeln ('[4] Formulas');
          Writeln ('[5] Notes');
          Writeln ('[6] Clock');
          Writeln ('[7] Relax');
          Writeln ('[8] About');
          Writeln ('[ESC] Exit');
          Writeln (' ');
          app:= readkey;
          //escolha aplicaçao
          Case app of
            //calculadora
            '1': begin
              Repeat
                clrscr;
                Writeln (' ');
                Writeln (' ');
                textbackground (6);
                Writeln ('                                                                                  ');
                Writeln ('                                  CALCULATOR                                      ');
                Writeln ('                                                                                  ');
                textbackground (7);
                Writeln (' ');
                Writeln (' ');
                Writeln ('[1] Sum');
                Writeln ('[2] Subtraction');
                Writeln ('[3] Multiplication');
                Writeln ('[4] Division');
                Writeln ('[5] Solve second degree equation');
                Writeln ('[6] Multiplication table');
                Writeln ('[7] Trigonometry');
                Writeln ('[ESC] Return');
                Writeln (' ');
                appcalc:= readkey;
                Case appcalc of
                  '1': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (6);
                      Writeln ('                                                                                  ');
                      Writeln ('                                      SUM                                         ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('Last sum = ',soma:0:2);
                      Writeln ('');
                      Write ('How many numbers take part in the sum? ');
                      Readln (n);
                      Writeln ('');
                      soma:= 0;
                      For i2:=1 to n do
                      begin
                        Write ('num',i2,' = ');
                        Readln (num);
                        soma := soma + num;
                      end;
                      Writeln ('');
                      Writeln ('Sum = ',soma:0:2);
                      Writeln ('');
                      Writeln ('[ENTER] Repeat');
                        Writeln ('[ESC] Return');
                        c5:= readkey;
                      Until c5=#27
                    end;
                    '2': begin
                      Repeat
                        clrscr;
                        Writeln (' ');
                        Writeln (' ');
                        textbackground (6);
                        Writeln ('                                                                                  ');
                        Writeln ('                                    SUBTRACTION                                   ');
                        Writeln ('                                                                                  ');
                        textbackground (7);
                        Writeln (' ');
                        Writeln (' ');
                        Writeln ('Last subtraction = ',subtracao:0:2);
                        Writeln ('');
                        Write ('num1 = ');
                        Readln (number1);
                        Write ('num2 = ');
                        Readln (number2);
                        Writeln ('');
                        subtracao := number1-number2;
                        Writeln (number1:0:2,'-',number2:0:2,'=',subtracao:0:2);
                        Writeln ('');
                        Writeln ('[ENTER] Repeat');
                          Writeln ('[ESC] Return');
                          c8:= readkey;
                        Until (c8=#27)
                      end;
                      '3': begin
                        Repeat
                          clrscr;
                          Writeln (' ');
                          Writeln (' ');
                          textbackground (6);
                          Writeln ('                                                                                  ');
                          Writeln ('                                  MULTIPLICATION                                  ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln (' ');
                          Writeln (' ');
                          Writeln ('Last multiplication = ',produto:0:2);
                          Writeln ('');
                          Write ('num1 = ');
                          Read (n1);
                          Write ('num2 = ');
                          Readln (n2);
                          Writeln ('');
                          produto := n1*n2;
                          Writeln (n1:0:2,'x',n2:0:2,'=',produto:0:2);
                          Writeln ('');
                          Writeln ('[ENTER] Repeat');
                            Writeln ('[ESC] Return');
                            c9:= readkey;
                          Until (c9=#27)
                        end;
                        '4': begin
                          Repeat
                            clrscr;
                            Writeln (' ');
                            Writeln (' ');
                            textbackground (6);
                            Writeln ('                                                                                  ');
                            Writeln ('                                     DIVISION                                     ');
                            Writeln ('                                                                                  ');
                            textbackground (7);
                            Writeln (' ');
                            Writeln (' ');
                            Writeln ('Last division = ',quociente:0:2);
                            Writeln ('');
                            Write ('num1 = ');
                            Read (numb1);
                            Write ('num2 = ');
                            Read (numb2);
                            quociente := numb1/numb2;
                            Writeln (numb1:0:2,'/',numb2:0:2,'=',quociente:0:2);
                            Writeln ('');
                            Writeln ('[ENTER] Repeat');
                              Writeln ('[ESC] Return');
                              c10:= readkey;
                            Until c10=#27
                          end;
                          '5': begin
                            Repeat
                              clrscr;
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (6);
                              Writeln ('                                                                                  ');
                              Writeln ('                         SOLVE SECOND DEGREE EQUATION                             ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln (' ');
                              Writeln (' ');
                              Write ('a=');
                              Read (a);
                              Write ('b=');
                              Read (b);
                              Write ('c=');
                              Read (c);
                              Writeln (' ');
                              delta:=(b*b-4*a*c);
                              Writeln (a,'X^2+(',b,')X+(',c,')=0');
                              Writeln (' ');
                              Writeln ('delta=',delta:0:0);
                              If (delta<0) then begin
                                Writeln (' ');
                                Writeln ('Impossible equation');
                                Writeln ('No real roots');
                                Writeln (' ');
                              end;
                              If (delta=0) then begin
                                x:=(-b/(2*a));
                                Writeln (' ');
                                Writeln ('x=',x:0:2,' (x2)');
                                Writeln (' ');
                              end;
                              If (delta>0) then begin
                                x1:=(-b-sqrt(delta))/(2*a);
                                x2:=(-b+sqrt(delta))/(2*a);
                                Writeln (' ');
                                Writeln ('x1=',x1:0:2);
                                Writeln ('x2=',x2:0:2);
                                Writeln (' ');
                              end;
                              Writeln ('[ENTER] Repeat');
                                Writeln ('[ESC] Return');
                                c1:= readkey;
                              Until (c1= #27);
                            end;
                            '6': begin
                              Repeat
                                clrscr;
                                Writeln ('');
                                Writeln ('');
                                Textbackground (6);
                                Writeln ('                                                                                  ');
                                Writeln ('                             MULTIPLICATION TABLE                                 ');
                                Writeln ('                                                                                  ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('');
                                Write ('Which number? ');
                                Readln (tabuada);
                                Writeln ('');
                                textbackground (6);
                                Writeln ('    ',tabuada,' MULTIPLICATION TABLE     ');
                                textbackground (7);
                                Writeln ('');
                                For i:=1 to 10 do
                                Begin
                                  Writeln (tabuada,'x',i,'=',tabuada*i);
                                end;
                                Writeln ('');
                                Writeln ('[ENTER] Repeat');
                                  Writeln ('[ESC] Return');
                                  c2:= readkey;
                                Until (c2=#27)
                              end;
                              '7': begin
                                Repeat
                                  clrscr;
                                  clrscr;
                                  Writeln ('');
                                  Writeln ('');
                                  Textbackground (6);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 TRIGONOMETRY                                     ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('');
                                  Write ('angle (degrees) = ');
                                  Readln (graus);
                                  Writeln ('');
                                  graus_rad := graus*(3.14159/180);
                                  Writeln ('sen (',graus:0:0,') = ',sin(graus_rad):0:2);
                                  Writeln ('cos (',graus:0:0,') = ',cos(graus_rad):0:2);
                                  If (graus=90) or (graus=270) then begin
                                    Writeln ('tan (',graus:0:0,') = [Mathematical error]');
                                  end
                                  Else
                                  begin
                                    tan := sin(graus_rad)/cos(graus_rad);
                                    Writeln ('tan (',graus:0:0,') = ',tan:0:2);
                                  end;
                                  Writeln ('');
                                  Writeln ('[ENTER] Repeat');
                                    Writeln ('[ESC] Return');
                                    c4:= readkey;
                                  Until (c4=#27)
                                end;
                              End;
                            Until (appcalc=#27);
                          end;
                          //tabela periodica
                          '2': begin
                            Repeat
                              clrscr;
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (2);
                              Writeln ('                                                                                  ');
                              Writeln ('                                 PERIODIC TABLE                                   ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (2);
                              Writeln ('          SEARCH ELEMENT           ');
                              textbackground (7);
                              Writeln ('');
                              Write ('Insert atomic number: ');
                              Readln (atom);
                              Case atom of
                                1: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('            HIDROGEN             ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('1 H');
                                    Writeln ('Non-metal');
                                    Writeln ('Relative atomic mass : 1.01');
                                    Writeln ('1s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                2: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               HELIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('2 He');
                                    Writeln ('Non-metal');
                                    Writeln ('Noble gas');
                                    Writeln ('Relative atomic mass : 4.01');
                                    Writeln ('1s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                3: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               LITHIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('3 Li');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline metal');
                                    Writeln ('Relative atomic mass : 6.94');
                                    Writeln ('[He] 2s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                4:  begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BERILIUM              ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('4 Be');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline earth metal');
                                    Writeln ('Relative atomic mass : 9.01');
                                    Writeln ('[He] 2s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                5: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BORON               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('5 B');
                                    Writeln ('Non-metal');
                                    Writeln ('Relative atomic mass : 10.81');
                                    Writeln ('[He] 2s^2 2p');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                6: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('             CARBON              ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('6 C');
                                    Writeln ('Non-metal');
                                    Writeln ('Relative atomic mass : 12.01');
                                    Writeln ('[He] 2s^2 2p^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                7: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('             NITROGEN             ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('7 N');
                                    Writeln ('Non-metal');
                                    Writeln ('Relative atomic mass : 14.01');
                                    Writeln ('[He] 2s^2 2p^3');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                8: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              OXIGEN              ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('8 O');
                                    Writeln ('Non-metal');
                                    Writeln ('Relative atomic mass : 16.00');
                                    Writeln ('[He] 2s^2 2p^4');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                9: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               FLUORINE               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('9 F');
                                    Writeln ('Non-Metal');
                                    Writeln ('Halogen');
                                    Writeln ('Relative atomic mass : 19.00');
                                    Writeln ('[He] 2s^2 2p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                10: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                NEON                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('10 Ne');
                                    Writeln ('Non-Metal');
                                    Writeln ('Noble gas');
                                    Writeln ('Relative atomic mass : 20.18');
                                    Writeln ('[He] 2s^2 2p^6');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                11: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                SODIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('11 Na');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline metal');
                                    Writeln ('Relative atomic mass : 22.99');
                                    Writeln ('[Ne] 3s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                12: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              MAGNESIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('12 Mg');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline earth metal');
                                    Writeln ('Relative atomic mass : 24.31');
                                    Writeln ('[Ne] 3s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                13: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ALUMINIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('13 Al');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 26.98');
                                    Writeln ('[Ne] 3s^2 3p');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                14: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SILICON               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('14 Si');
                                    Writeln ('Non-Metal');
                                    Writeln ('Relative atomic mass : 28.09');
                                    Writeln ('[Ne] 3s^2 3p^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                15: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              PHOSPHORUS               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('15 P');
                                    Writeln ('Non-Metal');
                                    Writeln ('Relative atomic mass : 30.97');
                                    Writeln ('[Ne] 3s^2 3p^3');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                16: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SULFUR               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('16 S');
                                    Writeln ('Non-Metal');
                                    Writeln ('Relative atomic mass : 32.06');
                                    Writeln ('[Ne] 3s^2 3p^4');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                17: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               CHLORINE                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('17 Cl');
                                    Writeln ('Non-Metal');
                                    Writeln ('Halogen');
                                    Writeln ('Relative atomic mass : 35.45');
                                    Writeln ('[Ne] 3s^2 3p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                18: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               ARGON                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('18 Ar');
                                    Writeln ('Non-Metal');
                                    Writeln ('Noble gas');
                                    Writeln ('Relative atomic mass : 39.95');
                                    Writeln ('[Ne] 3s^2 3p^6');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                19: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              POTASSIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('19 K');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline metal');
                                    Writeln ('Relative atomic mass : 39.10');
                                    Writeln ('[Ar] 4s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                20: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              CALCIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('20 Ca');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline earth metal');
                                    Writeln ('Relative atomic mass : 40.08');
                                    Writeln ('[Ar] 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                21: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SCANDIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('21 Sc');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 44.96');
                                    Writeln ('[Ar] 3d 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                22: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TITANIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('22 Ti');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 47.87');
                                    Writeln ('[Ar] 3d^2 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                23: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              VANADIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('23 V');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 50.94');
                                    Writeln ('[Ar] 3d^3 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                24: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              CHROMIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('24 Cr');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 52.00');
                                    Writeln ('[Ar] 3d^5 4s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                25: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              MANGANESE               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('25 Mn');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 54.94');
                                    Writeln ('[Ar] 3d^5 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                26: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              IRON               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('26 Fe');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 55.85');
                                    Writeln ('[Ar] 3d^6 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                27: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              COBALT               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('27 Co');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 58.93');
                                    Writeln ('[Ar] 3d^7 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                28: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              NICKEL               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('28 Ni');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 58.69');
                                    Writeln ('[Ar] 3d^8 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                29: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              COPPER               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('29 Cu');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 63.55');
                                    Writeln ('[Ar] 3d^10 4s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                30: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ZINC               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('30 Zn');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 65.38');
                                    Writeln ('[Ar] 3d^10 4s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                31: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              GALLIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('31 Ga');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 69.72');
                                    Writeln ('[Ar] 3d^10 4s^2 4p');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                32: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              GERMANIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('32 Ge');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 72.63');
                                    Writeln ('[Ar] 3d^10 4s^2 4p^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                33: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ARSENIC               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('33 As');
                                    Writeln ('Non-Metal');
                                    Writeln ('Relative atomic mass : 74.92');
                                    Writeln ('[Ar] 3d^10 4s^2 4p^3');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                34: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SELENIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('34 Se');
                                    Writeln ('Non-Metal');
                                    Writeln ('Relative atomic mass : 78.97');
                                    Writeln ('[Ar] 3d^10 4s^2 4p^4');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                35: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BROMINE               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('35 Br');
                                    Writeln ('Non-Metal');
                                    Writeln ('Halogen');
                                    Writeln ('Relative atomic mass : 79.90');
                                    Writeln ('[Ar] 3d^10 4s^2 4p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                36: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              KRYPTON               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('36 Kr');
                                    Writeln ('Non-Metal');
                                    Writeln ('Noble gas');
                                    Writeln ('Relative atomic mass : 83.80');
                                    Writeln ('[Ar] 3d^10 4s^2 4p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                37: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              RUBIDIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('37 Rb');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline metal');
                                    Writeln ('Relative atomic mass : 85.47');
                                    Writeln ('[Kr] 5s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                38: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              STRONTIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('38 Sr');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline earth metal');
                                    Writeln ('Relative atomic mass : 87.62');
                                    Writeln ('[Kr] 5s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                39: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               YTTRIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('39 Y');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 88.91');
                                    Writeln ('[Kr] 4d 5s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                40: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ZIRCONIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('40 Zr');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 91.22');
                                    Writeln ('[Kr] 4d^2 5s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                41: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              NIOBIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('41 Nb');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 92.91');
                                    Writeln ('[Kr] 4d^4 5s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                42: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              MOLYBDENUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('42 Mb');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 95.95');
                                    Writeln ('[Kr] 4d^5 5s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                43: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TECHNETIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('43 Tc');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [97]');
                                    Writeln ('[Kr] 4d^5 5s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                44: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              RUTHENIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('44 Ru');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 101.07');
                                    Writeln ('[Kr] 4d^7 5s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                45: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              RHODIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('45 Rh');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 102.91');
                                    Writeln ('[Kr] 4d^8 5s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                46: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              PALLADIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('46 Pd');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 106.42');
                                    Writeln ('[Kr] 4d^10');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                47: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SILVER               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('47 Ag');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 107.87');
                                    Writeln ('[Kr] 4d^10 5s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                48: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              CADMIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('48 Cd');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 112.41');
                                    Writeln ('[Kr] 4d^10 5s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                49: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              INDIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('49 In');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 114.82');
                                    Writeln ('[Kr] 4d^10 5s^2 5p');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                50: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               TIM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('50 Sn');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 118.71');
                                    Writeln ('[Kr] 4d^10 5s^2 5p^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                51: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ANTIMONY               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('51 Sb');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 121.76');
                                    Writeln ('[Kr] 4d^10 5s^2 5p^3');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                52: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TELLURIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('52 Te');
                                    Writeln ('Non-Metal');
                                    Writeln ('Relative atomic mass : 127.60');
                                    Writeln ('[Kr] 4d^10 5s^2 5p^4');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                53: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              IODINE               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('53 I');
                                    Writeln ('Non-Metal');
                                    Writeln ('Halogen');
                                    Writeln ('Relative atomic mass : 126.91');
                                    Writeln ('[Kr] 4d^10 5s^2 5p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                54: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              XENON               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('54 Xe');
                                    Writeln ('Naon-Metal');
                                    Writeln ('Nobel gas');
                                    Writeln ('Relative atomic mass : 131.29');
                                    Writeln ('[Kr] 4d^10 5s^2 5p^6');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                55: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               CAESIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('55 Cs');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline metal');
                                    Writeln ('Relative atomic mass : 132.91');
                                    Writeln ('[Xe] 6s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                56: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BARIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('56 Ba');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline earth metal');
                                    Writeln ('Relative atomic mass : 137.33');
                                    Writeln ('[Xe] 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                57: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              LANTHANUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('57 La');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 138.91');
                                    Writeln ('[Xe] 5d 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                58: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               CERIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('58 Ce');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 140.12');
                                    Writeln ('[Xe] 4f 5d 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                59: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('             PRASEODYMIUM              ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('59 Pr');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 140.91');
                                    Writeln ('[Xe] 4f^3 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                60: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              NEODYMIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('60 Nd');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 144.24');
                                    Writeln ('[Xe] 4f^4 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                61: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              PROMETHIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('61 Pm');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [145]');
                                    Writeln ('[Xe] 4f^5 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                62: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SAMARIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('62 Sm');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 150.36');
                                    Writeln ('[Xe] 4f^6 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                63: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              EUROPIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('63 Eu');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 151.96');
                                    Writeln ('[Xe] 4f^7 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                64: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              GADOLINIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('64 Gd');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 157.25');
                                    Writeln ('[Xe] 4f^7 5d 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                65: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TERBIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('65 Tb');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 158.93');
                                    Writeln ('[Xe] 4f^9 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                66: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              DYSPROSIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('66 Dy');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 162.50');
                                    Writeln ('[Xe] 4f^10 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                67: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              HOLMIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('67 Ho');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 164.93');
                                    Writeln ('[Xe] 4f^11 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                68: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               ERBIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('68 Er');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 167.26');
                                    Writeln ('[Xe] 4f^12 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                69: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               THULIUM                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('69 Tm');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 168.93');
                                    Writeln ('[Xe] 4f^13 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                70: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              YTTERBIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('12 Mg');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 173.05');
                                    Writeln ('[Xe] 4f^14 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                71: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              LUTETIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('71 Lu');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 174.97');
                                    Writeln ('[Xe] 4f^14 5d 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                72: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              HAFNIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('72 Hf');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 178.49');
                                    Writeln ('[Xe] 4f^14 5d^2 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                73: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TANTALUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('73 Ta');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 180.95');
                                    Writeln ('[Xe] 4f^15 5d^3 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                74: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TUNGSTEN               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('74 W');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 183.84');
                                    Writeln ('[Xe] 4f^14 5d^4 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                75: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              RHENIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('75 Re');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 186.21');
                                    Writeln ('[Xe] 4f^14 5d^5 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                76: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              OSMIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('76 Os');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 174.97');
                                    Writeln ('[Xe] 4f^14 5d^6 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                77: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              IRIDIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('77 Ir');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 192.22');
                                    Writeln ('[Xe] 4f^14 5d^7 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                78: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              PLATINUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('78 Pt');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 195.08');
                                    Writeln ('[Xe] 4f^14 5d^9 6s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                79: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              GOLD               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('79 Au');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 196.97');
                                    Writeln ('[Xe] 4f^14 5d^10 6s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                80: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              MERCURY               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('80 Hg');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 200.59');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                81: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              THALIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('71 Lu');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 204.38');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2 6p');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                82: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              LEAD               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('82 Pb');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 207.20');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                83: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BISMUTH               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('83 Bi');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : 208.98');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^3');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                84: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              POLONIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('84 Po');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [209]');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^4');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                85: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ASTATINE               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('85 At');
                                    Writeln ('Non-Metal');
                                    Writeln ('Halogen');
                                    Writeln ('Relative atomic mass : [210]');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                86: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('               RADON                ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('86 Rn');
                                    Writeln ('Non-Metal');
                                    Writeln ('Noble gas');
                                    Writeln ('Relative atomic mass : [222]');
                                    Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^6');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                87: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              FRANCIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('87 Fr');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline metal');
                                    Writeln ('Relative atomic mass : [223]');
                                    Writeln ('[Rn] 7s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                88: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              RADIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('88 Ra');
                                    Writeln ('Metal');
                                    Writeln ('Alkaline earth-metal');
                                    Writeln ('Relative atomic mass : [226]');
                                    Writeln ('[Rn] 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                89: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ACTINIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('89 Ac');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [227]');
                                    Writeln ('[Rn] 6d 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                90: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              THORIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('90 Th');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 232.04');
                                    Writeln ('[Rn] 6d^2 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                91: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              PROTACTINIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('91 Pa');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 231.04');
                                    Writeln ('[Rn] 5f^2 6d 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                92: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              URANIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('92 U');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : 238.03');
                                    Writeln ('[Rn] 5f^3 6d 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                93: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              NEPTUNIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('93 Np');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [237]');
                                    Writeln ('[Rn] 5f^4 6d 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                94: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              PLUTONIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('94 Pu');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [244]');
                                    Writeln ('[Rn] 5f^6 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                95: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              AMERICIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('89 Ac');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [243]');
                                    Writeln ('[Rn] 5f^7 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                96: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              CURIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('96 Cm');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [247]');
                                    Writeln ('[Rn] 5f^7 6d 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                97: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BERKELIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('97 Bk');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [247]');
                                    Writeln ('[Rn] 5f^9 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                98: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              CALIFORNIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('98 Cf');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [251]');
                                    Writeln ('[Rn] 5f^10 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                99: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('             EINSTEINIUM              ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('99 Es');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [252]');
                                    Writeln ('[Rn] 5f^11 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                100: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              FERMIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('100 Fm');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [257]');
                                    Writeln ('[Rn] 5f^12 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                101: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                  Writeln ('              MENDELEVIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('101 Md');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [258]');
                                  Writeln ('[Rn] 5f^13 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              102: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              NOBELIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('102 No');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [259]');
                                  Writeln ('[Rn] 5f^14 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              103: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              LAWRENCIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('103 Lr');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [262]');
                                  Writeln ('[Rn] 5f^14 6d 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              104: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('             RUTHERFORDIUM              ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('104 Rf');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [267]');
                                  Writeln ('[Rn] 5f^14 6d^2 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              105: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              DUBNIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('105 Db');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [270]');
                                  Writeln ('[Rn] 5f^14 6d^3 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              106: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              SEABORGIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('106 Sg');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [269]');
                                  Writeln ('[Rn] 5f^14 6d^4 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              107: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              BOHRIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('107 Bh');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [270]');
                                  Writeln ('[Rn] 5f^14 6d^5 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              108: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              HASSIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('108 Hs');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [270]');
                                  Writeln ('[Rn] 5f^14 6d^6 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              109: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              MEITNERIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('109 Mt');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [278]');
                                  Writeln ('[Rn] 5f^14 6d^7 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              110: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              DARMSTADIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('110 Ds');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [281]');
                                  Writeln ('[Rn] 5f^14 6d^9 7s');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              111: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              ROENTGENIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('111 Rg');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [281]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              112: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              COPERNICIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('112 Cn');
                                  Writeln ('Metal');
                                  Writeln ('Transition metal');
                                  Writeln ('Relative atomic mass : [285]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              113: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              NIHONIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('113 Nh');
                                  Writeln ('Metal');
                                  Writeln ('Relative atomic mass : [286]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2 7p');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              114: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              FLEVORIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('114 Fl');
                                  Writeln ('Metal');
                                  Writeln ('Relative atomic mass : [289]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^2');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              115: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              MOSCOVIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('115 Mc');
                                  Writeln ('Metal');
                                  Writeln ('Relative atomic mass : [289]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^3');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              116: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              LIVERMORIUM               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('116 Lv');
                                  Writeln ('Metal');
                                  Writeln ('Relative atomic mass : [293]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^4');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              117: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              TENESSINE               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('117 Ts');
                                  Writeln ('Metal');
                                  Writeln ('Relative atomic mass : [293]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^5');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              118: begin
                                Repeat
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 PERIODIC TABLE                                   ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (2);
                                  Writeln ('              OGANESSON               ');
                                  textbackground (7);
                                  Writeln ('');
                                  Writeln ('118 Og');
                                  Writeln ('Metal');
                                  Writeln ('Relative atomic mass : [294]');
                                  Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^6');
                                  Writeln ('');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                Until (c11=#27);
                              end;
                              Else begin
                                Writeln ('Invalid atomic number.');
                                Writeln ('');
                                Writeln ('[ENTER] Repeat');
                                  Writeln ('[ESC] Return');
                                  c11:=readkey
                                end;
                              End;
                            Until (c11=#27);
                          end;
                          //constantes fisicas fundamentais
                          '3': begin
                            Repeat
                              clrscr;
                              Writeln ('');
                              Writeln ('');
                              Textbackground (6);
                              Writeln ('                                                                                  ');
                              Writeln ('                      FUNDAMENTAL PHYSICAL CONSTANTS                              ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln ('');
                              Writeln ('');
                              Writeln ('Mass heat capacity: c = 4,18*10^3 (J/Kg/ºC)');
                              Writeln ('');
                              Writeln ('Avogadro number: Na = 6,02*10^23 (mol)');
                              Writeln ('');
                              Writeln ('Universal gravitational constant: G = 6,67*10^-11 (N/m^2/Kg)');
                              Writeln ('');
                              Writeln ('Index of air refraction: n = 1,000');
                              Writeln ('');
                              Writeln ('Gravitational acceleration of a body on the Earths surface: g = 10 (m/s^2)');
                              Writeln ('');
                              Writeln ('Modulus of the speed of light propagation in vacuum: c = 3,00*10^8 (m/s)');
                              Writeln ('');
                              Writeln ('Ionic product of water (at 25 ºC): Kw = 1,0*10^-14');
                              Writeln ('');
                              Writeln ('Molar volume of a gas (PTN): Vm = 22,4 (dm^3/mol)');
                              Writeln ('');
                              Writeln ('[ENTER] Next page');
                              Writeln ('[ESC] Return');
                              c12:= readkey;
                              Case c12 of
                                #13: begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                      FUNDAMENTAL PHYSICAL CONSTANTS                              ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (6);
                                    Writeln ('           ASTRONOMIC DATA            ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('Earths average radius: 6,37*10^4 (m)');
                                    Writeln ('');
                                    Writeln ('Average Earth-sun distance: 1,50*10^11 (m)');
                                    Writeln ('');
                                    Writeln ('Earths mass: 5,97*10^24 (Kg)');
                                    Writeln ('');
                                    Writeln ('Suns mass: 1,99*10^30 (Kg)');
                                    Writeln ('');
                                    Writeln ('[ESC] Previous page');
                                    c13:= readkey;
                                  Until (c13=#27);
                                end;
                              End;
                            Until (c12=#27);
                          end;
                          //formulas
                          '4': begin
                            Repeat
                              clrscr;
                              Writeln ('');
                              Writeln ('');
                              Textbackground (3);
                              Writeln ('                                                                                  ');
                              Writeln ('                                    FORMULAS                                      ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln ('');
                              Writeln ('');
                              Writeln ('[1] Physics');
                              Writeln ('[2] Chemestry');
                              Writeln ('[ESC] Return');
                              c14:= readkey;
                              Case c14 of
                                '1': begin;
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                    FORMULAS                                      ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('           PHYSICS            ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('Chose the domain:');
                                    Writeln ('');
                                    Writeln ('[1] Energy');
                                    Writeln ('[2] Mechanics');
                                    Writeln ('[3] Waves and electromagnetism');
                                    Writeln ('[4] Note');
                                    Writeln ('[ESC] Return');
                                    c15:= readkey;
                                    Case c15 of
                                      '1': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                              PHYSICS FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('        DOMAIN - ENERGY         ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln (' Ec=1/2*m*v^2        Epg=m*g*h           Em=Ec+Ep');
                                          Writeln ('');
                                          Writeln (' W=F*d*cosx          WFr=(delta)Ec       WFg=-(delta)Epg');
                                          Writeln ('');
                                          Writeln (' U=RI                P=RI^2              U=e-rI');
                                          Writeln ('');
                                          Writeln (' E=m*c*(delta)T      (delta)U=W+Q        Er=P/A');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c16:= readkey;
                                        Until (c16=#27);
                                      end;
                                      '2': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                              PHYSICS FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('        DOMAIN - MECHANICS         ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln (' x=x0+v0t+1/2at^2      v=v0+at');
                                          Writeln ('');
                                          Writeln (' ac=v^2/r              w=2pi/T            v=w*r');
                                          Writeln ('');
                                          Writeln (' F=ma                 Fg=G*(m1*m2/r^2');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c16:= readkey;
                                        Until (c16=#27);
                                      end;
                                      '3': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                              PHYSICS FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('    DOMAIN - WAVES AND ELECTROMAGNETISM     ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln (' (lambda)=V/f    (fi)m=B*A*cosx      |ei|=(delta)(fi)/(delta)t ');
                                          Writeln ('');
                                          Writeln (' n=c/v            n1*sinx1=n2*sinx2 ');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c16:= readkey;
                                        Until (c16=#27);
                                      end;
                                      '4': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                              PHYSICS FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('            NOTE             ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('The words in parentheses mean the corresponding Greek letters on the formula.');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c16:= readkey;
                                        Until (c16=#27);
                                      end;
                                    End;
                                  Until (c15=#27);
                                end;
                                '2': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                    FORMULAS                                      ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('           CHEMESTRY            ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('Choose the domain:');
                                    Writeln ('');
                                    Writeln ('[1] Quantity, mass and volume');
                                    Writeln ('[2] Solutions');
                                    Writeln ('[3] Note');
                                    Writeln ('[ESC] Return');
                                    c17:= readkey;
                                    Case c17 of
                                      '1': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                            CHEMESTRY FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('    DOMAIN - QUANTITY, MASS AND VOLUME     ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln (' n=N/Na          M=m/n          Vm=V/n          p=m/V');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c18:= readkey;
                                        Until (c18=#27);
                                      end;
                                      '2': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                            CHEMESTRY FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('          DOMAIN - SOLUTIONS           ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln (' c=n/V        Xa=na/ntotal       pH= -log {[H3O+]/moldm^-3} ');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c18:= readkey;
                                        Until (c18=#27);
                                      end;
                                      '3': begin
                                        Repeat
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          Textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                            CHEMESTRY FORMULAS                                    ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('              NOTE               ');
                                          textbackground (7);
                                          Writeln ('');
                                          Writeln ('The words in parentheses mean the corresponding Greek letters in the formulas.');
                                          Writeln ('');
                                          Writeln ('[ESC] Return');
                                          c18:= readkey;
                                        Until (c18=#27);
                                      end;
                                    End;
                                  Until (c17=#27);
                                end;
                              End;
                            Until (c14=#27);
                            clrscr;
                          end;
                          //notas
                          '5': begin
                            Repeat
                              clrscr;
                              Writeln ('');
                              Writeln ('');
                              Textbackground (4);
                              Writeln ('                                                                                  ');
                              Writeln ('                                     NOTES                                        ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln ('');
                              Writeln ('');
                              Writeln ('[1] Open note 1');
                              Writeln ('[2] Open note 2');
                              Writeln ('[3] Open note 3');
                              Writeln ('[ESC] Return');
                              c6:= readkey;
                              Case c6 of
                                '1': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (4);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                  NOTE 1                                          ');
                                    Writeln ('                                                                                  ');
                                    Textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    Writeln (nota1);
                                    Writeln ('');
                                    Writeln ('[1] Edit note 1 (current will be deleted)');
                                    Writeln ('[ESC] Return');
                                    c7:= readkey;
                                    Case c7 of
                                      '1': begin
                                        Writeln ('');
                                        textbackground (4);
                                        Writeln ('         NEW NOTE 1          ');
                                        textbackground (7);
                                        Writeln ('');
                                        Writeln ('After write: ');
                                        Writeln ('[ENTER] Save and return');
                                        Writeln ('');
                                        Readln (nota1);
                                        Writeln ('');
                                      end;
                                    End;
                                  Until c7=#27
                                end;
                                '2': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (4);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                  NOTE 2                                          ');
                                    Writeln ('                                                                                  ');
                                    Textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    Writeln (nota2);
                                    Writeln ('');
                                    Writeln ('[1] Edit note 2 (current will be deleted)');
                                    Writeln ('[ESC] Return');
                                    c7:= readkey;
                                    Case c7 of
                                      '1': begin
                                        Writeln ('');
                                        textbackground (4);
                                        Writeln ('         NEW NOTE 2          ');
                                        textbackground (7);
                                        Writeln ('');
                                        Writeln ('After write: ');
                                        Writeln ('[ENTER] Save and return');
                                        Writeln ('');
                                        Readln (nota2);
                                        Writeln ('');
                                      end;
                                    End;
                                  Until c7=#27
                                end;
                                '3': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (4);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                  NOTE 3                                          ');
                                    Writeln ('                                                                                  ');
                                    Textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    Writeln (nota3);
                                    Writeln ('');
                                    Writeln ('[1] Edit note 3 (current will be deleted)');
                                    Writeln ('[ESC] Return');
                                    c7:= readkey;
                                    Case c7 of
                                      '1': begin
                                        Writeln ('');
                                        textbackground (4);
                                        Writeln ('         NEW NOTE 3          ');
                                        textbackground (7);
                                        Writeln ('');
                                        Writeln ('After write: ');
                                        Writeln ('[ENTER] Save and return');
                                        Writeln ('');
                                        Readln (nota3);
                                        Writeln ('');
                                      end;
                                    End;
                                  Until c7=#27
                                end;
                              End;
                            Until c6=#27
                          end;
                          '6': begin
                            Repeat
                              clrscr;
                              Writeln ('');
                              Writeln ('');
                              textbackground (3);
                              Writeln ('                                                                                  ');
                              Writeln ('                                   CLOCK                                          ');
                              Writeln ('                                                                                  ');
                              Textbackground (7);
                              Writeln ('');
                              Writeln ('');
                              GetTime(hora, minuto, segundo, msegundo);
                              Writeln(hora, 'h', minuto, 'min');
                              GetDate(ano, mes, dia, diaSemana);
                              Writeln(dia, '/', mes, '/', ano);
                              Writeln ('');
                              Writeln ('[ENTER] Refresh screen');
                              Writeln ('[1] Timer');
                              Writeln ('[2] Chronometer');
                              Writeln ('[ESC] Return');
                              c22:= readkey;
                              Case c22 of
                                '1': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                   CLOCK                                          ');
                                    Writeln ('                                                                                  ');
                                    Textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('             TIMER             ');
                                    textbackground (7);
                                    Writeln ('');
                                    write ('Set time (s): ');
                                    read (tempo);
                                    Repeat
                                      Begin
                                        delay (1000);
                                        clrscr;
                                        Writeln ('');
                                        Writeln ('');
                                        textbackground (3);
                                        Writeln ('                                                                                  ');
                                        Writeln ('                                  CLOCK                                         ');
                                        Writeln ('                                                                                  ');
                                        Textbackground (7);
                                        Writeln ('');
                                        Writeln ('');
                                        textbackground (3);
                                        Writeln ('             TIMER             ');
                                        textbackground (7);
                                        Writeln ('');
                                        writeln (tempo,' seconds left');
                                        tempo := tempo - 1;
                                      End;
                                    Until (tempo=-1);
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                   CLOCK                                          ');
                                    Writeln ('                                                                                  ');
                                    Textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('             TIMER             ');
                                    textbackground (7);
                                    writeln ('');
                                    Writeln ('Times over');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c21:= readkey;
                                  Until (c21=#27);
                                end;
                                '2': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                   CLOCK                                          ');
                                    Writeln ('                                                                                  ');
                                    Textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('          CHRONOMETER          ');
                                    textbackground (7);
                                    writeln ('');
                                    Writeln ('[ENTER] Start');
                                    Writeln ('[ESC] Return');
                                    tempo1:=0;
                                    c20:=readkey;
                                    Case c20 of
                                      #13: begin
                                        Repeat
                                          delay (1000);
                                          clrscr;
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                                   CLOCK                                          ');
                                          Writeln ('                                                                                  ');
                                          Textbackground (7);
                                          Writeln ('');
                                          Writeln ('');
                                          textbackground (3);
                                          Writeln ('          CHRONOMETER          ');
                                          textbackground (7);
                                          writeln ('');
                                          tempo1:=tempo1 + 1;
                                          Writeln (tempo1, ' seconds');
                                          Writeln ('');
                                          Writeln ('[SPACE] Stop');
                                        Until keypressed;
                                      end;
                                    End;
                                  Until (c20=#27);
                                end;
                              End;
                            Until (c22=#27);
                          end;
                          '7': begin
                            Repeat
                              clrscr;
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (5);
                              Writeln ('                                                                                  ');
                              Writeln ('                                  LUCKS TEST                                      ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln (' ');
                              Writeln (' ');
                              Writeln ('[1] Play');
                              Writeln ('[2] Rules');
                              Writeln ('[ESC] Return');
                              c23:= readkey;
                              Case c23 of
                                '1': begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (5);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                  LUCKS TEST                                      ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    Writeln ('      This is your oponents deck                            This is your deck');
                                    Randomize;
                                    For y:=1 to 1 do
                                    begin
                                      num1:=random (4)+3;
                                      num2:=random (4)+3;
                                      num3:=num1 + random (5)+3;
                                      num4:=num2 + random (5)+3;
                                      If (num1<10) and (num2<10) then
                                      begin
                                        Writeln ('                _________                                       _________');
                                        Writeln ('               |         |                                     |         |');
                                        Writeln ('               |         |                                     |         |');
                                        Writeln ('               |         |                                     |         |');
                                        Writeln ('               |    ',num1,'    |                                     |    ',num2,'    |');
                                        Writeln ('               |         |                                     |         |');
                                        Writeln ('               |         |                                     |         |');
                                        Writeln ('               |_________|                                     |_________|');
                                      end;
                                      Writeln('');
                                      Writeln('');
                                      Writeln ('Do you want another card? (y/n)');
                                      Readln (resp2);
                                      Case resp2 of
                                        'y': begin
                                          clrscr;
                                          Writeln (' ');
                                          Writeln (' ');
                                          textbackground (5);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                                 LUCKS GAME                                       ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln (' ');
                                          Writeln (' ');
                                          Writeln ('      This is your oponents deck                            This is your deck');
                                          If (num3>=10) and (num4<10) then
                                          begin
                                            Writeln ('            __________                                          _________');
                                            Writeln ('           |          |                                        |         |');
                                            Writeln ('           |          |                                        |         |');
                                            Writeln ('           |          |                                        |         |');
                                            Writeln ('           |    ',num3,'    |                                        |    ',num4,'    |');
                                            Writeln ('           |          |                                        |         |');
                                            Writeln ('           |          |                                        |         |');
                                            Writeln ('           |__________|                                        |_________|');
                                          end
                                          else
                                          If (num4>=10) and (num3<10) then
                                          begin
                                            Writeln ('             _________                                          __________');
                                            Writeln ('            |         |                                        |          |');
                                            Writeln ('            |         |                                        |          |');
                                            Writeln ('            |         |                                        |          |');
                                            Writeln ('            |    ',num3,'    |                                        |    ',num4,'    |');
                                            Writeln ('            |         |                                        |          |');
                                            Writeln ('            |         |                                        |          |');
                                            Writeln ('            |_________|                                        |__________|');
                                          end
                                          else
                                          If (num3>=10) and (num4>=10) then
                                          begin
                                            Writeln ('             __________                                          __________');
                                            Writeln ('            |          |                                        |          |');
                                            Writeln ('            |          |                                        |          |');
                                            Writeln ('            |          |                                        |          |');
                                            Writeln ('            |    ',num3,'    |                                        |    ',num4,'    |');
                                            Writeln ('            |          |                                        |          |');
                                            Writeln ('            |          |                                        |          |');
                                            Writeln ('            |__________|                                        |__________|');
                                          end
                                          else
                                          If (num3<10) and (num4<10) then
                                          begin
                                            Writeln ('              _________                                         _________');
                                            Writeln ('             |         |                                       |         |');
                                            Writeln ('             |         |                                       |         |');
                                            Writeln ('             |         |                                       |         |');
                                            Writeln ('             |    ',num3,'    |                                       |    ',num4,'    |');
                                            Writeln ('             |         |                                       |         |');
                                            Writeln ('             |         |                                       |         |');
                                            Writeln ('             |_________|                                       |_________|');
                                          end;
                                          If (num3=10) and (num4=10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Both got 10! No winner');
                                          end
                                          else
                                          If (num3=10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('You lost!');
                                          end
                                          else
                                          If (num4=10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Congratulations, you won!');
                                          end
                                          else
                                          If (num3>10) and (num4>10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Both lost!');
                                          end
                                          else
                                          If (num3<10) and (num3>num4) then
                                          begin
                                            Writeln ('');
                                            Writeln ('You lost!');
                                          end
                                          else
                                          If (num4<10) and (num4>num3) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Congratulations, you won!');
                                          end
                                          else
                                          If (num3>10) and (num4<10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Congratulations, you won!');
                                          end
                                          else
                                          If (num3=num4) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Draw!');
                                          end
                                          else
                                          If (num4>10) and (num3<10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('You lost!');
                                          end;
                                        end;
                                        'n': begin
                                          clrscr;
                                          Writeln (' ');
                                          Writeln (' ');
                                          textbackground (5);
                                          Writeln ('                                                                                  ');
                                          Writeln ('                                 LUCKS GAME                                       ');
                                          Writeln ('                                                                                  ');
                                          textbackground (7);
                                          Writeln (' ');
                                          Writeln (' ');
                                          Writeln ('      This is your oponents deck                            This is your deck');
                                          If (num3>=10) and (num2<10) then
                                          begin
                                            Writeln ('                __________                                      _________');
                                            Writeln ('               |          |                                    |         |');
                                            Writeln ('               |          |                                    |         |');
                                            Writeln ('               |          |                                    |         |');
                                            Writeln ('               |    ',num3,'    |                                    |    ',num2,'    |');
                                            Writeln ('               |          |                                    |         |');
                                            Writeln ('               |          |                                    |         |');
                                            Writeln ('               |__________|                                    |_________|');
                                          end
                                          else
                                          If (num3<10) and (num2<10) then
                                          begin
                                            Writeln ('                 _________                                       _________');
                                            Writeln ('                |         |                                     |         |');
                                            Writeln ('                |         |                                     |         |');
                                            Writeln ('                |         |                                     |         |');
                                            Writeln ('                |    ',num3,'    |                                     |    ',num2,'    |');
                                            Writeln ('                |         |                                     |         |');
                                            Writeln ('                |         |                                     |         |');
                                            Writeln ('                |_________|                                     |_________|');
                                          end;
                                          If (num3=10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('You lost!');
                                          end
                                          else
                                          If (num3>10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Congratulations, you won!');
                                          end
                                          else
                                          If (num3>num2) and (num3<10) then
                                          begin
                                            Writeln ('');
                                            Writeln ('You lost!');
                                          end
                                          else
                                          If (num2>num3) then
                                          Begin
                                            Writeln ('');
                                            Writeln ('Congratulations, you won!');
                                          end
                                          else
                                          If (num3=num2) then
                                          begin
                                            Writeln ('');
                                            Writeln ('Draw');
                                          end;
                                        end;
                                      End;  //case1
                                      end; //for
                                      Writeln ('');
                                      Writeln ('[ENTER] Try again');
                                      Writeln ('[ESC] Leave the game');
                                      resp1:= readkey;
                                    Until (resp1=#27)
                                  end;
                                  '2': begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (5);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 LUCKS GAME                                       ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (5);
                                      Writeln ('               RULES               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('In this game you can see your deck, on the right, with a number, and, on the left,');
                                      Writeln ('the opponents deck, also with a number. The number in each deck will always be ');
                                      Writeln ('random. To win the game i tis necessary to obtain the number 10 or the opponents ');
                                      Writeln ('number exceeds 10. When neither of the two decks obtain the number 10 or higher, ');
                                      Writeln ('whoever has the highest number wins.');
                                      Writeln ('');
                                      Writeln ('1st Note: If you agree on receiving one more card, a random number will be added ');
                                      Writeln ('to the number of each of the decks.  ');
                                      Writeln ('2nd Note: If you choose not to receive a card, a random number will be added to ');
                                      Writeln ('the opponents deck number and if no one gets the number 10 or higher, whoever has ');
                                      Writeln ('the highest number wins  ');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      resp3:= readkey;
                                    Until (resp3=#27);
                                  end;
                                End;
                              Until (c23=#27);
                            end;
                            '8': begin
                              Repeat
                                clrscr;
                                Writeln (' ');
                                Writeln (' ');
                                textbackground (5);
                                Writeln ('                                                                                  ');
                                Writeln ('                                    ABOUT                                         ');
                                Writeln ('                                                                                  ');
                                textbackground (7);
                                Writeln (' ');
                                Writeln (' ');
                                Writeln ('StudyPartner is a program developed by Simao Sousa and Joao Cova.');
                                Writeln ('Current version: v1.0');
                                Writeln ('09/12/2022');
                                Writeln ('All rights reserved');
                                Writeln (' ');
                                Writeln ('[ESC] Return');
                                c3:= readkey;
                              Until (c3=#27)
                            end;
                          End;
                        Until (app=#27);
                        If app=#27 then exit;
                      end;
                      //alemão
                      '3': begin
                        Repeat
                          clrscr;
                          Writeln (' ');
                          Writeln (' ');
                          textbackground (1);
                          Writeln ('                                                                                  ');
                          Writeln ('                                STUDYPARTNER                                      ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln (' ');
                          Writeln (' ');
                          textbackground (1);
                          Writeln ('             HAUPTMENÜ               ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('[1] Taschenrechner');
                          Writeln ('[2] Periodensystem');
                        Writeln ('[3] Grundlegende physikalische Konstanten');
                        Writeln ('[4] Formeln');
                        Writeln ('[5] Anmerkungen');
                        Writeln ('[6] Uhr');
                        Writeln ('[7] Entspannen');
                        Writeln ('[8] Um');
                        Writeln ('[ESC] Ausgang');
                        Writeln (' ');
                        app:= readkey;
                        //escolha aplicaçao
                        Case app of
                          //calculadora
                          '1': begin
                            Repeat
                              clrscr;
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (6);
                              Writeln ('                                                                                  ');
                              Writeln ('                                TASCHENRECHNER                                    ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln (' ');
                              Writeln (' ');
                              Writeln ('[1] Summe');
                              Writeln ('[2] Subtraktion');
                              Writeln ('[3] Multiplikation');
                              Writeln ('[4] Aufteilung');
                              Writeln ('[5] Gleichung zweiten Grades lösen');
                              Writeln ('[6] Multiplikationstabelle');
                              Writeln ('[7] Trigonometrie');
                              Writeln ('[ESC] Zurückkehren');
                              Writeln (' ');
                              appcalc:= readkey;
                              Case appcalc of
                                '1': begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                     SUMME                                        ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    Writeln ('Letzte Summe = ',soma:0:2);
                                    Writeln ('');
                                    Write ('Wie viele Zahlen sind an der Summe beteiligt? ');
                                    Readln (n);
                                    Writeln ('');
                                    soma:= 0;
                                    For i2:=1 to n do
                                    begin
                                      Write ('num',i2,' = ');
                                      Readln (num);
                                      soma := soma + num;
                                    end;
                                    Writeln ('');
                                    Writeln ('Summe = ',soma:0:2);
                                    Writeln ('');
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c5:= readkey;
                                  Until c5=#27
                                end;
                                '2': begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                    SUBTRAKTION                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    Writeln ('Letzter subtraktion = ',subtracao:0:2);
                                    Writeln ('');
                                    Write ('num1 = ');
                                    Readln (number1);
                                    Write ('num2 = ');
                                    Readln (number2);
                                    Writeln ('');
                                    subtracao := number1-number2;
                                    Writeln (number1:0:2,'-',number2:0:2,'=',subtracao:0:2);
                                    Writeln ('');
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c8:= readkey;
                                  Until (c8=#27)
                                end;
                                '3': begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                  MULTIPLIKATION                                  ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    Writeln ('Letzte Multiplikation = ',produto:0:2);
                                    Writeln ('');
                                    Write ('num1 = ');
                                    Read (n1);
                                    Write ('num2 = ');
                                    Readln (n2);
                                    Writeln ('');
                                    produto := n1*n2;
                                    Writeln (n1:0:2,'x',n2:0:2,'=',produto:0:2);
                                    Writeln ('');
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c9:= readkey;
                                  Until (c9=#27)
                                end;
                                '4': begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                    AUFTEILUNG                                    ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    Writeln ('Letzer aufteilung = ',quociente:0:2);
                                    Writeln ('');
                                    Write ('num1 = ');
                                    Read (numb1);
                                    Write ('num2 = ');
                                    Read (numb2);
                                    quociente := numb1/numb2;
                                    Writeln (numb1:0:2,'/',numb2:0:2,'=',quociente:0:2);
                                    Writeln ('');
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c10:= readkey;
                                  Until c10=#27
                                end;
                                '5': begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                        GLEICHUNG ZWEITEN GRADES LÖSEN                            ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    Write ('a=');
                                    Read (a);
                                    Write ('b=');
                                    Read (b);
                                    Write ('c=');
                                    Read (c);
                                    Writeln (' ');
                                    delta:=(b*b-4*a*c);
                                    Writeln (a,'X^2+(',b,')X+(',c,')=0');
                                    Writeln (' ');
                                    Writeln ('delta=',delta:0:0);
                                    If (delta<0) then begin
                                      Writeln (' ');
                                      Writeln ('Unmögliche Gleichung');
                                      Writeln ('Keine wirklichen Wurzeln');
                                      Writeln (' ');
                                    end;
                                    If (delta=0) then begin
                                      x:=(-b/(2*a));
                                      Writeln (' ');
                                      Writeln ('x=',x:0:2,' (x2)');
                                      Writeln (' ');
                                    end;
                                    If (delta>0) then begin
                                      x1:=(-b-sqrt(delta))/(2*a);
                                      x2:=(-b+sqrt(delta))/(2*a);
                                      Writeln (' ');
                                      Writeln ('x1=',x1:0:2);
                                      Writeln ('x2=',x2:0:2);
                                      Writeln (' ');
                                    end;
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c1:= readkey;
                                  Until (c1= #27);
                                end;
                                '6': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                            MULTIPLIKATIONSTABELLE                                ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    Write ('Welche Nummer? ');
                                    Readln (tabuada);
                                    Writeln ('');
                                    textbackground (6);
                                    Writeln ('    ',tabuada,' MULTIPLIKATIONSTABELLE     ');
                                    textbackground (7);
                                    Writeln ('');
                                    For i:=1 to 10 do
                                    Begin
                                      Writeln (tabuada,'x',i,'=',tabuada*i);
                                    end;
                                    Writeln ('');
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c2:= readkey;
                                  Until (c2=#27)
                                end;
                                '7': begin
                                  Repeat
                                    clrscr;
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (6);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 TRIGONOMETRIE                                    ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    Write ('Winkel (Grad) = ');
                                    Readln (graus);
                                    Writeln ('');
                                    graus_rad := graus*(3.14159/180);
                                    Writeln ('sen (',graus:0:0,') = ',sin(graus_rad):0:2);
                                    Writeln ('cos (',graus:0:0,') = ',cos(graus_rad):0:2);
                                    If (graus=90) or (graus=270) then begin
                                      Writeln ('tan (',graus:0:0,') = [Mathematischer Fehler]');
                                    end
                                    Else
                                    begin
                                      tan := sin(graus_rad)/cos(graus_rad);
                                      Writeln ('tan (',graus:0:0,') = ',tan:0:2);
                                    end;
                                    Writeln ('');
                                    Writeln ('[ENTER] Wiederholen');
                                    Writeln ('[ESC] Zurückkehren');
                                    c4:= readkey;
                                  Until (c4=#27)
                                end;
                              End;
                            Until (appcalc=#27);
                          end;
                          //tabela periodica
                          '2': begin
                            clrscr;
                            Writeln (' ');
                            Writeln (' ');
                            textbackground (2);
                            Writeln ('                                                                                  ');
                            Writeln ('                                 PERIODENSYSTEM                                   ');
                            Writeln ('                                                                                  ');
                            textbackground (7);
                            Writeln (' ');
                            Writeln (' ');
                            Writeln ('ACHTUNG: Das Periodensystem ist nur in Englisch verfügbar');
                            Writeln ('');
                            Writeln ('[ENTER] Fortsetzen');
                            c24:= readkey;
                            If c24=#13 then begin
                              Repeat
                                clrscr;
                                Writeln (' ');
                                Writeln (' ');
                                textbackground (2);
                                Writeln ('                                                                                  ');
                                Writeln ('                                 PERIODIC TABLE                                   ');
                                Writeln ('                                                                                  ');
                                textbackground (7);
                                Writeln (' ');
                                Writeln (' ');
                                textbackground (2);
                                Writeln ('          SEARCH ELEMENT           ');
                                textbackground (7);
                                Writeln ('');
                                Write ('Insert atomic number: ');
                                Readln (atom);
                                Case atom of
                                  1: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('            HIDROGEN             ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('1 H');
                                      Writeln ('Non-metal');
                                      Writeln ('Relative atomic mass : 1.01');
                                      Writeln ('1s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  2: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               HELIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('2 He');
                                      Writeln ('Non-metal');
                                      Writeln ('Noble gas');
                                      Writeln ('Relative atomic mass : 4.01');
                                      Writeln ('1s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  3: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               LITHIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('3 Li');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline metal');
                                      Writeln ('Relative atomic mass : 6.94');
                                      Writeln ('[He] 2s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  4:  begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              BERILIUM              ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('4 Be');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline earth metal');
                                      Writeln ('Relative atomic mass : 9.01');
                                      Writeln ('[He] 2s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  5: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              BORON               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('5 B');
                                      Writeln ('Non-metal');
                                      Writeln ('Relative atomic mass : 10.81');
                                      Writeln ('[He] 2s^2 2p');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  6: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('             CARBON              ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('6 C');
                                      Writeln ('Non-metal');
                                      Writeln ('Relative atomic mass : 12.01');
                                      Writeln ('[He] 2s^2 2p^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  7: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('             NITROGEN             ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('7 N');
                                      Writeln ('Non-metal');
                                      Writeln ('Relative atomic mass : 14.01');
                                      Writeln ('[He] 2s^2 2p^3');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  8: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              OXIGEN              ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('8 O');
                                      Writeln ('Non-metal');
                                      Writeln ('Relative atomic mass : 16.00');
                                      Writeln ('[He] 2s^2 2p^4');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  9: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               FLUORINE               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('9 F');
                                      Writeln ('Non-Metal');
                                      Writeln ('Halogen');
                                      Writeln ('Relative atomic mass : 19.00');
                                      Writeln ('[He] 2s^2 2p^5');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  10: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                NEON                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('10 Ne');
                                      Writeln ('Non-Metal');
                                      Writeln ('Noble gas');
                                      Writeln ('Relative atomic mass : 20.18');
                                      Writeln ('[He] 2s^2 2p^6');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  11: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                SODIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('11 Na');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline metal');
                                      Writeln ('Relative atomic mass : 22.99');
                                      Writeln ('[Ne] 3s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  12: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              MAGNESIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('12 Mg');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline earth metal');
                                      Writeln ('Relative atomic mass : 24.31');
                                      Writeln ('[Ne] 3s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  13: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ALUMINIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('13 Al');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 26.98');
                                      Writeln ('[Ne] 3s^2 3p');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  14: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              SILICON               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('14 Si');
                                      Writeln ('Non-Metal');
                                      Writeln ('Relative atomic mass : 28.09');
                                      Writeln ('[Ne] 3s^2 3p^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  15: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              PHOSPHORUS               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('15 P');
                                      Writeln ('Non-Metal');
                                      Writeln ('Relative atomic mass : 30.97');
                                      Writeln ('[Ne] 3s^2 3p^3');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  16: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              SULFUR               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('16 S');
                                      Writeln ('Non-Metal');
                                      Writeln ('Relative atomic mass : 32.06');
                                      Writeln ('[Ne] 3s^2 3p^4');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  17: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               CHLORINE                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('17 Cl');
                                      Writeln ('Non-Metal');
                                      Writeln ('Halogen');
                                      Writeln ('Relative atomic mass : 35.45');
                                      Writeln ('[Ne] 3s^2 3p^5');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  18: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               ARGON                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('18 Ar');
                                      Writeln ('Non-Metal');
                                      Writeln ('Noble gas');
                                      Writeln ('Relative atomic mass : 39.95');
                                      Writeln ('[Ne] 3s^2 3p^6');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  19: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              POTASSIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('19 K');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline metal');
                                      Writeln ('Relative atomic mass : 39.10');
                                      Writeln ('[Ar] 4s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  20: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              CALCIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('20 Ca');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline earth metal');
                                      Writeln ('Relative atomic mass : 40.08');
                                      Writeln ('[Ar] 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  21: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              SCANDIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('21 Sc');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 44.96');
                                      Writeln ('[Ar] 3d 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  22: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              TITANIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('22 Ti');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 47.87');
                                      Writeln ('[Ar] 3d^2 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  23: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              VANADIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('23 V');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 50.94');
                                      Writeln ('[Ar] 3d^3 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  24: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              CHROMIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('24 Cr');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 52.00');
                                      Writeln ('[Ar] 3d^5 4s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  25: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              MANGANESE               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('25 Mn');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 54.94');
                                      Writeln ('[Ar] 3d^5 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  26: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              IRON               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('26 Fe');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 55.85');
                                      Writeln ('[Ar] 3d^6 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  27: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              COBALT               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('27 Co');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 58.93');
                                      Writeln ('[Ar] 3d^7 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  28: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              NICKEL               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('28 Ni');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 58.69');
                                      Writeln ('[Ar] 3d^8 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  29: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              COPPER               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('29 Cu');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 63.55');
                                      Writeln ('[Ar] 3d^10 4s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  30: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ZINC               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('30 Zn');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 65.38');
                                      Writeln ('[Ar] 3d^10 4s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  31: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              GALLIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('31 Ga');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 69.72');
                                      Writeln ('[Ar] 3d^10 4s^2 4p');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  32: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              GERMANIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('32 Ge');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 72.63');
                                      Writeln ('[Ar] 3d^10 4s^2 4p^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  33: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ARSENIC               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('33 As');
                                      Writeln ('Non-Metal');
                                      Writeln ('Relative atomic mass : 74.92');
                                      Writeln ('[Ar] 3d^10 4s^2 4p^3');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  34: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              SELENIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('34 Se');
                                      Writeln ('Non-Metal');
                                      Writeln ('Relative atomic mass : 78.97');
                                      Writeln ('[Ar] 3d^10 4s^2 4p^4');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  35: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              BROMINE               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('35 Br');
                                      Writeln ('Non-Metal');
                                      Writeln ('Halogen');
                                      Writeln ('Relative atomic mass : 79.90');
                                      Writeln ('[Ar] 3d^10 4s^2 4p^5');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  36: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              KRYPTON               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('36 Kr');
                                      Writeln ('Non-Metal');
                                      Writeln ('Noble gas');
                                      Writeln ('Relative atomic mass : 83.80');
                                      Writeln ('[Ar] 3d^10 4s^2 4p^5');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  37: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              RUBIDIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('37 Rb');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline metal');
                                      Writeln ('Relative atomic mass : 85.47');
                                      Writeln ('[Kr] 5s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  38: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              STRONTIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('38 Sr');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline earth metal');
                                      Writeln ('Relative atomic mass : 87.62');
                                      Writeln ('[Kr] 5s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  39: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               YTTRIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('39 Y');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 88.91');
                                      Writeln ('[Kr] 4d 5s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  40: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ZIRCONIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('40 Zr');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 91.22');
                                      Writeln ('[Kr] 4d^2 5s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  41: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              NIOBIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('41 Nb');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 92.91');
                                      Writeln ('[Kr] 4d^4 5s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  42: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              MOLYBDENUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('42 Mb');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 95.95');
                                      Writeln ('[Kr] 4d^5 5s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  43: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              TECHNETIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('43 Tc');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [97]');
                                      Writeln ('[Kr] 4d^5 5s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  44: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              RUTHENIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('44 Ru');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 101.07');
                                      Writeln ('[Kr] 4d^7 5s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  45: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              RHODIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('45 Rh');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 102.91');
                                      Writeln ('[Kr] 4d^8 5s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  46: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              PALLADIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('46 Pd');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 106.42');
                                      Writeln ('[Kr] 4d^10');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  47: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              SILVER               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('47 Ag');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 107.87');
                                      Writeln ('[Kr] 4d^10 5s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  48: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              CADMIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('48 Cd');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 112.41');
                                      Writeln ('[Kr] 4d^10 5s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  49: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              INDIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('49 In');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 114.82');
                                      Writeln ('[Kr] 4d^10 5s^2 5p');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  50: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               TIM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('50 Sn');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 118.71');
                                      Writeln ('[Kr] 4d^10 5s^2 5p^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  51: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ANTIMONY               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('51 Sb');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 121.76');
                                      Writeln ('[Kr] 4d^10 5s^2 5p^3');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  52: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              TELLURIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('52 Te');
                                      Writeln ('Non-Metal');
                                      Writeln ('Relative atomic mass : 127.60');
                                      Writeln ('[Kr] 4d^10 5s^2 5p^4');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  53: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              IODINE               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('53 I');
                                      Writeln ('Non-Metal');
                                      Writeln ('Halogen');
                                      Writeln ('Relative atomic mass : 126.91');
                                      Writeln ('[Kr] 4d^10 5s^2 5p^5');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  54: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              XENON               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('54 Xe');
                                      Writeln ('Naon-Metal');
                                      Writeln ('Nobel gas');
                                      Writeln ('Relative atomic mass : 131.29');
                                      Writeln ('[Kr] 4d^10 5s^2 5p^6');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  55: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               CAESIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('55 Cs');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline metal');
                                      Writeln ('Relative atomic mass : 132.91');
                                      Writeln ('[Xe] 6s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  56: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              BARIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('56 Ba');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline earth metal');
                                      Writeln ('Relative atomic mass : 137.33');
                                      Writeln ('[Xe] 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  57: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              LANTHANUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('57 La');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 138.91');
                                      Writeln ('[Xe] 5d 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  58: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               CERIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('58 Ce');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 140.12');
                                      Writeln ('[Xe] 4f 5d 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  59: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('             PRASEODYMIUM              ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('59 Pr');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 140.91');
                                      Writeln ('[Xe] 4f^3 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  60: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              NEODYMIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('60 Nd');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 144.24');
                                      Writeln ('[Xe] 4f^4 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  61: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              PROMETHIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('61 Pm');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [145]');
                                      Writeln ('[Xe] 4f^5 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  62: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              SAMARIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('62 Sm');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 150.36');
                                      Writeln ('[Xe] 4f^6 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  63: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              EUROPIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('63 Eu');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 151.96');
                                      Writeln ('[Xe] 4f^7 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  64: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              GADOLINIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('64 Gd');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 157.25');
                                      Writeln ('[Xe] 4f^7 5d 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  65: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              TERBIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('65 Tb');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 158.93');
                                      Writeln ('[Xe] 4f^9 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  66: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              DYSPROSIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('66 Dy');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 162.50');
                                      Writeln ('[Xe] 4f^10 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  67: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              HOLMIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('67 Ho');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 164.93');
                                      Writeln ('[Xe] 4f^11 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  68: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               ERBIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('68 Er');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 167.26');
                                      Writeln ('[Xe] 4f^12 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  69: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               THULIUM                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('69 Tm');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 168.93');
                                      Writeln ('[Xe] 4f^13 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  70: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              YTTERBIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('12 Mg');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 173.05');
                                      Writeln ('[Xe] 4f^14 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  71: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              LUTETIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('71 Lu');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 174.97');
                                      Writeln ('[Xe] 4f^14 5d 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  72: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              HAFNIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('72 Hf');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 178.49');
                                      Writeln ('[Xe] 4f^14 5d^2 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  73: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              TANTALUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('73 Ta');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 180.95');
                                      Writeln ('[Xe] 4f^15 5d^3 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  74: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              TUNGSTEN               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('74 W');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 183.84');
                                      Writeln ('[Xe] 4f^14 5d^4 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  75: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              RHENIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('75 Re');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 186.21');
                                      Writeln ('[Xe] 4f^14 5d^5 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  76: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              OSMIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('76 Os');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 174.97');
                                      Writeln ('[Xe] 4f^14 5d^6 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  77: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              IRIDIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('77 Ir');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 192.22');
                                      Writeln ('[Xe] 4f^14 5d^7 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  78: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              PLATINUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('78 Pt');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 195.08');
                                      Writeln ('[Xe] 4f^14 5d^9 6s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  79: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              GOLD               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('79 Au');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 196.97');
                                      Writeln ('[Xe] 4f^14 5d^10 6s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  80: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              MERCURY               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('80 Hg');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 200.59');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  81: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              THALIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('71 Lu');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 204.38');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  82: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              LEAD               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('82 Pb');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 207.20');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  83: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              BISMUTH               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('83 Bi');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : 208.98');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^3');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  84: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              POLONIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('84 Po');
                                      Writeln ('Metal');
                                      Writeln ('Relative atomic mass : [209]');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^4');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  85: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ASTATINE               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('85 At');
                                      Writeln ('Non-Metal');
                                      Writeln ('Halogen');
                                      Writeln ('Relative atomic mass : [210]');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^5');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  86: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('               RADON                ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('86 Rn');
                                      Writeln ('Non-Metal');
                                      Writeln ('Noble gas');
                                      Writeln ('Relative atomic mass : [222]');
                                      Writeln ('[Xe] 4f^14 5d^10 6s^2 6p^6');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  87: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              FRANCIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('87 Fr');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline metal');
                                      Writeln ('Relative atomic mass : [223]');
                                      Writeln ('[Rn] 7s');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  88: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              RADIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('88 Ra');
                                      Writeln ('Metal');
                                      Writeln ('Alkaline earth-metal');
                                      Writeln ('Relative atomic mass : [226]');
                                      Writeln ('[Rn] 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  89: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              ACTINIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('89 Ac');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [227]');
                                      Writeln ('[Rn] 6d 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  90: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              THORIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('90 Th');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 232.04');
                                      Writeln ('[Rn] 6d^2 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  91: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              PROTACTINIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('91 Pa');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 231.04');
                                      Writeln ('[Rn] 5f^2 6d 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  92: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              URANIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('92 U');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : 238.03');
                                      Writeln ('[Rn] 5f^3 6d 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  93: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              NEPTUNIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('93 Np');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [237]');
                                      Writeln ('[Rn] 5f^4 6d 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  94: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              PLUTONIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('94 Pu');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [244]');
                                      Writeln ('[Rn] 5f^6 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  95: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              AMERICIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('89 Ac');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [243]');
                                      Writeln ('[Rn] 5f^7 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  96: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              CURIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('96 Cm');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [247]');
                                      Writeln ('[Rn] 5f^7 6d 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  97: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              BERKELIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('97 Bk');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [247]');
                                      Writeln ('[Rn] 5f^9 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  98: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              CALIFORNIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('98 Cf');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [251]');
                                      Writeln ('[Rn] 5f^10 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  99: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('             EINSTEINIUM              ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('99 Es');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [252]');
                                      Writeln ('[Rn] 5f^11 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  100: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('              FERMIUM               ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('100 Fm');
                                      Writeln ('Metal');
                                      Writeln ('Transition metal');
                                      Writeln ('Relative atomic mass : [257]');
                                      Writeln ('[Rn] 5f^12 7s^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Return');
                                      c11:=readkey
                                    Until (c11=#27);
                                  end;
                                  101: begin
                                    Repeat
                                      clrscr;
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                                 PERIODIC TABLE                                   ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln (' ');
                                      Writeln (' ');
                                      textbackground (2);
                                    Writeln ('              MENDELEVIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('101 Md');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [258]');
                                    Writeln ('[Rn] 5f^13 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                102: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              NOBELIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('102 No');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [259]');
                                    Writeln ('[Rn] 5f^14 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                103: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              LAWRENCIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('103 Lr');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [262]');
                                    Writeln ('[Rn] 5f^14 6d 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                104: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('             RUTHERFORDIUM              ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('104 Rf');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [267]');
                                    Writeln ('[Rn] 5f^14 6d^2 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                105: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              DUBNIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('105 Db');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [270]');
                                    Writeln ('[Rn] 5f^14 6d^3 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                106: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              SEABORGIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('106 Sg');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [269]');
                                    Writeln ('[Rn] 5f^14 6d^4 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                107: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              BOHRIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('107 Bh');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [270]');
                                    Writeln ('[Rn] 5f^14 6d^5 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                108: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              HASSIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('108 Hs');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [270]');
                                    Writeln ('[Rn] 5f^14 6d^6 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                109: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              MEITNERIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('109 Mt');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [278]');
                                    Writeln ('[Rn] 5f^14 6d^7 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                110: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              DARMSTADIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('110 Ds');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [281]');
                                    Writeln ('[Rn] 5f^14 6d^9 7s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                111: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              ROENTGENIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('111 Rg');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [281]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                112: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              COPERNICIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('112 Cn');
                                    Writeln ('Metal');
                                    Writeln ('Transition metal');
                                    Writeln ('Relative atomic mass : [285]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                113: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              NIHONIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('113 Nh');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [286]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                114: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              FLEVORIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('114 Fl');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [289]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^2');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                115: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              MOSCOVIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('115 Mc');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [289]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^3');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                116: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              LIVERMORIUM               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('116 Lv');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [293]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^4');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                117: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              TENESSINE               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('117 Ts');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [293]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^5');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                118: begin
                                  Repeat
                                    clrscr;
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                                 PERIODIC TABLE                                   ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln (' ');
                                    Writeln (' ');
                                    textbackground (2);
                                    Writeln ('              OGANESSON               ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('118 Og');
                                    Writeln ('Metal');
                                    Writeln ('Relative atomic mass : [294]');
                                    Writeln ('[Rn] 5f^14 6d^10 7s^2 7p^6');
                                    Writeln ('');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  Until (c11=#27);
                                end;
                                Else begin
                                  Writeln ('Invalid atomic number.');
                                  Writeln ('');
                                  Writeln ('[ENTER] Repeat');
                                    Writeln ('[ESC] Return');
                                    c11:=readkey
                                  end;
                                End;
                              Until (c11=#27);
                            end;
                          end;
                          //constantes fisicas fundamentais
                          '3': begin
                            Repeat
                              clrscr;
                              Writeln ('');
                              Writeln ('');
                              Textbackground (6);
                              Writeln ('                                                                                  ');
                            Writeln ('                    GRUNDLEGENDE PHYSIKALISCHE KONSTANTEN                         ');
                            Writeln ('                                                                                  ');
                            textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            Writeln ('Massenwärmekapazität: c = 4,18*10^3 (J/Kg/ºC)');
                            Writeln ('');
                            Writeln ('Avogadro-Nummer: Na = 6,02*10^23 (mol)');
                            Writeln ('');
                            Writeln ('Universelle Gravitationskonstante: G = 6,67*10^-11 (N/m^2/Kg)');
                            Writeln ('');
                            Writeln ('Index der Luftbrechung: n = 1,000');
                            Writeln ('');
                            Writeln ('Gravitationsbeschleunigung eines Körpers auf der Erdoberfläche: g = 10 (m/s^2)');
                            Writeln ('');
                            Writeln ('Modul der Lichtgeschwindigkeit im Vakuum: c = 3,00*10^8 (m/s)');
                            Writeln ('');
                            Writeln ('Ionenprodukt von Wasser (bei 25 ºC): Kw = 1,0*10^-14');
                            Writeln ('');
                            Writeln ('Molvolumen eines Gases (PTN): Vm = 22,4 (dm^3/mol)');
                            Writeln ('');
                            Writeln ('[ENTER] Nächste Seite');
                            Writeln ('[ESC] Zurückkehren');
                            c12:= readkey;
                            Case c12 of
                              #13: begin
                                Repeat
                                  clrscr;
                                  Writeln ('');
                                  Writeln ('');
                                  Textbackground (6);
                                  Writeln ('                                                                                  ');
                                Writeln ('                    GRUNDLEGENDE PHYSIKALISCHE KONSTANTEN                         ');
                                Writeln ('                                                                                  ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('');
                                textbackground (6);
                                Writeln ('           ASTRONOMISCHE DATEN            ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('Durchschnittlicher Radius der Erde: 6,37*10^4 (m)');
                                Writeln ('');
                                Writeln ('Durchschnittlicher Abstand Erde-Sonne: 1,50*10^11 (m)');
                                Writeln ('');
                                Writeln ('Die Masse der Erde: 5,97*10^24 (Kg)');
                                Writeln ('');
                                Writeln ('Masse der Sonne: 1,99*10^30 (Kg)');
                                Writeln ('');
                                Writeln ('[ESC] Zurückkehren');
                                c13:= readkey;
                              Until (c13=#27);
                            end;
                          End;
                        Until (c12=#27);
                      end;
                      //formulas
                      '4': begin
                        Repeat
                          clrscr;
                          Writeln ('');
                          Writeln ('');
                          Textbackground (3);
                          Writeln ('                                                                                  ');
                          Writeln ('                                     FORMELN                                      ');
                          Writeln ('                                                                                  ');
                          textbackground (7);
                          Writeln ('');
                          Writeln ('');
                          Writeln ('[1] Physik');
                          Writeln ('[2] Chemie');
                          Writeln ('[ESC] Zurückkehren');
                          c14:= readkey;
                          Case c14 of
                            '1': begin;
                              Repeat
                                clrscr;
                                Writeln ('');
                                Writeln ('');
                                Textbackground (3);
                                Writeln ('                                                                                  ');
                                Writeln ('                                     FORMULN                                      ');
                                Writeln ('                                                                                  ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('');
                                textbackground (3);
                                Writeln ('           PHYSIK            ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('Domäne auswählen:');
                                Writeln ('');
                                Writeln ('[1] Energie');
                                Writeln ('[2] Mechanik');
                                Writeln ('[3] Wellen und Elektromagnetismus');
                                Writeln ('[4] Notiz');
                                Writeln ('[ESC] Rückkehr');
                                c15:= readkey;
                                Case c15 of
                                  '1': begin
                                    Repeat
                                      clrscr;
                                      Writeln ('');
                                      Writeln ('');
                                      Textbackground (3);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                               PHYSIK-FORMELN                                     ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('');
                                      textbackground (3);
                                      Writeln ('        HERRSCHAFT - ENERGIE         ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln (' Ec=1/2*m*v^2        Epg=m*g*h           Em=Ec+Ep');
                                      Writeln ('');
                                      Writeln (' W=F*d*cosx          WFr=(delta)Ec       WFg=-(delta)Epg');
                                      Writeln ('');
                                      Writeln (' U=RI                P=RI^2              U=e-rI');
                                      Writeln ('');
                                      Writeln (' E=m*c*(delta)T      (delta)U=W+Q        Er=P/A');
                                      Writeln ('');
                                      Writeln ('[ESC] Zurückkehren');
                                      c16:= readkey;
                                    Until (c16=#27);
                                  end;
                                  '2': begin
                                    Repeat
                                      clrscr;
                                      Writeln ('');
                                      Writeln ('');
                                      Textbackground (3);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                               PHYSIK-FORMELN                                     ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('');
                                      textbackground (3);
                                      Writeln ('        DOMÄNE - MECHANIK         ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln (' x=x0+v0t+1/2at^2      v=v0+at');
                                      Writeln ('');
                                      Writeln (' ac=v^2/r              w=2pi/T            v=w*r');
                                      Writeln ('');
                                      Writeln (' F=ma                 Fg=G*(m1*m2/r^2');
                                      Writeln ('');
                                      Writeln ('[ESC] Zurückkehren');
                                      c16:= readkey;
                                    Until (c16=#27);
                                  end;
                                  '3': begin
                                    Repeat
                                      clrscr;
                                      Writeln ('');
                                      Writeln ('');
                                      Textbackground (3);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                               PHYSIK-FORMELN                                     ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('');
                                      textbackground (3);
                                      Writeln ('    DOMAIN - WELLEN UND ELEKTROMAGNETISMUS     ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln (' (lambda)=V/f    (fi)m=B*A*cosx      |ei|=(delta)(fi)/(delta)t ');
                                      Writeln ('');
                                      Writeln (' n=c/v            n1*sinx1=n2*sinx2 ');
                                      Writeln ('');
                                      Writeln ('[ESC] Zurückkehren');
                                      c16:= readkey;
                                    Until (c16=#27);
                                  end;
                                  '4': begin
                                    Repeat
                                      clrscr;
                                      Writeln ('');
                                      Writeln ('');
                                      Textbackground (3);
                                      Writeln ('                                                                                  ');
                                      Writeln ('                               PHYSIK-FORMELN                                     ');
                                      Writeln ('                                                                                  ');
                                      textbackground (7);
                                      Writeln ('');
                                      Writeln ('');
                                      textbackground (3);
                                      Writeln ('            HINWEIS             ');
                                      textbackground (7);
                                      Writeln ('');
                                    Writeln ('Die Wörter in Klammern bedeuten die entsprechenden griechischen Buchstaben auf der');
                                    Writeln ('Formel.');
                                    Writeln ('');
                                    Writeln ('[ESC] Zurückkehren');
                                    c16:= readkey;
                                  Until (c16=#27);
                                end;
                              End;
                            Until (c15=#27);
                          end;
                          '2': begin
                            Repeat
                              clrscr;
                              Writeln ('');
                              Writeln ('');
                              Textbackground (3);
                              Writeln ('                                                                                  ');
                              Writeln ('                                    FORMELN                                       ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln ('');
                              Writeln ('');
                              textbackground (3);
                              Writeln ('           CHEMIE            ');
                              textbackground (7);
                              Writeln ('');
                              Writeln ('Wählen Sie die Domäne:');
                              Writeln ('');
                              Writeln ('[1] Menge, Masse und Volumen');
                              Writeln ('[2] Lösungen');
                              Writeln ('[3] Notiz');
                              Writeln ('[ESC] Zurückkehren');
                              c17:= readkey;
                              Case c17 of
                                '1': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                             CHEMISCHE FORMELN                                    ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('    BEREICH - MENGE, MASSE UND VOLUMEN     ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln (' n=N/Na          M=m/n          Vm=V/n          p=m/V');
                                    Writeln ('');
                                    Writeln ('[ESC] Zurückkehren');
                                    c18:= readkey;
                                  Until (c18=#27);
                                end;
                                '2': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                             CHEMISCHE FORMELN                                    ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('          DOMÄNE - LÖSUNGEN           ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln (' c=n/V        Xa=na/ntotal       pH= -log {[H3O+]/moldm^-3} ');
                                    Writeln ('');
                                    Writeln ('[ESC] Zurückkehren');
                                    c18:= readkey;
                                  Until (c18=#27);
                                end;
                                '3': begin
                                  Repeat
                                    clrscr;
                                    Writeln ('');
                                    Writeln ('');
                                    Textbackground (3);
                                    Writeln ('                                                                                  ');
                                    Writeln ('                             CHEMISCHE FORMELN                                    ');
                                    Writeln ('                                                                                  ');
                                    textbackground (7);
                                    Writeln ('');
                                    Writeln ('');
                                    textbackground (3);
                                    Writeln ('              HINWEIS               ');
                                    textbackground (7);
                                    Writeln ('');
                                  Writeln ('Die Wörter in Klammern bedeuten die entsprechenden griechischen Buchstaben in den ');
                                  Writeln ('Formeln.');
                                  Writeln ('');
                                  Writeln ('[ESC] Zurückkehren');
                                  c18:= readkey;
                                Until (c18=#27);
                              end;
                            End;
                          Until (c17=#27);
                        end;
                      End;
                    Until (c14=#27);
                    clrscr;
                  end;
                  //notas
                  '5': begin
                    Repeat
                      clrscr;
                      Writeln ('');
                      Writeln ('');
                      Textbackground (4);
                      Writeln ('                                                                                  ');
                      Writeln ('                                  ANMERKUNGEN                                     ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln ('');
                      Writeln ('');
                      Writeln ('[1] Notiz 1 öffnen');
                      Writeln ('[2] Notiz 2 öffnen');
                      Writeln ('[3] Notiz 3 öffnen');
                      Writeln ('[ESC] Zurückkehren');
                      c6:= readkey;
                      Case c6 of
                        '1': begin
                          Repeat
                            clrscr;
                            Writeln ('');
                            Writeln ('');
                            textbackground (4);
                            Writeln ('                                                                                  ');
                            Writeln ('                               ANMERKUNG 1                                        ');
                            Writeln ('                                                                                  ');
                            Textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            Writeln (nota1);
                            Writeln ('');
                            Writeln ('[1] Notiz 1 bearbeiten (aktuelle wird gelöscht)');
                            Writeln ('[ESC] Zurückkehren');
                            c7:= readkey;
                            Case c7 of
                              '1': begin
                                Writeln ('');
                                textbackground (4);
                                Writeln ('         NEUE ANMERKUNG 1          ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('Nach dem Schreiben: ');
                                Writeln ('[ENTER] Speichern und zurück');
                                Writeln ('');
                                Readln (nota1);
                                Writeln ('');
                              end;
                            End;
                          Until c7=#27
                        end;
                        '2': begin
                          Repeat
                            clrscr;
                            Writeln ('');
                            Writeln ('');
                            textbackground (4);
                            Writeln ('                                                                                  ');
                            Writeln ('                               ANMERKUNG 2                                        ');
                            Writeln ('                                                                                  ');
                            Textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            Writeln (nota2);
                            Writeln ('');
                            Writeln ('[1] Notiz 2 bearbeiten (aktuelle wird gelöscht)');
                            Writeln ('[ESC] Zurückkehren');
                            c7:= readkey;
                            Case c7 of
                              '1': begin
                                Writeln ('');
                                textbackground (4);
                                Writeln ('         NEUE ANMERKUNG 2          ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('Nach dem Schreiben: ');
                                Writeln ('[ENTER] Speichern und zurück');
                                Writeln ('');
                                Readln (nota2);
                                Writeln ('');
                              end;
                            End;
                          Until c7=#27
                        end;
                        '3': begin
                          Repeat
                            clrscr;
                            Writeln ('');
                            Writeln ('');
                            textbackground (4);
                            Writeln ('                                                                                  ');
                            Writeln ('                                  NOTIZ 3                                         ');
                            Writeln ('                                                                                  ');
                            Textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            Writeln (nota3);
                            Writeln ('');
                            Writeln ('[1] Notiz 3 bearbeiten (aktuelle wird gelöscht)');
                            Writeln ('[ESC] Zurückkehren');
                            c7:= readkey;
                            Case c7 of
                              '1': begin
                                Writeln ('');
                                textbackground (4);
                                Writeln ('         NEUE ANMERKUNG 3          ');
                                textbackground (7);
                                Writeln ('');
                                Writeln ('Nach dem Schreiben: ');
                                Writeln ('[ENTER] Speichern und zurück');
                                Writeln ('');
                                Readln (nota3);
                                Writeln ('');
                              end;
                            End;
                          Until c7=#27
                        end;
                      End;
                    Until c6=#27
                  end;
                  '6': begin
                    Repeat
                      clrscr;
                      Writeln ('');
                      Writeln ('');
                      textbackground (3);
                      Writeln ('                                                                                  ');
                      Writeln ('                                    UHR                                           ');
                      Writeln ('                                                                                  ');
                      Textbackground (7);
                      Writeln ('');
                      Writeln ('');
                      GetTime(hora, minuto, segundo, msegundo);
                      Writeln(hora, 'h', minuto, 'min');
                      GetDate(ano, mes, dia, diaSemana);
                      Writeln(dia, '/', mes, '/', ano);
                      Writeln ('');
                      Writeln ('[ENTER] Bildschirm aktualisieren');
                      Writeln ('[1] Timer');
                      Writeln ('[2] Chronometer');
                      Writeln ('[ESC] Zurückkehren');
                      c22:= readkey;
                      Case c22 of
                        '1': begin
                          Repeat
                            clrscr;
                            Writeln ('');
                            Writeln ('');
                            textbackground (3);
                            Writeln ('                                                                                  ');
                            Writeln ('                                    UHR                                           ');
                            Writeln ('                                                                                  ');
                            Textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            textbackground (3);
                            Writeln ('             TIMER             ');
                            textbackground (7);
                            Writeln ('');
                            write ('Zeit einstellen (s): ');
                            read (tempo);
                            Repeat
                              Begin
                                delay (1000);
                                clrscr;
                                Writeln ('');
                                Writeln ('');
                                textbackground (3);
                                Writeln ('                                                                                  ');
                                Writeln ('                                   UHR                                          ');
                                Writeln ('                                                                                  ');
                                Textbackground (7);
                                Writeln ('');
                                Writeln ('');
                                textbackground (3);
                                Writeln ('             TIMER             ');
                                textbackground (7);
                                Writeln ('');
                                writeln (tempo,' Sekunden übrig');
                                tempo := tempo - 1;
                              End;
                            Until (tempo=-1);
                            clrscr;
                            Writeln ('');
                            Writeln ('');
                            textbackground (3);
                            Writeln ('                                                                                  ');
                            Writeln ('                                    UHR                                           ');
                            Writeln ('                                                                                  ');
                            Textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            textbackground (3);
                            Writeln ('             TIMER             ');
                            textbackground (7);
                            writeln ('');
                            Writeln ('Die Zeit ist vorbei');
                            Writeln ('');
                            Writeln ('[ESC] Zurückkehren');
                            c21:= readkey;
                          Until (c21=#27);
                        end;
                        '2': begin
                          Repeat
                            clrscr;
                            Writeln ('');
                            Writeln ('');
                            textbackground (3);
                            Writeln ('                                                                                  ');
                            Writeln ('                                    UHR                                          ');
                            Writeln ('                                                                                  ');
                            Textbackground (7);
                            Writeln ('');
                            Writeln ('');
                            textbackground (3);
                            Writeln ('          CHRONOMETER          ');
                            textbackground (7);
                            writeln ('');
                            Writeln ('[ENTER] Anfang');
                            Writeln ('[ESC] Zurückkehren');
                            tempo1:=0;
                            c20:=readkey;
                            Case c20 of
                              #13: begin
                                Repeat
                                  delay (1000);
                                  clrscr;
                                  Writeln ('');
                                  Writeln ('');
                                  textbackground (3);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                    UHR                                           ');
                                  Writeln ('                                                                                  ');
                                  Textbackground (7);
                                  Writeln ('');
                                  Writeln ('');
                                  textbackground (3);
                                  Writeln ('          CHRONOMETER          ');
                                  textbackground (7);
                                  writeln ('');
                                  tempo1:=tempo1 + 1;
                                  Writeln (tempo1, ' Sekunden');
                                  Writeln ('');
                                  Writeln ('[SPACE] Halt');
                                Until keypressed;
                              end;
                            End;
                          Until (c20=#27);
                        end;
                      End;
                    Until (c22=#27);
                  end;
                  '7': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (5);
                      Writeln ('                                                                                  ');
                      Writeln ('                                  GLUCKSPROBE                                     ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('[1] Spielen');
                      Writeln ('[2] Regeln');
                      Writeln ('[ESC] Zurückkehren');
                      c23:= readkey;
                      Case c23 of
                        '1': begin
                          Repeat
                            clrscr;
                            Writeln (' ');
                            Writeln (' ');
                            textbackground (5);
                            Writeln ('                                                                                  ');
                            Writeln ('                                  GLUCKSPROBE                                     ');
                            Writeln ('                                                                                  ');
                            textbackground (7);
                            Writeln (' ');
                            Writeln (' ');
                            Writeln ('   Das ist das Deck deines Gegners                            Das ist dein Deck');
                            Randomize;
                            For y:=1 to 1 do
                            begin
                              num1:=random (4)+3;
                              num2:=random (4)+3;
                              num3:=num1 + random (5)+3;
                              num4:=num2 + random (5)+3;
                              If (num1<10) and (num2<10) then
                              begin
                                Writeln ('                _________                                       _________');
                                Writeln ('               |         |                                     |         |');
                                Writeln ('               |         |                                     |         |');
                                Writeln ('               |         |                                     |         |');
                                Writeln ('               |    ',num1,'    |                                     |    ',num2,'    |');
                                Writeln ('               |         |                                     |         |');
                                Writeln ('               |         |                                     |         |');
                                Writeln ('               |_________|                                     |_________|');
                              end;
                              Writeln('');
                              Writeln('');
                              Writeln ('Möchten Sie eine andere Karte? (j/n)');
                              Readln (resp2);
                              Case resp2 of
                                'j': begin
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (5);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 GLUCKSPROBE                                      ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  Writeln ('   Das ist das Deck deines Gegners                            Das ist dein Deck');
                                  If (num3>=10) and (num4<10) then
                                  begin
                                    Writeln ('            __________                                          _________');
                                    Writeln ('           |          |                                        |         |');
                                    Writeln ('           |          |                                        |         |');
                                    Writeln ('           |          |                                        |         |');
                                    Writeln ('           |    ',num3,'    |                                        |    ',num4,'    |');
                                    Writeln ('           |          |                                        |         |');
                                    Writeln ('           |          |                                        |         |');
                                    Writeln ('           |__________|                                        |_________|');
                                  end
                                  else
                                  If (num4>=10) and (num3<10) then
                                  begin
                                    Writeln ('             _________                                          __________');
                                    Writeln ('            |         |                                        |          |');
                                    Writeln ('            |         |                                        |          |');
                                    Writeln ('            |         |                                        |          |');
                                    Writeln ('            |    ',num3,'    |                                        |    ',num4,'    |');
                                    Writeln ('            |         |                                        |          |');
                                    Writeln ('            |         |                                        |          |');
                                    Writeln ('            |_________|                                        |__________|');
                                  end
                                  else
                                  If (num3>=10) and (num4>=10) then
                                  begin
                                    Writeln ('             __________                                          __________');
                                    Writeln ('            |          |                                        |          |');
                                    Writeln ('            |          |                                        |          |');
                                    Writeln ('            |          |                                        |          |');
                                    Writeln ('            |    ',num3,'    |                                        |    ',num4,'    |');
                                    Writeln ('            |          |                                        |          |');
                                    Writeln ('            |          |                                        |          |');
                                    Writeln ('            |__________|                                        |__________|');
                                  end
                                  else
                                  If (num3<10) and (num4<10) then
                                  begin
                                    Writeln ('              _________                                         _________');
                                    Writeln ('             |         |                                       |         |');
                                    Writeln ('             |         |                                       |         |');
                                    Writeln ('             |         |                                       |         |');
                                    Writeln ('             |    ',num3,'    |                                       |    ',num4,'    |');
                                    Writeln ('             |         |                                       |         |');
                                    Writeln ('             |         |                                       |         |');
                                    Writeln ('             |_________|                                       |_________|');
                                  end;
                                  If (num3=10) and (num4=10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Beide haben 10! Kein Sieger');
                                  end
                                  else
                                  If (num3=10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Du hast verloren!');
                                  end
                                  else
                                  If (num4=10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Glückwunsch du hast gewonnen!');
                                  end
                                  else
                                  If (num3>10) and (num4>10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Beide verloren!');
                                  end
                                  else
                                  If (num3<10) and (num3>num4) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Du hast verloren!');
                                  end
                                  else
                                  If (num4<10) and (num4>num3) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Glückwunsch du hast gewonnen!');
                                  end
                                  else
                                  If (num3>10) and (num4<10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Glückwunsch du hast gewonnen!');
                                  end
                                  else
                                  If (num3=num4) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Zeichnen!');
                                  end
                                  else
                                  If (num4>10) and (num3<10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Du hast verloren!');
                                  end;
                                end;
                                'n': begin
                                  clrscr;
                                  Writeln (' ');
                                  Writeln (' ');
                                  textbackground (5);
                                  Writeln ('                                                                                  ');
                                  Writeln ('                                 GLUCKSPROBE                                      ');
                                  Writeln ('                                                                                  ');
                                  textbackground (7);
                                  Writeln (' ');
                                  Writeln (' ');
                                  Writeln ('   Das ist das Deck deines Gegners                            Das ist dein Deck');
                                  If (num3>=10) and (num2<10) then
                                  begin
                                    Writeln ('                __________                                      _________');
                                    Writeln ('               |          |                                    |         |');
                                    Writeln ('               |          |                                    |         |');
                                    Writeln ('               |          |                                    |         |');
                                    Writeln ('               |    ',num3,'    |                                    |    ',num2,'    |');
                                    Writeln ('               |          |                                    |         |');
                                    Writeln ('               |          |                                    |         |');
                                    Writeln ('               |__________|                                    |_________|');
                                  end
                                  else
                                  If (num3<10) and (num2<10) then
                                  begin
                                    Writeln ('                 _________                                       _________');
                                    Writeln ('                |         |                                     |         |');
                                    Writeln ('                |         |                                     |         |');
                                    Writeln ('                |         |                                     |         |');
                                    Writeln ('                |    ',num3,'    |                                     |    ',num2,'    |');
                                    Writeln ('                |         |                                     |         |');
                                    Writeln ('                |         |                                     |         |');
                                    Writeln ('                |_________|                                     |_________|');
                                  end;
                                  If (num3=10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Du hast verloren!');
                                  end
                                  else
                                  If (num3>10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Glückwunsch du hast gewonnen!');
                                  end
                                  else
                                  If (num3>num2) and (num3<10) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Du hast verloren!');
                                  end
                                  else
                                  If (num2>num3) then
                                  Begin
                                    Writeln ('');
                                    Writeln ('Glückwunsch du hast gewonnen!');
                                  end
                                  else
                                  If (num3=num2) then
                                  begin
                                    Writeln ('');
                                    Writeln ('Zeichnen');
                                  end;
                                end;
                              End;  //case1
                              end; //for
                              Writeln ('');
                              Writeln ('[ENTER] Versuchen Sie es nochmal');
                              Writeln ('[ESC] Das Spiel verlassen');
                              resp1:= readkey;
                            Until (resp1=#27)
                          end;
                          '2': begin
                            Repeat
                              clrscr;
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (5);
                              Writeln ('                                                                                  ');
                              Writeln ('                                 GLUCKSPROBE                                      ');
                              Writeln ('                                                                                  ');
                              textbackground (7);
                              Writeln (' ');
                              Writeln (' ');
                              textbackground (5);
                              Writeln ('               REGELN               ');
                              textbackground (7);
                              Writeln ('');
                              Writeln ('In diesem Spiel sehen Sie rechts Ihr Deck mit einer Nummer und links das Deck des');
                              Writeln ('Gegners, ebenfalls mit einer Nummer. Die Nummer in jedem Deck ist immer zufällig. ');
                            Writeln ('Um das Spiel zu gewinnen, ist es notwendig, die Zahl 10 zu erhalten oder die Zahl ');
                            Writeln ('des Gegners 10 zu überschreiten. Wenn keines der beiden Decks die Zahl 10 oder ');
                            Writeln ('höher erhält, gewinnt derjenige, der die höchste Zahl hat.   ');
                            Writeln ('');
                            Writeln ('1ºHinweis: Wenn Sie damit einverstanden sind, eine weitere Karte zu erhalten, wird');
                            Writeln ('der Nummer jedes Decks eine Zufallszahl hinzugefügt. ');
                            Writeln ('2ºHinweis: Wenn Sie sich dafür entscheiden, keine Karte zu erhalten, wird eine ');
                            Writeln ('Zufallszahl zur Decknummer des Gegners hinzugefügt, und wenn niemand die Zahl 10 ');
                            Writeln ('oder höher erhält, gewinnt derjenige, der die höchste Zahl hat.');
                            Writeln ('');
                            Writeln ('[ESC] Zurückkehren');
                            resp3:= readkey;
                          Until (resp3=#27);
                        end;
                      End;
                    Until (c23=#27);
                  end;
                  '8': begin
                    Repeat
                      clrscr;
                      Writeln (' ');
                      Writeln (' ');
                      textbackground (5);
                      Writeln ('                                                                                  ');
                      Writeln ('                                      UM                                          ');
                      Writeln ('                                                                                  ');
                      textbackground (7);
                      Writeln (' ');
                      Writeln (' ');
                      Writeln ('StudyPartner ist ein Programm, das von entwickelt wurde Simao Sousa und Joao Cova.');
                      Writeln ('Aktuelle Version: v1.0');
                      Writeln ('09/12/2022');
                      Writeln ('Alle Rechte vorbehalten');
                      Writeln (' ');
                      Writeln ('[ESC] Zurückkehren');
                      c3:= readkey;
                    Until (c3=#27)
                  end;
                End;
              Until (app=#27);
              If app=#27 then exit;
            end;
          End;
        Until (language=#27);
      End.