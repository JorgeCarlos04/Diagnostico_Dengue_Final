
% Hechos sobre síntomas 
sintoma(malestar_general).
sintoma(fiebre).
sintoma(tos).
sintoma(secreciones_nasales).
sintoma(dolor_de_cabeza).
sintoma(dolor_muscular).
sintoma(dolor_articular).
sintoma(rash).
sintoma(hemorragia_inusual).

% Diagnóstico de gripe
diagnostico(gripe) :- 
    sintoma(malestar_general),
    sintoma(fiebre),
    sintoma(tos),
    sintoma(secreciones_nasales).

% Regla para diagnosticar
% La regla diagnosticar/2 toma una lista de síntomas.
% como entrada y devuelve el diagnóstico correspondiente.

diagnosticar(Sintomas, Resultado) :-
    findall(S, (member(S, Sintomas), sintoma(S)), SintomasEncontrados),
      length(SintomasEncontrados, N), N >= 3 -> 
        (   member(hemorragia_inusual, Sintomas) -> 
               
        Resultado = 'Gripe'
    ).


