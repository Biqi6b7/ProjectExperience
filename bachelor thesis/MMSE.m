clear all
pu = 0.0003;
d = 100;
M = 2:10:200;
L = 7; % 19
simno = 10^3;
K = 10;

for i = 1:L
    D(:,:,i) = zeros(K,K);
    for k = 1:K
        if i == 1
            D(k,k,i) = d^(-2);
        else
            D(k,k,i) = (1.5*d)^(-2);
        end
    end
end

SINR = zeros(1, length(M));

for m = 1:length(M)
    for ii = 1:simno
        clear H;
        for i = 1:L
            H(:,:,i) = randn(M(m), K);
        end
        
        % Compute MMSE combining matrix
        A = (H(:,:,1) * (H(:,:,1)' * H(:,:,1) + 1/pu * eye(K))^(-1))';
        
        % Compute interference from other users
        intf = 0;
        for i = 2:L
            intf = intf + pu * trace(A * H(:,:,i) * (D(:,:,i)^(0.5)) * (D(:,:,i)^(0.5)) * H(:,:,i)' * A');
        end
        
        % Compute SINR
        SINR(m) = SINR(m) + pu * trace(A * H(:,:,1) * D(:,:,1)^(0.5) * D(:,:,1)^(0.5) * H(:,:,1)' * A') / (intf + trace(A*A'));
    end
end

% Average over simulations
SINR = SINR ./ simno;

% Plot results
plot(M, 10*log10(SINR))
xlabel('Number of Antennas')
ylabel('SINR (dB)')
title('MMSE Reception')
