% usage of mesh
% ������ά����ͼ
clear
clc


[X,Y] = meshgrid(-8:.5:8);
% ��Ҫʹ�õĺ���Ϊ[X,Y]=meshgrid(xgv,ygv);
% meshgrid�������ɵ�X��Y�Ǵ�С��ȵľ���xgv��ygv����������ʸ����xgv��ygv������������

R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;

figure
mesh(X,Y,Z)