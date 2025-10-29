function tbl=AnalyzeDrugData(Subj,Drug)

%% Generate data
nPts=20;

% Create 20 random glucose inputs (0 to 5000 mg/hr)
gIn = 5000 * rand(nPts, 1);
% Create 20 random insulin inputs (0 to 500 mU/hr)
iIn = 500 * rand(nPts, 1);

% Run Simulation

gOut=0*gIn;
iOut=0*iIn;

% Simulate all 20 trials for the specified Subj group
for i=1:nPts
    % Simulink model function
    [gOut(i),iOut(i)]=CollectDrugData(gIn(i),iIn(i),Subj,Drug);
end

% Add a column to identify the Subj group (Asymp, Type1, Type 2)
if Subj == 0
    Group = repmat({'Asymptomatic'}, nPts, 1);
elseif Subj == 1
    Group = repmat({'TypeI'}, nPts, 1);
else
    Group = repmat({'TypeII'}, nPts, 1);
end

    % Final output table for this group
    tbl=table(gIn, iIn, gOut, iOut, Group);

end
