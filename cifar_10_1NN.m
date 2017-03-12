function bestlabel = cifar_10_1NN(x, trdata, trlabels)

% allt = 10000;
% x 和 trdata 对比 找最相似的

%     for i = 1:size(trdata, 1)
for i =1 :50
    tmp = abs(x - trdata(i,:));
        st(i) = sum(tmp);
%        if allt > st
%            allt = st;
%            mini = i;
%        end
    end
    mini = find(st == min(st));
    bestlabel = trlabels(mini(1));
end


% finds the best match of the input vector x in the training set trdata and returns the same label.
