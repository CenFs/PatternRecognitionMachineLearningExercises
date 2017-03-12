conf.imagenet_dir = '/home/kamarain/Data/ImageNet';
conf.imagenet_train_dir = 'ILSVR2014/CLS-LOC/ILSVRC2012_img_train';
conf.tiny_dir = '/home/kamarain/Data/ImageNet-tiny/ImageNet-tiny-8x8-sRGB-8bit-convType-1-only-5/';
conf.tiny_train_dir = 'ILSVR2014/CLS-LOC/ILSVRC2012_img_train';
conf.jump_step = 100;
conf.selected_synsets = ...
    {'n02676566','n01773157','n01622779','n03452741','n01944390'};
meta_file = fullfile(conf.imagenet_dir,'ILSVRC2014_devkit/data/meta_clsloc.mat');

%
load(meta_file,'synsets');

% Read training images
fprintf('Reading the tiny train images:\n');
for classNum = 1:length(conf.selected_synsets)
  orig_train_dir = fullfile(conf.imagenet_dir,...
                            conf.imagenet_train_dir,...
                            conf.selected_synsets{classNum});
  tiny_train_dir = fullfile(conf.tiny_dir,...
                            conf.tiny_train_dir,...
                            conf.selected_synsets{classNum});
  % Listing of images
  orig_listing = dir(fullfile(orig_train_dir,'*.JPEG'));
  tiny_listing = dir(fullfile(tiny_train_dir,'*.bmp'));

  % plot image
  for imgNum = 1:conf.jump_step:length(orig_listing)
    fprintf('Class %s (img# %d) original (left) and tiny (right)',...
           conf.selected_synsets{classNum}, imgNum);
    input(' [Press <RETURN>]');
  end;
end;
