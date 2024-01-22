function [xn,t] = iDFT(X_m,X_phi,ts,drawflag)
% [xn,t] = iDFT(X_m,X_phi,ts) ��ɢ���еĿ��ٸ���Ҷ��任��Ƶ��ת��Ϊʱ��
% ���� X_mΪ��ֵ����
%      X_phiΪ��λ��������λΪ��
%      tsΪ���еĲ���ʱ��/s
%      drawflagΪ��ͼ��ʶλ��ȡ0ʱ����ͼ�������0ֵʱ��ͼ��Ĭ��Ϊ��ͼ
% ���  xnΪ��ɢ��������
%       tΪ��xn��Ӧ��ʱ������
% ע����������0Ƶ�����ڽ���ifft����ʱ����ֵӦ����2
% By ZFS@wust  2020
% ��ȡ����Matlab/Simulinkԭ�����Ϻͳ������ע΢�Ź��ںţ�Matlab Fans

if nargin == 3
    drawflag = 1;
end


X_m(1) = 2*X_m(1);                     % ע����������0Ƶ�����ڽ���ifft����ʱ����ֵӦ����2


Nn = length(X_m) - 1;                  % Ƶ�׵ĵ���
N = 2*Nn + 1;
X_phi = X_phi*pi/180;                  % ���ɻ��ȵ�λ
X_m = X_m*N/2;                         % ��ֵ�����任
X_m(Nn+2:N) = X_m(end:-1:2);           % ����Ƶ������Ϊ˫��
X_phi(Nn+2:N) = -X_phi(end:-1:2);      % ����Ƶ������Ϊ˫��
Xk = X_m .* exp( 1j*X_phi );           % ��ֵ����λ���츴������

xn = real(ifft(Xk));                   % ʱ����ɢ�ź�
t = 0:ts:ts*(N-1);                     % ʱ��

if drawflag ~= 0
    
    figure
    plot(t,xn)
    title('iDFT�ָ���ʱ��ͼ');
    xlabel('ʱ��/s');ylabel('��ֵ');
    
end