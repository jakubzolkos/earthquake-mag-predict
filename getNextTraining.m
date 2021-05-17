function timeRemaining = getNextTraining(last)
    diff = hours(datetime('now') - datetime(last));
    if diff >= hours(24)
        timeRemaining = "Update Available";
    else
        nextUpdate = datetime(last) + hours(24);
        diff = hours(nextUpdate - datetime('now')); 
        h = floor(diff);
        m = floor((diff - h) * 60);
        timeRemaining = num2str(h) + "h " + num2str(m) + "m";
    end
end