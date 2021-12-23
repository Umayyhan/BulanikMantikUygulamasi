function ucgen(altsinir,a,c,b,ustsinir,xi)
global X mu_X mu_xi ;
% mu_xi : xi lerin uyelik karsiligi 
% mu_X ler grafik cizdirmek icin matris olarak kullaniyoruz

% altsinir=-9,a=2,c=5,b=7,ustsinir=20,xi=8


%Bu degiskenlerin baska programlarda da kullanilabilmesi
%için global olmalari gerekir

%a-c-b noktalarina göre grafigi çizer
alfa=1; 
X1=altsinir:0.001:a-0.001;
X2=a:0.001:c-0.001;
X3=c:0.001:b-0.001;
X4=b:0.001:ustsinir;

mu_X1=zeros(size(X1)); % a nin altindakiler 0 olarak kaydediliyor
mu_X2=alfa*(X2-a)/(c-a);
mu_X3=alfa*(X3-b)/(c-b);
mu_X4=zeros(size(X4)); % b nin ustundekiler 0 alinir

X=[X1 X2 X3 X4];
mu_X=[mu_X1 mu_X2 mu_X3 mu_X4];
plot(X,mu_X)
grid on
%xi elemaninin üyelik derecesini bulur

% ucgen uyelik fonksiyon tanimi 
if xi>=a & xi<=c
    mu_xi=alfa*(xi-a)/(c-a);
elseif xi>c & xi<=b
    mu_xi=alfa*(xi-b)/(c-b);
else
    mu_xi=0;
end
