/*
 * EJERCICIO 2: INVENTARIO DE PRODUCTOS
 * TAREA: Completar las reglas para filtrar productos y calcular su precio final.
 */

% HECHOS: producto(Nombre, Categoria, PrecioBase).
producto(laptop_hp, electronica, 800).
producto(silla_gamer, muebles, 150).
producto(monitor_4k, electronica, 300).
producto(mesa_comedor, muebles, 450).
producto(lampara_led, iluminacion, 30).

% HECHOS: en_oferta(Categoria, Descuento).
en_oferta(muebles, 0.20).       
en_oferta(iluminacion, 0.10).   




% REGLAS A COMPLETAR:

producto_barato(Nombre) :-
  producto(Nombre, Categoria, Precio),
  Precio < 200.

producto_con_descuento(Nombre, Precio):-
  producto(Nombre, Categoria, Precio),
  (Categoria = muebles ;  Categoria = iluminacion).
  
  
  
% CONSULTAS DE PRUEBA:
/*
?- producto_barato(X).                 % X = silla_gamer ; X = lampara_led
?- precio_con_descuento(laptop_hp, P). % P = 800 (no tiene descuento)
?- precio_con_descuento(silla_gamer, P). % P = 120 (150 * 0.80)
*/

:- initialization(main).

main:-
write('La silla gamer es un producto barato?'),
( producto_barato(silla_gamer) ->
    write(' Si')
;
    write(' No')
),
nl,

write('La lampara led es un producto barato?'),
( producto_barato(lampara_led) ->
    write(' Si')
;
    write(' No')
),
nl,

write('La laptop hp tiene descuento?'),
( producto_con_descuento(laptop_hp, 800) ->
    write(' Si')
;
    write(' No')
),
nl,

write('La silla gamer tiene descuento?'),
( producto_con_descuento(silla_gamer, 150) ->
    write(' Si')
;
    write(' No')
),
nl.



