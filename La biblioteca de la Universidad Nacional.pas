¨{La biblioteca de la Universidad Nacional de La Plata necesita un programa para administrar
información de préstamos de libros efectuados en marzo de 2020. Para ello, se debe leer la información
de los préstamos realizados. De cada préstamo se lee: nro. de préstamo, ISBN del libro prestado, nro. de
socio al que se prestó el libro, día del préstamo (1..31). La información de los préstamos se lee de manera
ordenada por ISBN y finaliza cuando se ingresa el ISBN -1 (que no debe procesarse).
Se pide:
A) Generar una estructura que contenga, para cada ISBN de libro, la cantidad de veces que fue
prestado. Esta estructura debe quedar ordenada por ISBN de libro.
B) Calcular e informar el día del mes en que se realizaron menos préstamos.
C) Calcular e informar el porcentaje de préstamos que poseen nro. de préstamo impar y nro. de socio
par.
}

program biblioteca;
const
max_prestamos= maxint;
type
  dia_pres = 1..31;
  pretamos = record
  nro_prestamo : integer;
  ISBN : integer;
  nro_socio : integer;
  dia_prestamo : dia_pres;
  end;
  rango =1..max_prestamos;
  Vprestamos = array [rango] of integer;     

procedure leerRegistro(var p: Vprestamos);
var
  i: rango;
begin
  for i:= 1 to rango do
    with p do begin
      readln(ISBN);
      if (ISBN<> -1);
      begin
        readln(nro_prestamo);
        readln(nro_socio);
        readln(dia_prestamo);
       end;
     end;    
end;

 begin
   writeln('dia del mes con menos prestamos:' , (menos_prestamos));
   writeln('porcentaje de prestamos que poseen nro. de prestamo impar y nro de socio par:' (par_impar));   
 end; 