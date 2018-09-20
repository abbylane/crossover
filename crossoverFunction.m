function crossoverF(handles)

% completed GUI with all three
%% frequency array and OMEGA

array = linspace(10,90,9);
freqNEW = array;

for i=1:3
    freqNEW = [freqNEW, array*10^i];
end

freqNEW = [freqNEW 10000 20000];

omega = freqNEW*2*pi;

%% SET parameters from GUI (4 sliders)

Lw = handles.llowSlide.Value*10^-3;
Cw = handles.clowSlide.Value*10^-6;

Lm1 = handles.l1midSlide.Value*10^-3;
Cm1 = handles.c1midSlide.Value*10^-6;

Lm2 = handles.l2midSlide.Value*10^-3;   
Cm2 = handles.c2midSlide.Value*10^-6;

Lt = handles.lhighSlide.Value*10^-3;     
Ct = handles.chighSlide.Value*10^-6; 

%% Woofer LOW PASS
%for i=10:omega
zLw = j.*omega*Lw;
zCw = -j./(omega*Cw);
zRw = 6.5;

zRwpCw = zCw.*zRw./(zCw + zRw); % R in parallel with C for woofer
% impedence vout/vin--- vin = 1

% woofer = (zRwpCw)./(zLw+zRwpCw); % equation for low pass filter (ratio of output to input)
% end

woofer = zRwpCw + zLw;

% added
W = zRw./woofer;
Wmag = abs(W);

%% midrange 
zLm1 = 1i.*omega*Lm1;
zLm2 = 1i.*omega*Lm2;
zCm1 = 1i./(omega*Cm1);
zCm2 = 1i./(omega*Cm2);

zRm = 7;    % resistance for midrange

%RmPCm1 = zCm1.*zRm./(zCm1 + zRm); % R in parallel with C1 for midrange
%part2 = RmPCm1+zLm1;              % series with L1
%part3 = part2.*zLm2./(part2+zLm2); % in parallel with L2

%midrange = part3 + zCm2; % equation for midrange RpC1+L1pL2+C2

% test midrange 4/7

part1 = (zRm.*zCm2)./(zRm + zCm2);
part2 = part1 + zLm2;
part3 = (part2.*zLm1)./(part2 + zLm1);
midrange = part3 + zCm1;

M = zRm./midrange;
Mmag = abs(M);

%% tweeter 

zLt = 1i.*omega*Lt;
zCt = -1i./(omega*Ct);
zRt = 8;                % tweeter resistance (ohms) 

RtpLt = zLt.*zRt./(zLt + zRt); % L in Parallel with R for tweeter

tweeter = RtpLt + zCt;  % equation for tweeter C+LpR == to total impedance seen by stereo 

T = zRt./tweeter;
Tmag = abs(T);

%% Plot
a = Wmag + Mmag + Tmag;

loglog(freqNEW, Wmag,'r-',...
    freqNEW, Mmag, 'b',...
   freqNEW, Tmag, 'g',...
    freqNEW, a, 'k--')

xlabel(handles.plotCrossover,'Frequency')
ylabel(handles.plotCrossover, 'V out')
title( handles.plotCrossover,'Crossover Outputs')
grid (handles.plotCrossover,'on')
refline(0,0.707)
legend(handles.plotCrossover, 'Woofer', 'Midrange', 'Tweeter','Total Output')



