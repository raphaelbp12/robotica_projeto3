
q0= [pi/2  -pi/2 0 0];

% trajetória
syms t real;
xd = [-0.75*(cos(pi*t) + 1) -0.75*(cos(pi*t) - 5)]';
dxd = diff(xd, t);
matlabFunction(xd, 'File', 'xdFunc');
matlabFunction(dxd,  'File', 'dxdFunc');

b = -10;
c = 2.5;
k = 0.001;

kp2 = - 2 * c * b / k;
ki = (c * b)^2 / k;
kp1 = b*(2*c - c^2 - 1)/(c*(c-2));



%sim('robosim');