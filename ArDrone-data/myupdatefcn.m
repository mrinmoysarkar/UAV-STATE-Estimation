function txt = myupdatefcn(empt,event_obj)
% Customizes text of data tips
global yindex
pos = get(event_obj,'Position');
txt = {['x'],...
	      ['y']};
yindex=[yindex pos(1)];