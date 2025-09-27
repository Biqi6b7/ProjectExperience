% Generate joint Gaussian distribution data and plot 3D histogram and PDF

% Parameter settings
mu_x = 0;       % Mean of X
mu_y = 0;       % Mean of Y
sigma_x = 1;    % Standard deviation of X
sigma_y = 1;    % Standard deviation of Y
rho = 0.75;     % Correlation coefficient

% Covariance matrix
Sigma = [sigma_x^2, rho*sigma_x*sigma_y; rho*sigma_x*sigma_y, sigma_y^2];

% Generate random samples with the given covariance using Cholesky decomposition
L = chol(Sigma, 'lower');  % Cholesky decomposition
z = randn(10000, 2);       % Generate standard normal samples
data = z * L';             % Generate joint Gaussian distributed data with covariance Sigma

% Plot 3D histogram
figure;
hist3(data, [30 30], 'CdataMode', 'auto');  % 3D histogram
title('3D-plot of the histograms (\rho = 0.75)');
xlabel('X');
ylabel('Y');
zlabel('Frequency');
colorbar;

% Generate grid points for PDF calculation
[x, y] = meshgrid(linspace(min(data(:,1)), max(data(:,1)), 100), ...
                  linspace(min(data(:,2)), max(data(:,2)), 100));

% Compute joint probability density function values
F = mvnpdf([x(:) y(:)], [mu_x mu_y], Sigma);
F = reshape(F, length(y), length(x));

% Plot 3D PDF
figure;
mesh(x, y, F);
title('Estimated 2D PDF');
xlabel('X');
ylabel('Y');
zlabel('Density');
grid on;
