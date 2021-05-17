% This functions calculates the time difference between two dates
function diff = getDatediff(start_date, end_date)
    % Input in datevec format
    diff = etime(end_date, start_date)/3600;
end

