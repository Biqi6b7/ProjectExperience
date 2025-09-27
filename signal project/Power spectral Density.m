% Parameter settings
alpha = 0.25;
beta = 0.25;
n = 0:1000;  % Time sequence

% Generate AR(1) process
z = randn(1, length(n));        % White noise
x1 = filter(1, [1 -alpha], z);  % AR(1) process

% Compute and plot the power spectrum of x1
[Pxx1, f] = periodogram(x1, [], [], 1);
figure;
plot(f, 10*log10(Pxx1), 'LineWidth', 1.5, 'Color', 'b'); % Set line width and color
title('Power Spectral Density of x_1(n)');
xlabel('Frequency');
ylabel('Power/Frequency (dB/Hz)');
legend('x1 Power Spectrum');  % Add legend

% Generate process x2
h2 = beta.^n;               % System impulse response
x2 = conv(x1, h2, 'same');  % System output

% Compute and plot the power spectrum of x2
[Pxx2, f] = periodogram(x2, [], [], 1);
figure;
plot(f, 10*log10(Pxx2), 'LineWidth', 1.5, 'Color', 'r'); % Set line width and color
title('Power Spectral Density of x_2(n)');
xlabel('Frequency');
ylabel('Power/Frequency (dB/Hz)');
legend('x2 Power Spectrum');  % Add legend
