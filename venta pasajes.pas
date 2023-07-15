{ Una empresa de venta de pasajes aéreos está analizando la información de los viajes realizados por sus aviones. 
Para ello, se dispone de una estructura de datos con la información de todos los viajes. De cada viaje se conoce el código de avión (entre 1000 y 2500), el año en que se realizó el viaje, 
la cantidad de pasajeros que viajaron, y la ciudad de destino. La información no se encuentra ordenada por ningún criterio. Además, la empresa dispone de una estructura de datos con información 
sobre la capacidad máxima de cada avión.

Realizar un programa que procese la información de los viajes e:

Informe el código del avión que realizó la mayor cantidad de viajes
Genere una lista con los viajes realizados en años múltiplo de 10 con destino "Punta Cana" en los que el avión no alcanzó su capacidad máxima
COMPLETO: Para cada avión, informe el promedio de pasajeros que viajaron entre todos sus viajes
}

program ventapasajes;
type
  code_avion= 1000.. 2500;
  viaje= record
    avion_code: code_avion;
    anoV: integer;
    cant_pasajeros: integer;
    ciudad: string;
  end;
  
  lista: nodo^;
  nodo= record
    dato: viaje;
    sig: lista;
  end;

  Vaviones= array[code_avion] of integer;

  procedure capacidadMaxima(var capacidad: Vaviones);  // se dispone

  procedure cargarLista(var L: lista);

  procedure agregarAdelante(var L: lista; V: viaje);
  var
    nue: lista;
  begin
    new(nue);
    nue^.dato:= V;
    nue^.sig:= L;
    L:= nue 
  end;

  procedure inicializarVector(var V: Vaviones);
  var
    i: code_avion;
  begin
    for i:= 1000 to 2500 do
      V[i]:= 0;
  end;
  
    
  end;
  