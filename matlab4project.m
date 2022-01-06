clc
clear all
clf

%cases
day = 1:232;
cases = [10 55 127 134 163 168 296 238 250 664 491 518 1068 455 922 986 717 1209 1453 919 986 1287 1529 1344 1465 1293 1173 1222 1346 1141 1841 1585 1197 1151 1551 2049 1827 2723 2119 2126 1980 2219 2253 2563 2450 2994 2341 2049 2275 2638 2886 2320 1654 1461 4045 1706 3207 2447 2141 1691 2418 2415 2282 2715 2390 2441 1707 1238 1126 1516 1666 1496 1298 1078 1578 1035 870 819 1473 778 568 842 758 628 602 528 619 550 665 836 618 619 461 667 743 877 724 581 768 776 880 866 886 858 579 698 682 945 1133 1218 1124 825 767 1396 1225 1366 1257 985 1268 982 1608 1624 1610 1293 1410 1363 1146 1379 1865 1531 1482 1524 1360 1876 1991 2017 2049 1366 1429 1593 1729 1929 2250 1678 1563 1874 2082 2001 2222 2348 1833 1764 1756 2060 1726 2454 1754 1973 1903 1433 2167 1433 5538 2629 1343 1580 1385 1959 2376 2008 1383 1529 1511 1902 2088 2226 2461 1316 1659 1479 1820 2755 2308 1588 1898 1504 2262 2176 2429 2267 1411 2210 1562 2624 3111 2776 2782 2702 3405 2964 4087 5008 3568 4083 3579 3702 4009 4960 5014 5900 4031 5019 4004 6116 6418 6416 8303 6421 6598 7658 9991 11356 12177 9919 11035 12673 12384 12788 15223 11003 10636 11847];
bar(day,cases)

Sxy = sum(day.*cases)-(sum(day)*sum(cases))/232;
Sxx = sum(day.^2)-(sum(day)^2)/232 ;
m = Sxy/Sxx ;
b = mean(cases)-m*mean(day) ;
fprintf('Linear Model is: y = %4.2f x+%4.2f\n',m,b) 

xvalue = linspace(1,232); 
Model_y = m.*xvalue+b; 
hold on 
plot(xvalue,Model_y) 

%hospitalizations
day = 1:213;
hosp = [0 2 3 2 2 2 3 6 5 4 18 12 16 53 429 504 534 595 600 592 781 666 728 744 768 1293 1407 1778 1820 1818 1885 2192 2358 2717 2787 2694 2699 2716 3409 3573 3325 3253 3115 3313 3293 3423 3585 3233 3249 3367 3601 3540 3290 3239 3047 3053 2996 2969 2988 3554 3329 3403 3328 3372 3220 3135 2923 3012 3160 3061 2676 2539 2490 2555 2503 2300 2228 2001 2013 2124 2073 1947 1892 1461 1939 1722 1681 1620 1632 1366 1449 1501 1547 1580 1625 1556 1498 1859 1738 1734 1725 1381 1338 1393 1520 1901 1878 1871 1844 1599 1700 1744 1769 1707 1683 1656 1747 1634 1588 1561 1626 1610 1707 1700 1673 1844 1811 1790 1818 1865 1873 1832 1798 1703 1788 1732 1672 1617 1628 1651 1696 1755 1741 1735 1670 1656 1787 1840 1750 1751 1748 1771 1844 1847 1821 1732 1622 1649 1768 1744 1710 1652 1729 1716 1773 1790 1776 1748 1714 1625 1777 1894 1861 1846 1824 1936 1865 2000 2098 2062 2058 2027 2102 2230 2457 2430 2493 2403 2472 2703 2714 2731 2761 2788 2878 3162 3219 3307 3361 3472 3654 3876 4184 4367 4716 4676 4783 5170 5571 5391 5621 5822 5898];
figure()
bar(day,hosp)

Sxy = sum(day.*hosp)-(sum(day)*sum(hosp))/213;
Sxx = sum(day.^2)-(sum(day)^2)/213 ;
m = Sxy/Sxx ;
b = mean(hosp)-m*mean(day) ;
fprintf('Linear Model is: y = %4.2f x+%4.2f\n',m,b) 

xvalue = linspace(1,213); 
Model_y = m.*xvalue+b; 
hold on;
plot(xvalue,Model_y) 

%deaths
day = 1:213;
deaths = [0 1 0 3 1 1 3 4 5 5 11 13 21 23 39 19 47 36 35 26 80 70 73 75 45 73 80 123 61 130 30 57 98 119 108 80 59 49 89 140 103 112 56 41 170 162 123 100 64 54 137 130 130 74 49 59 142 87 106 77 67 28 48 107 83 60 58 32 109 98 62 64 41 203 95 65 81 22 21 31 65 79 64 45 19 24 36 61 38 24 15 17 21 24 37 12 7 9 31 34 18 23 19 7 27 10 22 18 5 9 21 23 19 17 2 24 26 16 16 26 11 10 19 29 20 37 6 2 25 28 27 19 6 17 27 20 27 22 21 9 32 31 20 23 7 10 41 23 25 39 19 8 14 26 23 42 24 16 18 33 21 23 22 12 24 21 31 33 21 12 24 34 21 51 26 17 21 38 35 34 28 10 13 47 57 55 27 17 29 60 41 41 61 23 23 52 51 49 18 61 24 62 95 78 86 50 29 81 50 52 191 72 47];
figure()
bar(day,deaths)

Sxy = sum(day.*deaths)-(sum(day)*sum(deaths))/213;
Sxx = sum(day.^2)-(sum(day)^2)/213 ;
m = Sxy/Sxx ;
b = mean(deaths)-m*mean(day) ;
fprintf('Linear Model is: y = %4.2f x+%4.2f\n',m,b) 

xvalue = linspace(1,213); 
Model_y = m.*xvalue+b; 
hold on;
plot(xvalue,Model_y) 


%graphs

figure()
day = 1:62;
white_cases = [5214 6127 7554 8573 10427 11676 13566 14809 16390 17407 19218 20251 21659 22289 23426 24128 25020 25574 26338 26830 27901 28469 29505 30175 31143 31974 33468 34463 36127 37393 39544 40935 43426 45239 48130 49781 52502 54509 57596 59651 62559 64534 68823 70474 73743 75851 78956 80971 84430 86609 89971 92617 97533 101118 107425 111937 120359 125937 135721 143405 163066 176440];
bar(day,white_cases)

figure()
day = 1:62;
other_cases = [15638 18466 22803 26535 33476 38679 47933 53423 61351 67291 74973 80167 88645 92017 96834 99702 102737 104263 106205 107355 108861 110071 112218 113838 117230 118580 121580 123362 126623 129083 133122 135431 139798 142513 147250 150112 154911 158712 163999 167393 172498 175811 182685 185144 189723 192395 197500 200341 205989 209154 214309 217709 226183 229525 240210 246867 258610 267871 287818 300410 324921 347400];
bar(day,other_cases)

%white cases
gamma = 1/4; %because it's every 3.5 days
pop_april = 12812508;
Inw = [];
yw = [];
Inw(1) = white_cases(1);
yw(1) =  white_cases(2)/(0.7153*pop_april);
for n=2:61
    Iiw = white_cases(1);
    for i=1:n
        Iiw = Iiw+(1-gamma)^(n-i)*white_cases(i);
    end
    Inw(n) = Iiw;
    yw(n) = white_cases(n+1)/(0.7153*pop_april);
end
Sxy = sum(Inw.*yw)-(sum(Inw)*sum(yw))/61;
Sxx = sum(Inw.^2)-(sum(Inw)^2)/61 ;
mw = Sxy/Sxx 
bw = mean(yw)-mw*mean(Inw) ;
%fprintf('Linear Model is: y = %4.2f x+%4.2f\n',mw,bw) 
figure()
plot(Inw,yw)
title("white cases")
xlabel("In")
ylabel("Dn+1/Nn")

%other cases
Ino = [];
yo = [];
Ino(1) = other_cases(1);
yo(1) = other_cases(2)/(0.2847*pop_april);
for n=2:61
    Iio = other_cases(1);
    for i=1:n
        Iio = Iio+other_cases(i)*(1-gamma)^(n-i);
    end
    Ino(n) = Iio;
    yo(n) = other_cases(n+1)/(0.2847*pop_april);
end
Sxy = sum(Ino.*yo)-(sum(Ino)*sum(yo))/61;
Sxx = sum(Ino.^2)-(sum(Ino)^2)/61 ;
mo = Sxy/Sxx 
bo = mean(yo)-mo*mean(Ino) ;
%fprintf('Linear Model is: y = %4.2f x+%4.2f\n',mo,bo) 
figure()
plot(Ino,yo)
title("non-white cases")
xlabel("In")
ylabel("Dn+1/Nn")

%model

figure()
betaw = mw; 
betao = mo;
S0w = 0.7153*pop_april; 
I0w = white_cases(1); 
R0w = 0; 
tn = [0:1:50]; 
n = length(tn); 
Snw = zeros(n,1); 
Inw = zeros(n,1); 
Rnw = zeros(n,1); 

S0o = 0.2847*pop_april; 
I0o = other_cases(1); 
R0o = 0; 
Sno = zeros(n,1); 
Ino = zeros(n,1); 
Rno = zeros(n,1); 
 
Snw(1) = S0w; 
Inw(1) = I0w; 
Rnw(1) = R0w;

Sno(1) = S0o; 
Ino(1) = I0o; 
Rno(1) = R0o;

 
for i = 2:n 
    Snw(i) = Snw(i-1)-betaw*Inw(i-1)*Snw(i-1)-betaw*Ino(i-1)*Snw(i-1); 
    Inw(i) = (1-gamma)*Inw(i-1)+betaw*Inw(i-1)*Snw(i-1)+betaw*Ino(i-1)*Snw(i-1); 
    Rnw(i) = Rnw(i-1)+gamma*Inw(i-1); 
    Sno(i) = Sno(i-1)-betao*Ino(i-1)*Sno(i-1)-betao*Inw(i-1)*Sno(i-1); 
    Ino(i) = (1-gamma)*Ino(i-1)+betao*Ino(i-1)*Sno(i-1)+betao*Inw(i-1)*Sno(i-1); 
    Rno(i) = Rno(i-1)+gamma*Ino(i-1); 
end 
 
plot(tn,Snw,'.b','MarkerSize',30) 
hold on 
plot(tn,Inw,'.r','MarkerSize',30) 
plot(tn,Rnw,'.g','MarkerSize',30) 
title('SIR model for white people cases')
xlabel('Time') 
ylabel('Population') 
legend('Susceptible','Infected','Recovered') 

figure()
plot(tn,Sno,'.b','MarkerSize',30) 
hold on 
plot(tn,Ino,'.r','MarkerSize',30) 
plot(tn,Rno,'.g','MarkerSize',30) 
title('SIR model for non-white people cases')
xlabel('Time') 
ylabel('Population') 
legend('Susceptible','Infected','Recovered') 