close all;
clear all;
clc;

% data= [1112 1018 1039 1016 1099;
%  26438 26373 26451 26502 26290;
%  38722 38973 39108 39122 38973;
%  30547 30233 30190 30314 30191;
%  42345 42716 42721 42711 42748;
%  33728 33338 33334 33291 33284;
%  45357 45675 45790 45759 45745;
%  36607 36182 36210 36067 36176;
%  48223 48386 48555 48501 48596;
%  39211 38723 38772 38743 38776;
%  50645 51100 51074 50771 51068;
%  41455 41231 41139 41163 41121;
%  53061 53405 53388 53361 53268;
%  43717 43369 43487 43355 43272 ];

data1=[1066 1120 993 991 1044 0 0 0 0 0;
       0 0 0 0 0 26192 26210 26188 26172 26218 ;       
       38661 38774 39035 38842 38951 0 0 0 0 0;
       0 0 0 0 0 29896 30127 29922 29836 29969 ;
       42241 42602 42700 42653 42743 0 0 0 0 0;
       0 0 0 0 0 33191 33095 33140 33046 33056 ;
       45687 45750 45681 45654 45786 0 0 0 0 0;
       0 0 0 0 0 36222 35912 36070 35883 35895 ;
       48297 48394 48424 48484 48377 0 0 0 0 0;
       0 0 0 0 0 38978 38359 38447 38514 38524 ;
       50872 50875 50877 50953 50916 0 0 0 0 0;
       0 0 0 0 0 41278 40749 40910 40845 40727 ;
       53217 53287 53272 53302 53301 0 0 0 0 0;
       0 0 0 0 0 43580 43065 43201 43111 43177 ];


active_sensor= data1(1:2:end,:);
reference_sensor= data1(2:2:end,:);

active_data= zeros(1,70);
l=0;
for i= 1:7
    for k=1:10
        l=l+1;
        active_data(l)= active_sensor(i,k);
    end
end

reference_data= zeros(1,70);
l=0;
for i= 1:7
    for k=1:10
        l=l+1;
        reference_data(l)= reference_sensor(i,k);
    end
end

% active_fft =fft(active_data);
% reference_fft =fft(reference_data);


t=1:70;
hold on;
plot(t,active_data,'r');
plot(t,reference_data,'k');
% stem(t,abs(active_fft),'r');
% stem(t,abs(reference_fft),'k');
xlabel('Sample time');
ylabel('adc value');

legend('active filter','reference filter')

 