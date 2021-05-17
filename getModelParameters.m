function getModelParameters(newDate, newAccuracy) 
    fid1 = fopen('lastTraining.dat', 'w');
    fprintf(fid1, '%d %d %d %d %d %d', datevec(newDate));
    fclose(fid1);
    
    fid2 = fopen('lastAccuracy.dat', 'w');
    fprintf(fid2, '%.2f', newAccuracy);
    fclose(fid2);
end


