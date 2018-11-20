%1a- 1.5ms 
t1=vout.Time;
vv1=vout.Data;
figure;




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

