function tbl=AnalyzeDrugData(Subj,Drug);

%% Generate data
nPts=20;

%gIn=  %%Determine inputs based on scenario; update and uncomment
%iIn=  %%Determine inputs based on scenario; update and uncomment

gOut=0*gIn; %reserve space in proper format
iOut=0*iIn;

%Simulate all trials
for i=1:nPts
    [gOut(i),iOut(i)]=CollectDrugData(gIn(i),iIn(i),Subj,Drug);
end

tbl=table(gIn, iIn, gOut, iOut);
