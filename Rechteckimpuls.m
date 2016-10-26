    function [ Vol ] = Rechteckimpuls( T )
% Funktion zur Darstellung des Rechteckimpulses

Vol = 0;

     if(T<5)
        Vol = 0;
     elseif (T>=5 && T<10)
        Vol = 5;
        
     elseif(T>=10 && T<13)
        Vol = 0;
        
     end
        
end

