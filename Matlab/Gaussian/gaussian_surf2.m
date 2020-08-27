% https://ww2.mathworks.cn/help/stats/multivariate-normal-distribution-1.html
% If you find this code useful for your research, we appreciate it very much if you can cite our related works:
% Chen K X, Ren J Y, Wu X J, et al. Covariance Descriptors on a Gaussian Manifold and their Application to Image Set Classification[J]. Pattern Recognition, 2020: 107463


clear;
clc;

mu = zeros(1,2);                            %�ø�˹�ֲ��ľ�ֵ����
sigma = [0.9 0.5; 0.5 0.9];                 %�ø�˹�ֲ���Э�������

% ��1��.
% ʹ�� mvnrnd �����õ����ϸø�˹�ֲ���������
data = mvnrnd(mu,sigma,1000);
x = data(:,1);                              %�����������
y = data(:,2);                              %������������

% ��2��.
% ʹ�� mvnpdf �����õ�ÿ����ĸ����ܶ�
z = mvnpdf(data,mu,sigma);

% ��3��.
% ʹ��  griddata �� surf ���� ���Ѿ��õ������������񻯣����в�ֵ������ѡ��ʹ�� 'v4'
[X,Y,Z]=griddata(x,y,z,linspace(min(x),max(x))',linspace(min(y),max(y)),'v4'); %��ֵ


figure; surf(X,Y,Z);                    %������ 
figure; mesh(X,Y,Z);                    %������

figure; surfc(X,Y,Z);                   %������ ��������ʾ�ȸ���
figure; meshc(X,Y,Z);                   %������ ��������ʾ�ȸ���

figure; contourf(X,Y,Z)                 %ֻ���ȸ���ͼ
scatter3(data(:,1),data(:,2),z,'r.')    %ɢ��ͼ������ΪС���




