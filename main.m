%% BME 407 HW2 Group7: Experiment Runner Script
%% Dara Detwongya, Judy Kim, Jiyeon Lee
clear; clc;

% Run the experiment for Group 0 (Asymptomatic)
fprintf('Running simulations for Group 0...\n');
tbl_asym = AnalyzeDrugData(0, 0);
% Run the experiment for Group 1 (Type I Diabetes)

fprintf('Running simulations for Group 1...\n');
tbl_type1 = AnalyzeDrugData(1, 0);

% Run the experiment for Group 2 (Type II Diabetes)
fprintf('Running simulations for Group 2...\n');
tbl_type2 = AnalyzeDrugData(2, 0);

% Combine all three groups into one table contianing 60 data points
tbl_total = [tbl_asym; tbl_type1; tbl_type2];

% Save the final 60-point table to a CSV file for Python
writetable(tbl_total, 'diabetes_data.csv');

fprintf('Successfully created 60-point dataset: diabetes_data.csv\n');
