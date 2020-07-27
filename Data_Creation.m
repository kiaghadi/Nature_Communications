clear variables
clc

A=xlsread("Train.xlsx");   % created randomly based on using 70%of data 
B=xlsread("Validate.xlsx"); % The rest 30% 
Life_Train=A(:,1);
Above60_Train=A(:,2);
White_Train=A(:,3);
African_Train=A(:,4);
Hispanic_Train=A(:,5);
Poverty_Train=A(:,6);
PerCap_Train=A(:,7);
Income_Train=A(:,8);
Insurance_Train=A(:,9);
Sup_Train=A(:,10);
Married_Train=A(:,11);
Education_Train=A(:,12);
Citizen_Train=A(:,13);
Disability_Train=A(:,14);

%%
Life_Val=B(:,1);
Above60_Val=B(:,2);
White_Val=B(:,3);
African_Val=B(:,4);
Hispanic_Val=B(:,5);
Poverty_Val=B(:,6);
PerCap_Val=B(:,7);
Income_Val=B(:,8);
Insurance_Val=B(:,9);
Sup_Val=B(:,10);
Married_Val=B(:,11);
Education_Val=B(:,12);
Citizen_Val=B(:,13);
Disability_Val=B(:,14);
%%

Train_Data=[Above60_Train,White_Train,Income_Train,Insurance_Train,...
            Sup_Train,Married_Train,Education_Train,Citizen_Train,...
            Disability_Train];			

Val_Data=[Above60_Val,White_Val,Income_Val,Insurance_Val,Sup_Val,...
          Married_Val,Education_Val,Citizen_Val,Disability_Val];
 
All_Data=[Train_Data;Val_Data];
Life_All=[Life_Train;Life_Val];

save TreeBagger2 Train_Data Val_Data All_Data Life_Train Life_Val Life_All




    