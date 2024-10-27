% Define clinics with individual medical needs
clinics(1) = struct('name', 'Clinic A', 'population', 10000, 'medical_needs', 3000);
clinics(2) = struct('name', 'Clinic B', 'population', 5000, 'medical_needs', 1500);
clinics(3) = struct('name', 'Clinic C', 'population', 8000, 'medical_needs', 2500);

% Define the total number of supplies available
totalSupplies = 20000; % Total medical supplies available
costPerSupply = 5;     % Cost per medical supply

% Calculate the maximum number of supplies allocated, coverage, and total cost
[maxSupplies, coverage, totalCost] = medicalSupplyDP(clinics, totalSupplies, costPerSupply);

% Display the results
disp(['Maximum number of supplies allocated: ', num2str(maxSupplies)]);
disp(['Coverage percentage: ', num2str(coverage), '%']);
disp(['Total distribution cost: $', num2str(totalCost)]);
