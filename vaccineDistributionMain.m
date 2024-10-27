% Define regions with individual healthcare needs
regions(1) = struct('name', 'Region A', 'population', 100000, 'risk_level', 8, 'healthcare_needs', 5000);
regions(2) = struct('name', 'Region B', 'population', 50000, 'risk_level', 5, 'healthcare_needs', 2000);
regions(3) = struct('name', 'Region C', 'population', 75000, 'risk_level', 7, 'healthcare_needs', 3000);

% Define the total number of vaccines available
totalVaccines = 60000000;
costPerVaccine = 10; % Cost per vaccine

% Calculate the maximum number of people vaccinated, coverage, and total cost
[maxVaccinated, coverage, totalCost] = vaccineDistributionDP(regions, totalVaccines, costPerVaccine);

% Display the results
disp(['Maximum number of people vaccinated: ', num2str(maxVaccinated)]);
disp(['Coverage percentage: ', num2str(coverage), '%']);
disp(['Total distribution cost: $', num2str(totalCost)]);
