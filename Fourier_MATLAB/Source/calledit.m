function calledit(hedit, hpop,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz,which)
    ct = get(hedit,'string');
    vpop =get (hpop,'value');
    x=1;
    if~isempty(vpop)
        popstr = {'draw_all(3,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz);',...
            'draw_all(5,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz)',...
            'draw_all(9,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz)',...
            'draw_all(22,h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz)'};
        cct = str2double(ct);
        if which
            eval(popstr{vpop})
        else
            if ~isnan(cct) && cct>0
                eval(['draw_all(',ct,',h_axes_3d,h_axes_f,h_axes_nh,h_axes_zz)'])
            elseif ~isempty(ct)
                errordlg('������һ�������������֣��磺17','��ʾ');
            end
        end
    end
end