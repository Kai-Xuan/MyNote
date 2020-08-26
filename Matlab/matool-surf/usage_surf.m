% usage of surf
% ������ά����ͼ
clear
clc

[X,Y,Z] = peaks(25);
% X �� Y �ֱ���������ÿ�������ĺ������Լ������꣬Z �Ǹõ�����ĸ߶�ֵ

figure
surf(X,Y,Z);
%% ���������������Կ����ȸ��ߣ��о��ǳ�����
surfc(X,Y,Z);
meshc(X,Y,Z);

%% ��������
% k = 5;
% n = 2^k-1;
% [x,y,z] = sphere(n);
% c = hadamard(2^k);
% 
% figure
% surf(x,y,z,c);
% colormap([1  1  0; 0  1  1])
% axis equal


%%
[x,y]=meshgrid(0:0.1:2,1:0.1:3);
z=(x-1).^2+(y-2).^2-1;
subplot(2,2,1);
meshc(x,y,z);title('meshc(x,y,z)');
subplot(2,2,2);
meshz(x,y,z);title('meshz(x,y,z)');
subplot(2,2,3);
surfc(x,y,z);title('surfc(x,y,z)');
subplot(2,2,4);
surfl(x,y,z);title('surfl(x,y,z)');