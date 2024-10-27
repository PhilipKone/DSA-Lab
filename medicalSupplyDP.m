function [maxSupplies, coverage, totalCost] = medicalSupplyDP(clinics, totalSupplies, costPerSupply)
    numClinics = length(clinics);
    
    % Initialize DP table
    dp = zeros(numClinics + 1, totalSupplies + 1);
    
    % Initialize distribution tracking
    distribution = zeros(numClinics, totalSupplies + 1); % To track how supplies are distributed
    
    for i = 1:numClinics
        % Extract medical needs as a scalar
        need = clinics(i).medical_needs;
        if numel(need) > 1
            error('Error: medical_needs should be a scalar value.');
        end
        
        for j = 0:totalSupplies
            if need <= j
                % Update DP table and distribution tracking
                if dp(i, j + 1 - need) + need > dp(i, j + 1)
                    dp(i + 1, j + 1) = dp(i, j + 1 - need) + need;
                    distribution(i, j + 1) = need; % Track distribution
                else
                    dp(i + 1, j + 1) = dp(i, j + 1);
                end
            else
                dp(i + 1, j + 1) = dp(i, j + 1);
            end
        end
    end
    
    maxSupplies = dp(end, end);
    
    % Calculate coverage
    coverage = 0;
    for i = 1:numClinics
        suppliesGiven = distribution(i, end);
        coverage = coverage + min(suppliesGiven, clinics(i).medical_needs) / clinics(i).medical_needs;
    end
    coverage = coverage / numClinics * 100; % Percentage coverage
    
    % Calculate total cost
    totalCost = maxSupplies * costPerSupply; % Total cost based on number of supplies given
end
