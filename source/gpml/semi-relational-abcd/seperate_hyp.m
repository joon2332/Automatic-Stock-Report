function [hyp_fS, hyp_f] = seperate_hyp(model, hyp)
hyp_fS = hyp(1:model.num_hyp_fS);
num_f = int32(model.num_hyp_f/model.M);
for m = 1: model.M
    hyp_f{m} = hyp(model.num_hyp_fS + 1 + num_f*(m-1): model.num_hyp_fS + num_f*m);
end
end

