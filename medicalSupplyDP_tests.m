% Define clinics with baseline medical needs
clinics(1) = struct('name', 'Clinic A', 'population', 10000, 'medical_needs', 3000);
clinics(2) = struct('name', 'Clinic B', 'population', 5000, 'medical_needs', 1500);
clinics(3) = struct('name', 'Clinic C', 'population', 8000, 'medical_needs', 2500);

% Total supplies and cost per supply
totalSupplies = 20000; % Supplies available
costPerSupply = 5;     % Cost per supply unit

% Calculate allocation, coverage, and cost
[maxSupplies, coverage, totalCost] = medicalSupplyDP(clinics, totalSupplies, costPerSupply);

%%
% Increased demand for clinics due to a simulated health crisis
clinics(1).medical_needs = 4000; % Increased demand by 33%
clinics(2).medical_needs = 2000;
clinics(3).medical_needs = 3000;

% Calculate allocation, coverage, and cost
[maxSupplies, coverage, totalCost] = medicalSupplyDP(clinics, totalSupplies, costPerSupply);

%%
% Baseline demands, but reduced total supplies available due to shortage
totalSupplies = 15000; % Reduced supply availability by 25%

% Calculate allocation, coverage, and cost
[maxSupplies, coverage, totalCost] = medicalSupplyDP(clinics, totalSupplies, costPerSupply);

%%
% Simulate extended delivery by adjusting clinic prioritization
% (This would involve modifying the medicalSupplyDP function or adding an external prioritization step)
