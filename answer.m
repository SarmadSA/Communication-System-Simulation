% Oppgave 6.7

%1.Generer ei tilfeldig fire-bits melding .
%generateMessage(4) = 1     0     1     1

%2.Kod meldinga med hammingenc(m) og f� kodeordet . Korleis ser det ut?
% hammingenc(generateMessage(4))=  1     0     1     1     0     1     0

%3.Dekod  slik at du f�r . Er  lik  eller ikkje?
% hammingdec([1,0,1,1,0,1,0]) or hammingdec(ans) = 1     0     1     1
% e =  0     0     0     0

%4.Lag eit kodeord med �in bitfeil, og pr�v � dekoda det:
% c1 = mod([1 0 1 1 0 1 0] + [0 0 0 1 0 0 0],2) = 1     0     1     0     0     1     0
% m1 = hammingdec(c1) = 1     0     1     1
% e =  0     0     0     1
% Ja det er correct dekoda

