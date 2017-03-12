function accuracy = cifar_10_evaluate(pred, gt)
%     new = double(pred) - double(gt);
%     ac = numel(find(new == 0)); 
%     all = size(new, 2);
%     accuracy = ac / all;
    
    accuracy = numel(find(pred(:)==gt(:)))/length(gt);
    
end

% predlabels = uint8(round(rand(size(labels,1),1) * 9));
% acc1 = cifar_10_evaluate(predlabels, labels)