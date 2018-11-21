%1a- 1.5ms 
t1=vout.Time;
vv1=vout.Data;

%1b- 10us
t2=vout2.Time;
vv2=vout2.Data;

%1c 1us
t3=vout3.Time;
vv3=vout3.Data;

plot(t1,vv1,t2,vv2,t3,vv3);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Output Voltage of the Single Phase Rectifier');


%2a 25 Ohm
T4=vout4.Time;
Vv4=vout4.Data;
Tav4=av1.Time;
Vav4=av1.Data;

figure;
plot(T4,Vv4,Tav4,Vav4);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Output Voltage of the Single Phase Rectifier with Load with 25 Ohm');
legend('Output Voltage of the Single Phase Rectifier','Average Voltage at the Output of the Rectifier');

%2b 25 Ohm and 10 mH

T5=vout5.Time;
Vv5=vout5.Data;
Tav5=av5.Time;
Vav5=av5.Data;

figure;
plot(T5,Vv5,Tav5,Vav5);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Output Voltage of the Single Phase Rectifier with Load with 25 Ohm + 0.01 H');
legend('Output Voltage of the Single Phase Rectifier','Average Voltage at the Output of the Rectifier');

%2c
T7=vout6.Time;
Vv7=vout6.Data;
Tav7=av6.Time;
Vav7=av6.Data;
I6=i6.Data;
Ti6=i6.Time;

figure;
plot(T7,Vv7,Tav7,Vav7);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Output Voltage of the Single Phase Rectifier with Load with 25 Ohm + 1 H');
legend('Output Voltage of the Single Phase Rectifier','Average Voltage at the Output of the Rectifier');


%{
I can build this circuit by using FESB16HT-E3/81GITR-ND Diode.The reason behind of using it is 
It can withstand reverse voltage up to 500V and can deliver 16 Amper at
the output. Voltage drop over it is only 1.5 Volt at 16 Amper and
recovery time of the diode is 50 ns. Also it is less than 1 US Dollar. 

 https://www.digikey.com/product-detail/en/vishay-semiconductor-diodes-division/FESB16HT-E3-81/FESB16HT-E3-81GITR-ND/2144070
%}

%{
As diode rectifier module, 641-1374-5-ND diode can be used. It can
withstand voltages up to 1kV and can deliver 25 Amper at the output. At
12.5 Amper at the output voltage drop over it becomes 1 Volt which is not a
small number but it is only 0.72 US Dollar and it seems that it is widely
used.

https://www.digikey.com/product-detail/en/comchip-technology/GBU2510-G/641-1374-5-ND/2074839

%}


%2.3 R=100 Ohm C= 356.3uF

T8=vout7.Time;
Vv8=vout7.Data;
Tav8=av7.Time;
Vav8=av7.Data;


figure;
plot(T8,Vv8,Tav8,Vav8);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Output Voltage of the Single Phase Rectifier with Load with 100 Ohm and Capacitor with 356.3 uF');
legend('Output Voltage of the Single Phase Rectifier','Average Voltage at the Output of the Rectifier');



%{

    Aluminum Electrolytic Capacitor which has "565-4473-ND" Digikey number
    can be used. It has slightly more than calculated capacitance, 390uF
    and can withstand up to 400V, which is more than line-neutral voltage
    of our system as precaution. Also it has 20% tolerance which is pretty
    high.


https://www.digikey.com/product-detail/en/united-chemi-con/ESMR401VSN391MR30S/565-4473-ND/5824676

%}

%2.4 R=25 Ohm L=1H Ls= 10mH

T8=vout8.Time;
Vv8=vout8.Data;
Tav8=av8.Time;
Vav8=av8.Data;


figure;
plot(T8,Vv8,Tav8,Vav8);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Output Voltage of the Single Phase Rectifier with Load with 25 Ohm L=1 H Ls= 10mH');
legend('Output Voltage of the Single Phase Rectifier','Average Voltage at the Output of the Rectifier');


%2.5 R=25 Ohm L1=600uH L2= 600uH

figure;
Tpc=Vpcc.Time;
Vpc=Vpcc.Data;
plot(Tpc,Vpc);
xlabel('Time[second]');
ylabel('Voltage [Volt]');
title('Pcc Voltage');
legend('Pcc Voltage');

% QUESTION 3

%3.1

Tvout=Vout.Time;
Vvout=Vout.Data;
Tiarms2=Ia.Time;
Iiarms2=Ia.Data;
Tinrms2=In.Time;
Iinrms2=In.Data;

figure;
plot(Tvout,Vvout,Tiarms2,Iiarms2,Tinrms2,Iinrms2);
xlabel('Time[second]');
ylabel('Voltage [Volt] and Current[A]');
title('3 ph Diode Rectifier');
legend('Output Voltage','Current of Phase A','Current of Neutral Line');

%3.2

Tiarms2=Iarms.Time;
Iiarms2=Iarms.Data;
Tinrms2=Inrms.Time;
Iinrms2=Inrms.Data;

figure;
plot(Tiarms2,Iiarms2,Tinrms2,Iinrms2);
xlabel('Time[second]');
ylabel('RMS Current[A]');
title('3 ph Diode Rectifier');
legend('RMS Current of Phase A','RMS Current of Neutral Line');
ylim([0,20]);
xlim([9.83,9.85])

%3.3

Tiarms2=Iarms2.Time;
Iiarms2=Iarms2.Data;
Tinrms2=Inrms2.Time;
Iinrms2=Inrms2.Data;

figure;
plot(Tiarms2,Iiarms2,Tinrms2,Iinrms2);
xlabel('Time[second]');
ylabel('RMS Current[A]');
title('3 ph Diode Rectifier without Ls');
legend('RMS Current of Phase A','RMS Current of Neutral Line');
ylim([0,20]);





