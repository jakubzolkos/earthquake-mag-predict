function [updatedData, addedRecords, accuracy] = getUpdatedata(data, lastTraining, currentDate, model)
    dateFormat = 'yyyy-mm-dd';
    oldData = getClassdata(getCoordinates(data, 0));
    newData = getClassdata(getCoordinates(getQuake(datestr(lastTraining, dateFormat), datestr(currentDate, dateFormat)), 0));
    accuracy = getAccuracy(model, newData);
    updatedData = [oldData; newData];
    addedRecords = length(newData(:, 1));
end

