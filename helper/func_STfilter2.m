function Filter = func_STfilter2(params)

[xx, yy] = meshgrid(params.s, params.t); 

ps.s = xx;
ps.center = params.scenter;
ps.width = params.swidth; 

pt.s = yy;
pt.center = params.tcenter;
pt.width = params.twidth; 

Space1 = func_Gaussian(ps);
Space2 = fliplr(Space1);

Time1 = func_Gaussian(pt);
Time2 = flipud(Time1);

Filter = params.a.*(Space1.*Time1 + Space2.*Time2 - Space1.*Time2 - Space2.*Time1); 

end