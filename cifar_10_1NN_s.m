for i = 1:10
    x(i,:) = data(i,:);
    labelsssss(i) = labels(i);
end
for i = 1:10
    bestlabels(i) = cifar_10_1NN(x(i,:), tr_data, tr_labels);
end
acc3 = cifar_10_evaluate(bestlabels, labelsssss)