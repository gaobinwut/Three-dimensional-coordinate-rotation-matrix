a=20*pi/180;%横倾
b=20*pi/180;%纵倾
c=30*pi/180;%航向

%经度100，纬度8下的x,y,z系数
%默认W1为正确的情况下结算出来的系数
% x = 16.16;
% y = -0.25;
% z = 12.43;

% %网站上查找经度100，纬度8,海拔-100m下的x,y,z磁场值及对应电流系数
% North = 41719.2;
% East = -320;
% Down = 1414.6;

%程序解算经度100，纬度8,海拔-100m下的x,y,z磁场值及对应电流系数
North = 41630.2;
East = -246.968;
Down = 1446.32;

% %程序解算经度100，纬度45,海拔-100m下的x,y,z磁场值及对应电流系数
% North = 23747.6;
% East = -586.816;
% Down = 53142.3;

x = North;
y = East;
z = Down;

%x,y,z方向电流系数
D = [20/42000 20/42000 20/60000];


% syms a;
% syms b;
% 
% % 将航向作为变量
% syms c;

%横倾旋转矩阵
A = [1 0 0;0 cos(a) sin(a);0 -sin(a) cos(a)];
A1 = [1 0 0;0 cos(a) -sin(a);0 sin(a) cos(a)];

%纵倾旋转矩阵
B = [cos(b) 0 -sin(b);0 1 0;sin(b) 0 cos(b)];
B1 = [cos(b) 0 sin(b);0 1 0;-sin(b) 0 cos(b)];

%航向旋转矩阵
C = [cos(c) sin(c) 0;-sin(c) cos(c) 0;0 0 1];
C1 = [cos(c) -sin(c) 0;sin(c) cos(c) 0;0 0 1];

%Y值相反
% V1 = B*A*C;
% V2 = C*B*A;
% V3 = A*B*C;
% V4 = A*C*B;
% V5 = C*A*B;
% V6 = B*C*A;

% V7 = A1*B1*C1;
% V8 = B1*A1*C1;
% V9 = C1*B1*A1;%误差测试仪的旋转矩阵
% V10 = B1*C1*A1;
% V11 = A1*C1*B1;
% V12 = C1*A1*B1;

V13 = A1*B*C;
V14 = A1*B*C1;
V15 = A1*B1*C;
V16 = A1*B1*C1;
V17 = A*B*C;
V18 = A*B*C1;
V19 = A*B1*C;
V20 = A*B1*C1;

W13 = V13*[x;y;z]*D;
W14 = V14*[x;y;z]*D;
W15 = V15*[x;y;z]*D;
W16 = V16*[x;y;z]*D;
W17 = V17*[x;y;z]*D;
W18 = V18*[x;y;z]*D;
W19 = V19*[x;y;z]*D;
W20 = V20*[x;y;z]*D;

V21 = C*B*A;
V22 = C*B*A1;
V23 = C*B1*A;
V24 = C*B1*A1;
V25 = C1*B*A;
V26 = C1*B*A1;
V27 = C1*B1*A;
V28 = C1*B1*A1;

W21 = V21*[x;y;z]*D;
W22 = V22*[x;y;z]*D;
W23 = V23*[x;y;z]*D;
W24 = V24*[x;y;z]*D;
W25 = V25*[x;y;z]*D;
W26 = V26*[x;y;z]*D;
W27 = V27*[x;y;z]*D;
W28 = V28*[x;y;z]*D;


% W1 = V1*[x;y;z];
% W2 = V2*[x;y;z];
% W3 = V3*[x;y;z];
% W4 = V4*[x;y;z];
% W5 = V5*[x;y;z];
% W6 = V6*[x;y;z];

% W7 = V7*[x;y;z];
% W8 = V8*[x;y;z];
% W9 = V9*[x;y;z];
% W10 = V10*[x;y;z];
% W11 = V11*[x;y;z];
% W12 = V12*[x;y;z];



% subplot(2,3,1);
% fplot(W1(1),[0,10],'r');
% hold on
% fplot(W1(2),[0,10],'g');
% hold on
% fplot(W1(3),[0,10],'b');
% hold off
% 
% subplot(2,3,2);
% fplot(W2(1),[0,10],'r');
% hold on
% fplot(W2(2),[0,10],'g');
% hold on
% fplot(W2(3),[0,10],'b');
% xlabel('error');
% hold off
% 
% subplot(2,3,3);
% fplot(W3(1),[-10,10],'r');
% hold on
% fplot(W3(2),[-10,10],'g');
% hold on
% fplot(W3(3),[-10,10],'b');
% hold off
% 
% subplot(2,3,4);
% fplot(W4(1),[0,10],'r');
% hold on
% fplot(W4(2),[0,10],'g');
% hold on
% fplot(W4(3),[0,10],'b');
% hold off
% 
% subplot(2,3,5);
% 
% fplot(W5(1),[0,10],'r');
% hold on
% fplot(W5(2),[0,10],'g');
% hold on
% fplot(W5(3),[0,10],'b');
% xlabel('error');
% hold off
% 
% subplot(2,3,6);
% fplot(W6(1),[0,10],'r');
% hold on
% fplot(W6(2),[0,10],'g');
% hold on
% fplot(W6(3),[0,10],'b');
% xlabel('error');
% hold off
% 
