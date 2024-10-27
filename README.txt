Lab Work: Vaccine and Medical Supply Distribution Optimization

Description:
This work provides two dynamic programming solutions to optimize the distribution of resources in healthcare settings:

Vaccine Distribution: Calculates the maximum number of people vaccinated, the coverage percentage across regions, and the total cost based on available vaccines.
Medical Supply Distribution: Determines the maximum number of supplies allocated to clinics, the coverage percentage, and the overall cost given a set of resources.
Both solutions use dynamic programming to meet healthcare needs effectively within given constraints.

Functions:

vaccineDistributionDP(regions, totalVaccines, costPerVaccine)
Input: regions (array of structs with healthcare needs), totalVaccines (integer), costPerVaccine (integer).
Output: maxVaccinated (maximum people vaccinated), coverage (coverage percentage), totalCost (total distribution cost).

medicalSupplyDP(clinics, totalSupplies, costPerSupply)
Input: clinics (array of structs with medical needs), totalSupplies (integer), costPerSupply (integer).
Output: maxSupplies (maximum supplies allocated), coverage (coverage percentage), totalCost (total distribution cost).

Files:

vaccineDistributionDP.m: Implements the vaccine distribution function.
medicalSupplyDP.m: Implements the medical supply distribution function.
test_script.txt: Sample test script for running both functions with sample data.

Usage Instructions:
Load the function files (vaccineDistributionDP.m and medicalSupplyDP.m) in your MATLAB environment.
Open and run test_script.txt to see example outputs for each function with sample data.

Testing:
The test_script.txt file provides sample inputs and automatically calculates and displays the results.
This file demonstrates the functions' output format and typical use cases.

Pseudocode Reference:
Detailed pseudocode is available within each function's comments to guide future implementations in other programming languages.
Project Repository: All code files are available on GitHub for additional reference and updates. 
[GitHub Repository Link]