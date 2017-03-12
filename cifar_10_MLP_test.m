function estlabel = cifar_10_MLP_test(x, net)
% Estimates the label for the given input x
    x = im2double(x);
    Te_Labels = net(x');
%     [Mval, Midx] = max(Te_Labels', [], 2);
%     estlabel = Midx - 1;
    estlabel = vec2ind(Te_Labels) - 1;
end

% estlabel = cifar_10_MLP_test(te_data, net);
% accuracy3 = cifar_10_evaluate(estlabel, te_labels)