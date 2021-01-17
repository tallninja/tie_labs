function tsms = calculateTransferFunction(omegas, r, c, config)
  tsms = zeros(size(omegas));
  for i = 1 : length(omegas)
    switch(config)
      case "highpass"
        tsms(i) = abs(r / sqrt(r^2 + (1 / (omegas(i) * c))^2));
      case "lowpass"
        tsms(i) = abs(1 / sqrt(1 + (omegas(i) * r * c)^2));
      otherwise
        return
    endswitch
  endfor
endfunction
