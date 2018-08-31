function d = diffoutput(ytrue,yest)
    d = 0;
    for i=1:length(ytrue)
        if strcmp(ytrue{i},yest{i})
            d = d + 1;
        end
    end
end