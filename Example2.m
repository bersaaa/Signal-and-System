clc;
clear all;
%% HW4.2.a.
% for M=2
t = -3:0.01:7;
sum=0;x=[];M=2;
for k=1:M
    sum=sum+((2/(k*pi))*cos(k*pi)*cos((k*pi*t)+(pi/2))); 
    x=1+sum;

end
figure(1);
plot(t,x);
xlabel("t (zaman)"); 
ylabel("X(t) giriş işareti"); 
title("X(t)'nin Fourier serisi açılımı, M:2"); 

% for M=4
t = -3:0.01:7;
sum=0;x=[];M=4;
for k=1:M
    sum=sum+((2/(k*pi))*cos(k*pi)*cos((k*pi*t)+(pi/2))); 
    x=1+sum;

end
figure (2);
plot(t,x);
xlabel("t (zaman)"); 
ylabel("X(t) giriş işareti"); 
title("X(t)'nin Fourier serisi açılımı , M:4"); 

% for M=8
t = -3:0.01:7;
sum=0;x=[];M=8;
for k=1:M
    sum=sum+((2/(k*pi))*cos(k*pi)*cos((k*pi*t)+(pi/2))); 
    x=1+sum;

end
figure(3);
plot(t,x);
xlabel("t (zaman)"); 
ylabel("X(t) giriş işareti"); 
title("X(t)'nin Fourier serisi açılımı, M:8"); 

% for M=32
t = -3:0.01:7;
sum=0;x=[];M=32;
for k=1:M
    sum=sum+((2/(k*pi))*cos(k*pi)*cos((k*pi*t)+(pi/2))); 
    x=1+sum;

end
figure(4);
plot(t,x);
xlabel("t (zaman)"); 
ylabel("X(t) giriş işareti"); 
title("X(t)'nin Fourier serisi açılımı, M:32"); 

% for M=64
t = -3:0.01:7;
sum=0;x=[];M=64;
for k=1:M
    sum=sum+((2/(k*pi))*cos(k*pi)*cos((k*pi*t)+(pi/2))); 
    x=1+sum;

end
figure (5);
plot(t,x);
xlabel("t (zaman)"); 
ylabel("X(t) giriş işareti"); 
title("X(t)'nin Fourier serisi açılımı, M:64"); 


%% HW4.2.b
% for M=64
t = -3:0.01:7;
sum=0;y=[];
M=64;
for k=1:M
    sum=sum+((sqrt(-1)*cos(pi*k)*cos(pi*k*t))/((pi*k)+(pi*k)^2));
    y=(2*sum)+1;
    ysanal=imag(y);
    ygercek=real(y);

end
figure;

grid on; 
subplot(1,2,1) 
plot(t,ygercek) 
xlabel("t (zaman)"); 
ylabel("Y(t) gercek"); 
title("Y(t)'nin Gercek kısmı"); 
subplot(1,2,2) 
plot(t,ysanal) 
xlabel("t (zaman)"); 
ylabel("Y(t) sanal"); 
title("Y(t)'nin Sanal kısmı");



















