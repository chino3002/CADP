{
 El Observatorio Astronómico de La Plata ha realizado un relevamiento sobre los distintos objetos
astronómicos observados durante el año 2015. Los objetos se clasifican en 7 categorías: 1: estrellas,
2: planetas, 3: satélites, 4: galaxias, 5: asteroides, 6: cometas y 7: nebulosas.
Al observar un objeto, se registran los siguientes datos: código del objeto, categoría del objeto (1..7),
nombre del objeto, distancia a la Tierra (medida en años luz), nombre del descubridor y año de su
descubrimiento.
A. Desarrolle un programa que lea y almacene la información de los objetos que han sido
observados. Dicha información se lee hasta encontrar un objeto con código -1 (el cual no debe
procesarse). La estructura generada debe mantener el orden en que fueron leídos los datos.
B. Una vez leídos y almacenados todos los datos, se pide realizar un reporte con la siguiente
información:
1. Los códigos de los dos objetos más lejanos de la tierra que se hayan observado.
2. La cantidad de planetas descubiertos por "Galileo Galilei" antes del año 1600.
3. La cantidad de objetos observados por cada categoría.
4. Los nombres de las estrellas cuyos códigos de objeto poseen más dígitos pares que
impares.
}

program Observatorio;
type
  objetos= 1..7;
  objeto= record;
    code_ob: integer;
    categoría: objetos;
    nombre_ob: string;
    distanciaT: integer;
    nombre_des: string;
    ano_des: integer;
  end;
  lista= ^nodo;
    nodo= record;
      dato: objeto;
      sig: lista;

  Vcontador= array[objetos] of integer;

procedure leerSesion(var o: objeto);
  begin
    with o do begin
      readln(code_ob);
      readln(categoría);
      readln(nombre_ob);
      readln(distanciaT);
      readln(nombre_des);
      readln(ano_des);
  end;

procedure insertarAtras(var L, ult: lista ; o: objeto);
var
  nue: lista;
begin
  new(nue)
  nue^.dato:= o;
  nue^.sig:= nil;
  if (L <> nil)then 
    L:= nue;
  else
    ult^.sig:= nue;
  ult:= nue;
end;

procedure cargarLista(var L:lista);
var
  o: objeto;
begin
  while(o.code_ob <> '-1') do begin
    insertarAdelante(L, ult, o);  
    cargarRegistro(o);
  end;
end;

procedure inicializarVector(var v : Vcontador);
  var 
  i: objetos;
begin
    for i:= 1 to 7 do
      v[i]:= 0;
end;

procedure maximos(L: lista, var cod1, cod2 : integer);
var
max1, max2: integer
begin
  max1, max:= -1;
  while(L<> nil) do begin
    if(L^.dato.distancia > max1) then
      max2:= max1;
      cod2:= cod1;
      max1:= L^.dato.distanciaT;
      cod1:= L^.dato.code_ob;
    else
      if(L^.distancia > max2) then
        max2:= L^.dato.distanciaT;
        cod2:= L^.dato.code_ob;
      end;
    end;
    L:= L^.sig;
  whiteLN('los dos objetos mas lejanos a la tierra son ', cod1 ' y ', cod2);
end;

function DescubrimientoGalileo(L: lista):integer;
begin
  while(L<> nil) do begin
    if(L^.dato.nombre_des = "Galileo Galilei") and (L^.dato.ano_des < 1600) then
      DescubrimientoGalileo:= DescubrimientoGalileo + 1;
    end;
    L:= L^.sig;
  end;
  writeln('la cantidadad de objetos descubiertos por el galileo son', DescubrimientoGalileo);
end;

procedure CantObjetos(L: lista; var V: Vcontador);
var
  x, i: objetos;
begin
  while(L<> nil)do begin
    i:= L^.dato.categoría;
    V[i]:= V[i] + 1;
    L:= L^.sig;
  end;
  writeln('La cantidad de objetos observados en la categoria');
  readln(x); 
  categoria:= x;
  writeln('La cantidad de objetos observados en la categoria' , categoria , 'es', V[categoria]);
end;

function MasPar (num: integer): boolean;
var
  impar, par : integer;
begin
  while(num <> 0)do begin
    if ((num mod 10) mod 2 = 0) then
      pares:= pares + 1;
    else
      impares:= impares + 1
      num:= num div 10;
    end;
  end;
  MasPar:= (pares > impares); 
  end;   
end;

function cumple(o: objeto):integer;
begin
  cumple:= (o.categoría = 1) and (MasPar(o.code_ob));   
end;

procedure procesarLista(L: lista);
var
  nombres_estrellitas: string;
begin
  while(L<> nil) do begin
    if(cumple) then
      nombres_estrellitas:= nombres_estrellitas + L^.dato.nombre_ob;
    end;
  L:= L^.sig;
  end;
  writeln('Los nombres de las estrellas cuyos códigos de objeto poseen más dígitos pares que
impares. son:' ,nombres_estrellitas);
end;
var
  L : lista;
  V: Vobjetos, Vcont;
  cod1, cod2: integer
begin
  L:= nil
  cargarLista(L);
  inicializarVector(V);
  CantObjetos(L, V);
  DescubrimientoGalileo(L);
  maximos(L,)
  procesarLista(L);   
end;    