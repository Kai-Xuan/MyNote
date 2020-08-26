% ���Ƹ�˹�ֲ�����


clear;
clc;

mu = zeros(1,2);
% sigma = eye(2);
sigma = [0.9 0.5; 0.5 0.9];

[X,Y] = meshgrid(-1.5:0.05:1.5);
[rows,cols] = size(X);
x = reshape(X,rows*cols,1);
y = reshape(Y,rows*cols,1);

p = [x,y];
z = mvnpdf(p,mu,sigma); % ���������ϵĸ����ܶ�
Z = reshape(z,rows,cols);

figure

surf(X,Y,Z); %������ 
mesh(X,Y,Z); %������

surfc(X,Y,Z); %������ ��������ʾ�ȸ���
meshc(X,Y,Z); %������ ��������ʾ�ȸ���




