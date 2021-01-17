function phidms = calculatePhaseDifference(Ws, r, c, config)
  phidms = zeros(size(Ws));
  for i = 1 : length(Ws)
    switch(config)
      case 'highpass'
        phidms(i) = atand(rad2deg(1 / (Ws(i) * r * c)));
      case 'lowpass'
        phidms(i) = -atand(rad2deg(Ws(i) * r * c));
      otherwise
        return
    endswitch
  endfor
endfunction
