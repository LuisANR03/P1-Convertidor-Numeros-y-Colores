{Realizado por Luis Narvaez 30.008.894.}
program Convertidor;
uses
crt,sysutils;
type
string5 = string[8];

const
   BASE16 = 16;
var
tecla : char;
numero,n,dig,i : integer;
El,V,F,bin,a : string;
   Hex  : string;
   Resto : Integer;
   Cociente  : Integer;

procedure quit;
begin
V:= '0';
F:= '1';
end;



procedure Binario;
begin
clrscr;
bin:= '';
while (n>0) do
begin
	dig := n mod 2;
 n := n div 2;
 bin :=char(dig+48)+bin;
end;
writeln(' --------------------------------------------------');
writeln('| Hemos Convertido su Frase en un Numero Binario:  |');
writeln(' --------------------------------------------------');
writeln('| ',bin,'                                           |');
writeln(' --------------------------------------------------');
writeln('| Presione Cualquier tecla para continuar...       |');
writeln(' -------------------------------------------------- ');
readln();
n := ord(tecla);
end;

procedure Hexa;
begin
	clrscr;
   Hex := '';
   Cociente := (N);
   while Cociente > 0 do
   begin
      Resto := Cociente mod BASE16;
      case Resto of
         10: Hex := 'A' + Hex;
         11: Hex := 'B' + Hex;
         12: Hex := 'C' + Hex;
         13: Hex := 'D' + Hex;
         14: Hex := 'E' + Hex;
         15: Hex := 'F' + Hex;
      else
         Hex := IntToStr( Resto ) + Hex;
      end;
      Cociente := Cociente div BASE16
   end;
   writeln(' ------------------------------------------------------ ');
   writeln('| Hemos Convertido su Frase en un Numero Hexadecimal:   |');
   writeln(' ------------------------------------------------------ ');
   writeln(' ' ,Hex );
   writeln(' ------------------------------------------ ');
   writeln('| Presione Cualquier tecla para continuar... |');
   writeln(' ------------------------------------------ ');
   readln();
end;

procedure octal;
begin
textcolor(white);
clrscr;
	writeln(' ------------------------------------------------');
	writeln('| Hemos Convertido su Frase en un Numero Octal:  |');
	writeln(' ------------------------------------------------');
numero := (n);
case n of
65:writeln(' 101');
66:writeln(' 102');
67:writeln(' 103');
68:writeln(' 104');
69:writeln(' 105');
70:writeln(' 106');
71:writeln(' 107');
72:writeln(' 110');
73:writeln(' 111');
74:writeln(' 112');
75:writeln(' 113');
76:writeln(' 114');
77:writeln(' 115');
78:writeln(' 116');
79:writeln(' 117');
80:writeln(' 120');
81:writeln(' 121');
82:writeln(' 122');
83:writeln(' 123');
84:writeln(' 124');
85:writeln(' 125');
86:writeln(' 126');
87:writeln(' 127');
88:writeln(' 130');
89:writeln(' 131');
90:writeln(' 132');
97:writeln(' 141');
98:writeln(' 142');
99:writeln(' 143');
100:writeln(' 144');
101:writeln(' 145');
102:writeln(' 146');
103:writeln(' 147');
104:writeln(' 150');
105:writeln(' 151');
106:writeln(' 152');
107:writeln(' 153');
108:writeln(' 154');
109:writeln(' 155');
110:writeln(' 156');
111:writeln(' 157');
112:writeln(' 160');
113:writeln(' 161');
114:writeln(' 162');
115:writeln(' 163');
116:writeln(' 164');
117:writeln(' 165');
118:writeln(' 166');
119:writeln(' 167');
120:writeln(' 170');
121:writeln(' 171');
122:writeln(' 172');
ELSE writeln('Por favorIngrese otra Frase');
end;
	writeln(' --------------------------------------------');
	writeln('| Presione Cualquier tecla para continuar... |');
	writeln(' --------------------------------------------');
	Readln();

end;

procedure roman;
begin

textcolor(white);
clrscr;
	writeln('  ---------------------------------------------- ');
	writeln('| Hemos Convertido su Frase en un Numero Romano: |');
	writeln('  ---------------------------------------------- ');
numero := (n);
case n of
65:writeln(' LXV');
66:writeln(' LXVI');
67:writeln(' LXVII');
68:writeln(' LXVII');
69:writeln(' LXIX');
70:writeln(' LXX');
71:writeln(' LXXI');
72:writeln(' LXXII');
73:writeln(' LXXIII');
74:writeln(' LXXIV');
75:writeln(' LXXV');
76:writeln(' LXXVI');
77:writeln(' LXXVII');
78:writeln(' LXXVIII');
79:writeln(' LXXIX');
80:writeln(' LXXX');
81:writeln(' LXXXI');
82:writeln(' LXXXII');
83:writeln(' LXXXIII');
84:writeln(' LXXXIV');
85:writeln(' LXXXV');
86:writeln(' LXXXVI');
87:writeln(' LXXXVII');
88:writeln(' LXXXVIII');
89:writeln(' LXXXIX');
90:writeln(' XC');
97:writeln(' XCVII');
98:writeln(' XCVIII');
99:writeln(' XCIX');
100:writeln(' C');
101:writeln(' CI');
102:writeln(' CII');
103:writeln(' CIII');
104:writeln(' CIV');
105:writeln(' CV');
106:writeln(' CVI');
107:writeln(' CVII');
108:writeln(' CVIII');
109:writeln(' CIX');
110:writeln(' CX');
111:writeln(' CXI');
112:writeln(' CXII');
113:writeln(' CXIII');
114:writeln(' CXIV');
115:writeln(' CXV');
116:writeln(' CXVI');
117:writeln(' CXVII');
118:writeln(' CXVIII');
119:writeln(' CXIX');
120:writeln(' CXX');
121:writeln(' CXXI');
122:writeln(' CXXII');
ELSE writeln('| Por favorIngrese otra Frase |');
end;
	writeln('  ------------------------------------------- ');
	writeln('| Presione Cualquier tecla para continuar... |');
	writeln('  ------------------------------------------- ');
	Readln();

end;



procedure MC;
begin
repeat
clrscr;
	V :='1';
	writeln('Seleccione una opcion.');
	writeln(' ------------------------');
	writeln('| 1) Binario             |');
	writeln('|                        |');
	writeln('| 2) Hexadecimal         |');
	writeln('|                        |');
	writeln('| 3) Octal               |');
	writeln('|                        |');
	writeln('| 4) Romano              |');
	writeln('|                        |');
	writeln('| 5) Otra frase          |');
	writeln('|                        |');
	writeln('| 6) Salir               |');
	writeln(' ------------------------');
	readln(El);
	if EL = '1' THEN Binario
	else if EL = '2' THEN Hexa
	else if EL = '3' then octal
 	else if EL = '4' then roman
	else if EL = '5' then V := '0'
	else if EL = '6' then quit;
	until V = '0';
end;

procedure repita;
begin
	
	clrscr;
	writeln(' ----------------------------------- ');
	writeln('|Bienvenido al Convertidor de Frases |');
	writeln(' ----------------------------------- ');
	writeln('| Pulse una Tecla:                   |');
	writeln(' ----------------------------------- ');
	readln(tecla);
	writeln(' -------------------------------------------- ');
	writeln('  Tecla: ', tecla,'                           ');
	writeln('  ASCII: ', ord(tecla),'                      ');
	writeln(' --------------------------------------------');
	writeln('| Presione cualquier tecla para continuar... |');
	writeln(' --------------------------------------------');	
	readkey;
	n := ord(tecla);
	MC;

end;

begin
repeat
repita
until F = '1'
end.


