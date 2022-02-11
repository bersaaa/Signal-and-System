clc;
clear all;
n=1:100;
h= 0.08*(0.9).^n;
% a)Birim dürtü yanıtı "h","stem" komutuyla çizdirildi.
figure(1);
stem(h);
xlabel('n');
ylabel('h[n]');
title('Birim Dürtü Yanıtı ');
% b) Giriş işareti"x","stem" komutu ile çizdirilmiştir.
x=[zeros(1,100) ones(1,100) zeros(1,100) ones(1,100) ones(1,100)];
figure(2);
stem(x);
xlabel('n');
ylabel('x[n]');
title('Giriş İşareti');
% c) y[n]= h[n]*x[n] "stem" komutu ile çizdirilmiştir.
for(n=1:100)
  h = 0.08*(0.9).^n;
  x=[zeros(1,100) ones(1,100) zeros(1,100) ones(1,100) ones(1,100)]; 
  a_h(n)=h;
  y=conv(a_h,x);
end
figure(3);
stem(y);
xlabel('n');
ylabel('y[n]');
title('Konvolüsyon');
  