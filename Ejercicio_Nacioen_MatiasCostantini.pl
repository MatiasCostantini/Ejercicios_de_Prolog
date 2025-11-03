% Hechos---------------------------------------

localidad_de(chaco,resistencia).
localidad_de(corrientes,goya).
localidad_de(misiones,posadas).
localidad_de(colonia,colonia_del_sacramento).
localidad_de(departamento_central,asuncion).
nacido_en(resistencia, maria).
nacido_en(goya, juan).
nacido_en(asuncion, renata).
pertenece_a(chaco, argentina).
pertenece_a(corrientes, argentina).
pertenece_a(misiones, argentina).
pertenece_a(colonia, uruguay).
pertenece_a(departamento_central, paraguay).


% Reglas ---------------------------------------

pregunta1(Pais,Persona):-
nacido_en(Ciudad, Persona),
localidad_de(Provincia, Ciudad),
pertenece_a(Provincia, Pais).

pregunta2(Ciudad, Persona):-
nacido_en(Ciudad, Persona).



% Definir las reglas y hechos para responder las siguientes preguntas
% PREGUNTA 1: ¿Maria nacio en Resistencia? 
% PREGUNTA 2: ¿Maria nacio en Corrientes? 
% PREGUNTA 3: ¿Maria nacio en Argentina? (Definir reglas de provincia de Argentina)
% PREGUNTA 4: ¿Maria nacio en Paraguay? (Definir reglas de provincia de otro Paraguay)
% PREGUNTA 5: ¿Maria nacio en Uruguay? (Definir reglas de provincia de Uruguay)

% Puede cambiar el nombre de pregunta1, pregunta2, por la regla que el alumno arme
:- initialization(main).
main :- 
write('Maria nacio en Argentina?'),
 (pregunta1(argentina, maria) -> 
    write(' Si') 
 ;
    write(' No')
 ),
 nl,
 
 write('Maria nacio en Resistencia?'),
  (pregunta2(resistencia, maria) ->
    write(' Si')
  ;
    write(' No')
  ),
  nl,
  
  write('Maria nacio en Corrientes?'),
   (pregunta2(corrientes, maria) ->
    write(' Si')
  ;
    write(' No')
  ),
  nl,
  
  write('Maria nacio en Paraguay?'),
   (pregunta1(paraguay, maria) ->
    write(' Si')
  ;
    write(' No')
  ),
  nl,
  
    write('Maria nacio en Uruguay?'),
   (pregunta1(uruguay, maria) ->
    write(' Si')
  ;
    write(' No')
  ),
  nl.


