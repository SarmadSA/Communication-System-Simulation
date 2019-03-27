%Oppgave 6.1

%Generates a random letter from range r.
function [x] = generateMessage(k)
r=0:1; %the range from A to J
x = r(randi(length(r), 1, k));

% m = ''
% % Iterate n times to generate an array of random numbers
% for i=1:k,
%    l=r(randi(numel(r))) %Genereate a letter from range r (A-J)
%    m = m + l %generate a message from random latters l
% end
% %Ja det er uniformt fordelt