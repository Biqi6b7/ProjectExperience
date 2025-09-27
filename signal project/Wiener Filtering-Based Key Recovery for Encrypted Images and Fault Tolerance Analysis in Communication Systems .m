%% Add regularization

% Load data
load('spydata.mat');    % Contains received signal r(k) and encrypted image cPic
load('training.mat');   % Contains training sequence b(k)

% Parameter settings
max_L = 31;             % Maximum FIR filter order
N_train = length(training);  % Length of the training sequence
lambda = 10;            % Regularization parameter

% Initialize storage for MSE, BER, and decoded images
MSEs = zeros(1, max_L);
BERs = zeros(1, max_L);
decoded_images = cell(1, max_L);  % To store decoded images

figure; % Figure window for displaying images

for L = 1:max_L
    % Construct received signal matrix
    R_mat = zeros(N_train - L, L + 1);
    for i = 1:(L + 1)
        % Ensure indices do not go out of bounds
        start_idx = L + 2 - i;   % Starting index
        end_idx = N_train + 1 - i; % Ending index
        R_mat(:, i) = received(start_idx:end_idx);  % Fill the i-th column
    end

    % Construct cross-correlation vector
    p = R_mat' * training(L + 1 : N_train);

    % Construct autocorrelation matrix and add regularization term
    R = R_mat' * R_mat;
    I = eye(size(R));       % Identity matrix
    R_reg = R + lambda * I; % Regularized autocorrelation matrix

    % Compute Wiener filter coefficients w with regularization
    w = R_reg \ p;

    % Equalize received signal using Wiener filter
    z = filter(w, 1, received);

    % Perform symbol detection on the equalized signal
    detected_key = sign(z);

    % Compute MSE (on the training sequence)
    z_train = z(L + 1 : N_train);  % Equalized training sequence portion
    MSE = mean((z_train - training(L + 1:N_train)).^2);
    MSEs(L) = MSE;

    % Compute BER (on the training sequence)
    detected_train = detected_key(L + 1 : N_train);  % Detected training sequence
    errors = sum(detected_train ~= training(L + 1:N_train));  % Number of errors
    BER = errors / (N_train - L);  % Bit error rate
    BERs(L) = BER;

    % Decode image using detected key
    decoded_image = decoder(detected_key, cPic);
    decoded_images{L} = decoded_image;  % Save decoded image

    % Print results for current L
    fprintf('L = %d, MSE = %.4f, BER = %.4f\n', L, MSE, BER);
    
    % Display decoded image
    subplot(4, 8, L);  % Create a 4x8 grid of subplots for L = 1 to 31
    image(decoded_image);
    axis square;
    title(['L = ', num2str(L)]);
end

% Plot MSE and BER curves
figure;
subplot(2,1,1);
plot(1:max_L, MSEs, '-o');
xlabel('Filter Order L');
ylabel('MSE');
title('Mean Squared Error for Different L');

subplot(2,1,2);
plot(1:max_L, BERs, '-o');
xlabel('Filter Order L');
ylabel('BER');
title('Bit Error Rate for Different L');
