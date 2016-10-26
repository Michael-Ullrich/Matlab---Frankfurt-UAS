clear all;
close all;
clc;

w = 2*pi/10;
                    

t = 0:0.01:13.0;  % Zeitbereich anlegen
               
                                
scrsz = get(0,'ScreenSize');
hd1 = figure('Position',[50 scrsz(4)*0.09 scrsz(3)/2 scrsz(4)*0.8]);
set(hd1,'NumberTitle','off','Name','Testat 5: Fourierreihe');


fplot(@Rechteckimpuls,[0 13])
hold on;
ylim([-2 6]);
xlabel('time (s)');
ylabel('voltage (V)');


title('Rechteckpuls - Fourierentwicklung');

% Entwicklung 0. Ordnung 
f0 = 2.5;
plot(t,f0,'-r');


% Entwicklung 1. Ordnung
f1 = f0 - 10/pi * sin(w*t);
plot(t,f1,'-g');

% Entwicklung 3. Ordnung
f3 = f1 - 10/pi * sin(3*w*t)/3;
plot(t,f3,'-y');

% Entwicklung 5. Ordnung
f5 = f3 - 10/pi * sin(5*w*t)/5;
plot(t,f5,'-m');

% Entwicklung 7. Ordnung
f7 = f5 - 10/pi * sin(7*w*t)/7;
plot(t,f7,'-k');

legend('Rechtecksignal','0. Ordnung','1. Ordnung','3. Ordnung','5. Ordnung','7. Ordnung');
