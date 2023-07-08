{
    El centro de deportes Fortaco’s quiere procesar la información de los 4 tipos de suscripciones que
ofrece: 1)Musculación, 2)Spinning, 3)Cross Fit, 4)Todas las clases. Para ello, el centro dispone de una tabla
con información sobre el costo mensual de cada tipo de suscripción.
Realizar un programa que lea y almacene la información de los clientes del centro. De cada cliente se
conoce el nombre, DNI, edad y tipo de suscripción contratada (valor entre 1 y 4). Cada cliente tiene una
sola suscripción. La lectura finaliza cuando se lee el cliente con DNI 0, el cual no debe procesarse.
Una vez almacenados todos los datos, procesar la estructura de datos generada, calcular e informar:
- La ganancia total de Fortaco’s
- Las 2 suscripciones con más clientes.
- Genere una lista con nombre y DNI de los clientes de más de 40 años que están suscritos a CrossFit o a Todas las clases. Esta lista debe estar ordenada por DNI.
}

program fortaco;
type
  sub= 1..4;
  cliente= record
    nombre: string;
    dni: integer;
    edad: integer;
    tipo_sub: sub;
   end;
   lista= ^nodo;
  nodo= record
    dato: cliente;
    sig: lista;

  Vsub= array[sub] of integer;

procedure leerJugador(var c: cliente);
begin
  with c do begin
    writeln('ingresar DNI');
    readln(dni);
      if (dni<>0) then begin
        writeln('ingrese nombre');
        readln(nombre);
        writeln('ingrese edad');
        readln(edad);
        writeln('ingrese tipo de suscripcion');
        readln(tipo_sub);
       end;
   end;
 end;

procedure agregarAdelante(var L: lista ; c: cliente);
var
  nue: lista;
begin
  new(nue);
  nue^.dato := c;
  nue^.sig:= L;
  L:= nue;
end;

procedure cargarLista(var L: lista);
var
  c: cliente;
begin
  leerJugador(c);
  while(c.dni<> 0) do begin
    agregarAdelante(L, c);
    leerJugador(c);
  end;
end;

procedure inicializarVector(var v1: Vsub);
var 
i : sub
begin
  for i:= 1 to 4 do begin
    v1[i]:=0;
  end;
end;

function gananciatotal(L: lista; vector: Vsub): real;
var
  ganancia: real;
begin
  ganancia:= 0;
  while(L<> nil) do begin
    ganancia:= ganancia + vector[L.cliente.tipo_sub];
    L:= L^sig;
  end;
  gananciatotal:= ganancia;
end;
function cumple(cli: cliente): boolean;
begin
  cumple:=(cliente.edad > 40) and (cliente.tipo_sub = 3) and (cliente.tipo_sub= 1,2,3,4);

procedure mas40(var Lordenada: lista; L:lista);
begin
  Lordenada:= nil;
  if (cumple)


var
  L, mas40: lista;
  V : Vsub;


begin
  L:= nil;
  cargarLista(L);
  cargarVector(V);
  writeln('La ganancia total de Fortaco’s es ' , gananciatotal);
  writeln('Las 2 suscripciones con más clientes es ', mas1, mas2);

end; 