%% Copyright 2014 MERCIER David
function OPTIONS = algoMinimization
%% Function used to set the algorithm of minimization
gui = guidata(gcf);

resultToolbox = isToolboxAvailable('Optimization Toolbox');

if resultToolbox
    % http://nl.mathworks.com/help/optim/ug/optimization-options-reference.html
    OPTIONS = optimset('lsqcurvefit');
    OPTIONS = optimset(OPTIONS, 'TolFun',  gui.config.numerics.TolFun_value);
    OPTIONS = optimset(OPTIONS, 'TolX',    gui.config.numerics.TolX_value);
    OPTIONS = optimset(OPTIONS, 'MaxIter', gui.config.numerics.MaxIter_value);
else
    % http://nl.mathworks.com/help/matlab/ref/optimset.html
    OPTIONS = optimset('fzero');
    OPTIONS = optimset(OPTIONS, 'TolFun',  gui.config.numerics.TolFun_value);
    OPTIONS = optimset(OPTIONS, 'TolX',    gui.config.numerics.TolX_value);
    OPTIONS = optimset(OPTIONS, 'MaxIter', gui.config.numerics.MaxIter_value);
end

end