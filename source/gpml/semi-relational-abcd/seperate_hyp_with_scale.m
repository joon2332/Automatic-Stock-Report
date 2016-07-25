function [scale hyp_fS, hyp_f] = seperate_hyp_with_scale(model, hyp)
hyp_fS = hyp(2*model.M + 1:2*model.M + model.num_hyp_fS);
num_f = int32(model.num_hyp_f/model.M);
for m = 1: model.M
    scale{m} = hyp(2*m - 1: 2*m);
    hyp_f{m} = hyp(2*model.M + model.num_hyp_fS + 1 + num_f*(m-1): 2*model.M + model.num_hyp_fS + num_f*m);
end
end

