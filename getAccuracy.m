function accuracy = getAccuracy(model, testData)
    predictions = predict(model, testData(:, 1:2));
    pred_logical = (predictions == testData(:, 3));
    [~, ~, ic] = unique(pred_logical);
    a_counts = accumarray(ic, 1);
    value_counts = a_counts; 
    accuracy = 100*value_counts(2,1)/sum(value_counts);
end