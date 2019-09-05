
function perc = percChangeFreq(x)
% Takes a two-column matrix and determines the percentage of scores in the
% first column that are higher than the score on the same row of the second
% column. Used for simple non-parametric description of paired-samples
% data.

    if ismatrix(x) == 0
        error('input must be an array')
    end

    len=length(x);
    better = zeros(len,1);
    for i=1:len
        if x(i,1) > x(i,2)
            better(i) = 1;
        else
            better(i) = 0;
        end
    end
    perc = (sum(better)/len)*100;
end
