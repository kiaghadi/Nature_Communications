
load TreeBagger2    
rng(1); % For reproducibility
Mdl = TreeBagger(100,Train_Data,Life_Train,...
    'OOBPredictorImportance','On','MinLeafSize',20,'Method','regression');
imp = Mdl.OOBPermutedPredictorDeltaError;


[Train_Predict] = predict(Mdl,Train_Data);
[Val_Predict] = predict(Mdl,Val_Data);
[All_Predict] = predict(Mdl,All_Data);
oobErrorBaggedEnsemble = oobError(Mdl);

imp2 = Mdl.OOBPermutedPredictorDeltaMeanMargin;

save Jan100 '-v7.3'

