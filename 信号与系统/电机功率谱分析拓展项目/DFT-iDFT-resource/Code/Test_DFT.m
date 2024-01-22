%% Eg 1 ��Ƶ�����ź�(�������ڲ���)
ts = 0.01;
t = 0:ts:1;
A = 1.5;       % ��ֵ  
f = 2;         % Ƶ��
w = 2*pi*f;    % ��Ƶ��
phi = pi/3;    % ��ʼ��λ 
x = A*cos(w*t+phi);   % ʱ���ź�
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);

%% Eg 2 ��Ƶ�����ź�(���������ڲ���)
ts = 0.01;
t = 0:ts:1;
A = 1.5;       % ��ֵ  
f = 1.5;         % Ƶ��
w = 2*pi*f;    % ��Ƶ��
phi = pi/3;    % ��ʼ��λ 
x = A*cos(w*t+phi);   % ʱ���ź�
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);

% ��Ƶ�����ź�(���������ڲ���) ������������
ts = 0.01;
t = 0:ts:4.1;
A = 1.5;       % ��ֵ  
f = 1.5;         % Ƶ��
w = 2*pi*f;    % ��Ƶ��
phi = pi/3;    % ��ʼ��λ 
x = A*cos(w*t+phi);   % ʱ���ź�
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);

%% Eg 3 ����ֱ�������ĵ�Ƶ�����ź�
ts = 0.01;
t = 0:ts:1;
A = 1.5;       % ��ֵ  
f = 5;         % Ƶ��
w = 2*pi*f;    % ��Ƶ��
phi = pi/6;    % ��ʼ��λ 
x = 0.5 + A*cos(w*t+phi);   % ʱ���ź�,����ֱ��ƫ��0.5
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);


%% Eg 4 ���Ҹ����ź�
ts = 0.01;
t = 0:ts:2;
A = [1.5 1 0.5 0.2];    % ��ֵ  
f = [3 6 9 15];         % Ƶ��
w = 2*pi*f;             % ��Ƶ��
phi = (1:4)*pi/4;       % ��ʼ��λ 
x = -0.5 + A(1)*cos(w(1)*t+phi(1)) + A(2)*cos(w(2)*t+phi(2)) + A(3)*cos(w(3)*t+phi(3)) + A(4)*cos(w(4)*t+phi(4));     % ʱ���ź�
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);

%% Eg 5 ����������ŵ������ź�
ts = 0.01;
t = 0:ts:2;
A = [1 0.5];    % ��ֵ  
f = [3 10];         % Ƶ��
w = 2*pi*f;             % ��Ƶ��
phi = (1:2)*pi/3;       % ��ʼ��λ 
x =  A(1)*cos(w(1)*t+phi(1)) + A(2)*cos(w(2)*t+phi(2)) + 0.8*(rand(size(t))-0.5);     % ʱ���ź�
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);


%% Eg 5 ȥ�������ź��е��������
% Ƶ��ת��ʱ��ʽ2���������źŵ�Ƶ��-��ֵ��Ƶ����λ��ϵ�ָ�
x0 =  A(1)*cos(w(1)*t+phi(1)) + A(2)*cos(w(2)*t+phi(2));      % ����������ź�  
x4 = 0;
for ii = 1:length(f)
  w0 = 2*pi*f(ii);
  if abs(X_m(ii)) > 0.2
      x4 = x4 + X_m(ii)*cos(w0*t+X_phi(ii)*pi/180);
  end
end
figure
plot(t,x0,t,x,'r--',t,x4,'k-.')
legend('�޸���ԭʼ�ź�','�и���ԭʼ�ź�','�ָ�ʱ���ź�')


%% Eg 6 ʵ�ʰ���
load data
ts = 0.001;
x = Jsd;
t = [0:length(x)-1]*ts;
figure
plot(t,x)
xlabel('ʱ��/s')
ylabel('ʱ���ź�x(t)')
% DFT�任��ʱ��ת����Ƶ��,������Ƶ��ͼ
[f,X_m,X_phi] = DFT(x,ts);

