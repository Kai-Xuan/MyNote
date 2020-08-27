% ���Ƹ�˹�ֲ�����
% If you find this code useful for your research, we appreciate it very much if you can cite our related works:
% Chen K X, Ren J Y, Wu X J, et al. Covariance Descriptors on a Gaussian Manifold and their Application to Image Set Classification[J]. Pattern Recognition, 2020: 107463

clear;
clc;

mu = zeros(1,2);            %�ø�˹�ֲ��ľ�ֵ����
sigma = [0.9 0.5; 0.5 0.9]; %�ø�˹�ֲ���Э�������

% 1.ʹ�� meshgrid �����õ�xoyƽ����ÿ�����������꣬��������� X ������������� Y
[X,Y] = meshgrid(-1.5:0.05:1.5); 
[rows,cols] = size(X); 
x = reshape(X,rows*cols,1);
y = reshape(Y,rows*cols,1);
p = [x,y];                  %��ÿ����ĺ�������� X ����������� Y �ϲ���һ��������

% 2. ʹ�� mvnpdf �����õ�ÿ����ĸ����ܶ�
z = mvnpdf(p,mu,sigma);     %���������ϵĸ����ܶ�
Z = reshape(z,rows,cols);

% 3. ʹ�� surf ����������˹�ֲ�������

figure; surf(X,Y,Z);                %������ 
figure; mesh(X,Y,Z);                %������

figure; surfc(X,Y,Z);               %������ ��������ʾ�ȸ���
figure; meshc(X,Y,Z);               %������ ��������ʾ�ȸ���

figure; contourf(X,Y,Z)             %ֻ���ȸ���ͼ




