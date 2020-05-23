function q = SimulacaoJogoV3(player_inicio,espera)
%% V3: salva matrizes num array 3D
  
%% V2: usa ProximaJogadaV3
%% para monitorar qual parte do algoritmo � usada
%% salvando vari�vel cod .
%% cod de um d�gito => Fim de jogo
%% 2 d�gitos come�ando com um =>  Defesa
%% 4 digitos come�ando com dois ou 3 => Ataque
  
% player_inicio = 1  => usu�rio come�a
% player_inicio = 2  => computer come�a
  
  
  A1 = SorteiaMatrizInicial(player_inicio)
  Saida = A1;
  pause(espera);
  A2 = A1;

  while length(A2)>1 && length(A1)>1
    A2 = ProximaJogadaV3(A1)
    load cod;
    cod
    pause(espera);
    A1 = SorteiaJogadaUsuario(A2)
    pause(espera);
    Saida = cat(3,Saida,A2,A1);
  end
  
  q = Saida;
  
endfunction
