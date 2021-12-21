clc; clear; close all;
sigma_x_67 = [1 0 0 0 0 0 0 0;
              0 1 0 0 0 0 0 0;
              0 0 1 0 0 0 0 0;
              0 0 0 1 0 0 0 0;
              0 0 0 0 1 0 0 0;
              0 0 0 0 0 1 0 0;
              0 0 0 0 0 0 0 1;
              0 0 0 0 0 0 1 0];
sigma_0 = diag([1 1]);
sigma_1 = [0 1; 1 0];
sigma_2 = [0 -1j; 1j 0];
sigma_3 = [1 0; 0 -1];
for i = 0:3
    for j = 0:3
        for k = 0:3
            sprintf("a_%d%d%d = %.4f / 8", i, j, k,...
                trace(sigma_x_67 * kron(kron(Sigma(i), Sigma(j)), Sigma(k))))
        end
    end
end

function A = Sigma(i)
switch i
    case 0
        A = [1 0; 0 1];
    case 1
        A = [0 1; 1 0];
    case 2
        A = [0 -1j; 1j 0];
    case 3
        A = [1 0; 0 -1];
end
end