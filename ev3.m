myev3 = legoev3('USB');
%% LCD
writeLCD(myev3,'Collision Alert!')
writeLCD(myev3,'X', 9, 19)
clearLCD(myev3)
%% sound
beep(myev3,3)
%% light
writeStatusLight(myev3,'orange','pulsing')
pause(3)

writeStatusLight(myev3,'red','solid')
pause(3)
writeStatusLight(myev3,'green','solid')
pause(3)
writeStatusLight(myev3,'off')
%% colorsensor
mycolorsensor = colorSensor(myev3);
color = readColor(mycolorsensor);
%% sonicsensor
mysonicsensor = sonicSensor(myev3);
distance = readDistance(mysonicsensor)
%% motor
mymotor = motor(myev3,'B');
mymotor.Speed = 50;
mymotor2=motor(myev3,'C');
mymotor2.Speed=mymotor.Speed;
start(mymotor)
start(mymotor2)
pause(1)
mymotor2.Speed = 0;
pause(2)
stop(mymotor)
stop(mymotor2)
rotation = readRotation(mymotor)
resetRotation(mymotor)
%%
clc;close all force;clear;