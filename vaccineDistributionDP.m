function [maxVaccinated, coverage, totalCost] = vaccineDistributionDP(regions, totalVaccines, costPerVaccine)
    numRegions = length(regions);
    
    % Initialize DP table
    dp = zeros(numRegions + 1, totalVaccines + 1);
    
    % Initialize distribution tracking
    distribution = zeros(numRegions, totalVaccines + 1); % To track how vaccines are distributed
    
    for i = 1:numRegions
        % Extract healthcare needs as a scalar
        need = regions(i).healthcare_needs;
        if numel(need) > 1
            error('Error: healthcare_needs should be a scalar value.');
        end
        
        for j = 0:totalVaccines
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
    
    maxVaccinated = dp(end, end);
    
    % Calculate coverage
    coverage = 0;
    for i = 1:numRegions
        vaccinesGiven = distribution(i, end);
        coverage = coverage + min(vaccinesGiven, regions(i).healthcare_needs) / regions(i).healthcare_needs;
    end
    coverage = coverage / numRegions * 100; % Percentage coverage
    
    % Calculate total cost
    totalCost = maxVaccinated * costPerVaccine; % Total cost based on number of vaccines given
end
