%Oppgave 6.2 1)

function [x] = generateError(errorProb,length)

x = rand(size(length)) <errorProb;

%for i = 1:length
%    if rand() < errorProb
%        x(i) = 1;
%    else
%        x(i) = 0;
%    end
%end
%end