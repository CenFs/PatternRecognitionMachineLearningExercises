function randlabels = cifar_10_rand(x)
    % randcls = size(tr_labels, 1);
    labelscount = size(x, 1);
    randlabels = round(rand(labelscount, 1) * 9);
    % randcls = label_names(tr_labels(x) + 1);
    % acc = cifar_10_evaluate(pred, gt);
end


% r = cifar_10_rand(data);
% acc2 = cifar_10_evaluate(r, labels)