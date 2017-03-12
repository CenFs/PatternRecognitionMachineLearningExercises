function net = cifar_10_MLP_train(trdata, trlabels)
% Trains an MLP classifier for the CIFAR data

len_tr_labels = length(trlabels);
Tr_Labels = zeros(len_tr_labels, 10);
% bb = full(ind2vec(aa));
% vec2ind(bb);

for n = 1:len_tr_labels
    j = trlabels(n);
    Tr_Labels(n, j+1) = 1;
end

% train(patternnet, double x(a*b), double y(c*b))
% ÏÈdouble£¬ÔÙ×ªÖÃ
Tr_Data = im2double(trdata);

% patternnet(hiddenSizes,trainFcn,performFcn)
net = patternnet(10); 
net = train(net, Tr_Data', Tr_Labels');
view(net)
% y = net(x);
% perf = perform(net,t,y);
% classes = vec2ind(y);

end

% net = cifar_10_MLP_train(tr_data, tr_labels);