%Oppgave 6.4 og 6.5 og 6.6

function [x] = simulator(m,k,p)
    
    totOrdfeil = 0; %oppgave 6.4
    totalBitFeil = 0; %oppgave 6.5
    bitfeilhisto = zeros(1,m);%antallet bitfeil som skal plottes oppgave 6.6
    
    for i = 1:m
       i %print the currnt number of element
       [ordfeil,bitfeil] = randomErrorVector(k,p);
       bitfeilhisto(i) = bitfeil;
       totOrdfeil = totOrdfeil + ordfeil;
       totalBitFeil = totalBitFeil + bitfeil;
    end
    
    %Printe total antall ord feil i fra de genererte ordene
    totOrdfeil
    totalBitFeil
    histogram(bitfeilhisto)