clc;clear;clear all;
global X mu_X mu_xi ;

altsinir=0; 
ustsinir_mKare=100;
ustsinir_mevki=100;
ustsinir_binaYasi=100;
evFiyati_ustsinir=100;

%numerik girisler
mKare_xi=60;
konum_xi=90;
binaYasi_xi=55;

%Numerik girislerin, girisi cikis uyelik fonk ,Bulanik kumelerin tanimlanmasi
%1. m kare Puani girisine ait uyelik fonksiyonlari ve bulaniklastirma
ucgen(altsinir,0,0,40,ustsinir_mKare,mKare_xi); 
az_mKare=mu_xi; 
hold on;
ucgen(altsinir,40,50,70,ustsinir_mKare,mKare_xi);
orta_mKare=mu_xi;  
yamuk(altsinir,50,80,100,100,ustsinir_mKare,mKare_xi);
cok_mKare=mu_xi;
title('metre kare uyelik fonk');
grid off;
figure;


%2. konum degerlerine ait uyelik fonk girisleri...
ucgen(altsinir,0,0,40,ustsinir_mevki, konum_xi);
kotu_konum=mu_xi;
hold on;
ucgen(altsinir,40,50,70,ustsinir_mevki, konum_xi);
orta_konum=mu_xi;
yamuk(altsinir,50,80,100,100,ustsinir_mevki, konum_xi);
iyi_konum=mu_xi;
title('konum uyelik fonk');
grid off;
figure;


%3. bina yasina ait uyelik fonk girisleri ..
ucgen(altsinir,0,0,40,ustsinir_binaYasi,binaYasi_xi);
yeni_binaYasi=mu_xi;
hold on;
ucgen(altsinir,40,50,70,ustsinir_binaYasi,binaYasi_xi);
orta_binaYasi=mu_xi;
yamuk(altsinir,50,80,100,100,ustsinir_binaYasi,binaYasi_xi);
eski_binaYasi=mu_xi;
title('bina yasi uyelik fonk');
grid off;
figure;

%ev fiyat tahmini cikis uyelik fonk
ucgen2(altsinir,0,0,25,evFiyati_ustsinir);
ucuzEvFiyat=mu_X;
hold on;
ucgen2(altsinir,25,35,50,evFiyati_ustsinir);
ortaEvFiyat=mu_X;
ucgen2(altsinir,35,55,70,evFiyati_ustsinir);
yuksekEvFiyat=mu_X;
ucgen2(altsinir,55,83,100,evFiyati_ustsinir);
cokYuksekEvFiyat=mu_X;
title('ev fiyati')
figure;

%Kurallarin tanimlanmasi ve gecerlilik derecelerin hesaplanmasi
mu_kural1=min(min(az_mKare,kotu_konum),eski_binaYasi);
mu_kural2=min(min(az_mKare,kotu_konum),orta_binaYasi);
mu_kural3=min(min(az_mKare,kotu_konum),yeni_binaYasi);

mu_kural4=min(min(az_mKare,orta_konum),eski_binaYasi);
mu_kural5=min(min(az_mKare,orta_konum),orta_binaYasi);
mu_kural6=min(min(az_mKare,orta_konum),yeni_binaYasi);

mu_kural7=min(min(az_mKare,iyi_konum),eski_binaYasi);
mu_kural8=min(min(az_mKare,iyi_konum),orta_binaYasi);
mu_kural9=min(min(az_mKare,iyi_konum),yeni_binaYasi);

mu_kural10=min(min(orta_mKare,kotu_konum),eski_binaYasi);
mu_kural11=min(min(orta_mKare,kotu_konum),orta_binaYasi);
mu_kural12=min(min(orta_mKare,kotu_konum),yeni_binaYasi);

mu_kural13=min(min(orta_mKare,orta_konum),eski_binaYasi);
mu_kural14=min(min(orta_mKare,orta_konum),orta_binaYasi);
mu_kural15=min(min(orta_mKare,orta_konum),yeni_binaYasi);

mu_kural16=min(min(orta_mKare,iyi_konum),eski_binaYasi);
mu_kural17=min(min(orta_mKare,iyi_konum),orta_binaYasi);
mu_kural18=min(min(orta_mKare,iyi_konum),yeni_binaYasi);

mu_kural19=min(min(cok_mKare,kotu_konum),eski_binaYasi);
mu_kural20=min(min(cok_mKare,kotu_konum),orta_binaYasi);
mu_kural21=min(min(cok_mKare,kotu_konum),yeni_binaYasi);

mu_kural22=min(min(cok_mKare,orta_konum),eski_binaYasi);
mu_kural23=min(min(cok_mKare,orta_konum),orta_binaYasi);
mu_kural24=min(min(cok_mKare,orta_konum),yeni_binaYasi);

mu_kural25=min(min(cok_mKare,iyi_konum),eski_binaYasi);
mu_kural26=min(min(cok_mKare,iyi_konum),orta_binaYasi);
mu_kural27=min(min(cok_mKare,iyi_konum),yeni_binaYasi);

mu_sonuc1=mu_kural1*ucuzEvFiyat; % kuralin sonucuna gore fiyat belirlendi
mu_sonuc2=mu_kural2*ucuzEvFiyat;
mu_sonuc3=mu_kural3*ucuzEvFiyat;

mu_sonuc4=mu_kural4*ucuzEvFiyat;
mu_sonuc5=mu_kural5*ortaEvFiyat;
mu_sonuc6=mu_kural6*ortaEvFiyat;

mu_sonuc7=mu_kural7*ucuzEvFiyat;
mu_sonuc8=mu_kural8*ortaEvFiyat;
mu_sonuc9=mu_kural9*yuksekEvFiyat;

mu_sonuc10=mu_kural10*ucuzEvFiyat;
mu_sonuc11=mu_kural11*ortaEvFiyat;
mu_sonuc12=mu_kural12*yuksekEvFiyat;

mu_sonuc13=mu_kural13*ortaEvFiyat;
mu_sonuc14=mu_kural14*ortaEvFiyat;
mu_sonuc15=mu_kural15*yuksekEvFiyat;

mu_sonuc16=mu_kural16*ortaEvFiyat;
mu_sonuc17=mu_kural17*yuksekEvFiyat;
mu_sonuc18=mu_kural18*cokYuksekEvFiyat;

mu_sonuc19=mu_kural19*ucuzEvFiyat;
mu_sonuc20=mu_kural20*ortaEvFiyat;
mu_sonuc21=mu_kural21*yuksekEvFiyat;

mu_sonuc22=mu_kural22*ortaEvFiyat;
mu_sonuc23=mu_kural23*yuksekEvFiyat;
mu_sonuc24=mu_kural24*cokYuksekEvFiyat;

mu_sonuc25=mu_kural25*yuksekEvFiyat;
mu_sonuc26=mu_kural26*cokYuksekEvFiyat;
mu_sonuc27=mu_kural27*cokYuksekEvFiyat;

% s normu kullanilmistir
mu_birlestirme = max(max(max(max(mu_sonuc1, mu_sonuc2), max(mu_sonuc3, mu_sonuc4)), max(max(mu_sonuc5, mu_sonuc6), max(mu_sonuc7, mu_sonuc8))), max(max(max(mu_sonuc9, mu_sonuc10), max(mu_sonuc11, mu_sonuc12)), max(max(mu_sonuc13, mu_sonuc14), max(mu_sonuc15, mu_sonuc16))))
,max(max(max(max(mu_sonuc17, mu_sonuc18), max(mu_sonuc19, mu_sonuc20)), max(max(mu_sonuc21, mu_sonuc22), max(mu_sonuc23, mu_sonuc24))), max(max(max(mu_sonuc25, mu_sonuc26), max(mu_sonuc27, mu_sonuc27))));
plot(X,mu_birlestirme);

%durulastirma operatoru olarak agirlik merkezi kullanilmistir
toplam_alan=sum(mu_birlestirme); 
if toplam_alan==0
    disp('Agirlik merkezi Yonteminde Toplam Alan Sifir')
end
z = sum(mu_birlestirme.*X)/toplam_alan; % DURULAMA'DA centroid metodu kullanildi
h=[z,z,z,z,z,z,z,z,z,z,z]; %cizdirmek icin
line(h,0:0.1:1,'Color','red','LineStyle','--');
xlabel(['z = ', num2str(z)]);