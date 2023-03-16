{SIi escribe un numero este se imprimira de diferentes colores si son divisibles por numeros especificos
* Realizado por: Luis Narvaez 30.008.894
*}
program Numero;

uses crt;
var Num : longint;
opcion : string;
{Los procedimientos funcionan igual excepto que estos imprimiran el numero ingresado de un color diferente y realizara una division}
procedure dos;
begin
clrscr;
writeln('Numero divisible entre Dos');
textcolor(Yellow);
writeln(Num);
Num := (Num div 2);
writeln(Num);
end;
procedure tres;
begin
clrscr;
writeln('Numero divisible entre Tres');
textcolor(lightblue);
writeln(Num);
Num := (Num div 3);
writeln(Num);
end;

procedure cinco;
begin
clrscr;
writeln('Numero divisible entre Cinco');
textcolor(red);
writeln(Num);
Num := (Num div 5);
writeln(Num);
end;

procedure siete;
begin
clrscr;
writeln('Numero divisible entre Siete');
textcolor(Green);
writeln(Num);
Num := (Num div 7);
writeln(Num);
end;

procedure trece;
begin
clrscr;
writeln('Numero divisible entre Trece');
textcolor(brown);
writeln(Num);
Num := (Num div 13);
writeln(Num);
end;


{Al iniciar el programa este pide que ingreses un numero si dicho numero cumple una de las siguientes condiciones activara un
* procedimiento conectado a dicha condicion}
BEGIN
repeat
	clrscr;
	textcolor(White);
	writeln('Ingrese un numero');
	readln(Num);
	if ((Num mod 2 = 0)) then
	dos
	else if ((Num mod 3 = 0)) then
	tres
	else if ((Num mod 5 = 0)) then
	cinco
	else if ((Num mod 7 = 0)) then
	siete
	else if ((Num mod 13 = 0)) then
	trece
	else
	writeln('No es Divisible entre: 13, 7, 5, 3 o 2');
	writeln(Num);
	TextColor(10); Writeln; Writeln('¨Desea ingresar otro numero? (s/n)');
	Readln(opcion);
	until (opcion = 'n') or (opcion = 'N');
	
	
END.
