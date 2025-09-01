clc; clear; close all;

% Parameters
a = 2;                  % pulse amplitude
L_rope = 4;            % rope length
L_pulse = 1;            % pulse width
N = 300;                % number of harmonics for sharp pulse
velocity = 1;            % wave speed

% Space and time grids
x = linspace(0, L_rope, 800);  
t = 0:0.05:15;                % animation time steps

% Initial half-square pulse
f0 = @(x) a.*(x >= (L_rope-L_pulse)/2 & x <= (L_rope+L_pulse)/2);

% Fourier coefficients
bn = zeros(1,N);
for n = 1:N
    bn(n) = (2/L_rope) * integral(@(xx) f0(xx).*sin(n*pi*xx/L_rope), 0, L_rope);
end

% Precompute sine spatial terms
S = sin((1:N).' * pi * x / L_rope);  % N x length(x) matrix

% Figure setup
figure('Color','w'); hold on;
h_total = plot(x, zeros(size(x)), 'k', 'LineWidth', 2);  % total displacement
xlabel('x (m)'); ylabel('Displacement');
title('Traveling Half-Square Pulse');
ylim([-a*1.2 a*1.2]);
grid on;

% Animation loop (compute frame-by-frame)
for k = 1:length(t)
    wn = (1:N).' * pi * velocity / L_rope;         % N x 1
    y_total = bn.' .* cos(wn * t(k)) * ones(1,length(x));  % N x length(x)
    y_total = sum(y_total .* S, 1);               % sum over harmonics
    set(h_total, 'YData', y_total);
    drawnow;
end  generate an algorithm and readme file github
