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
T6=vout6.Time;
Vv6=vout6.Data;
Tav6=av6.Time;
Vav6=av6.Data;
I6=i6.Data;
Ti6=i6.Time;

figure;
plot(T6,Vv6,Tav6,Vav6);
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





