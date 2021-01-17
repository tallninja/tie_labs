function main(config)
  
  r = 10e3
  c = 0.3e-9
  
  freqs = generateFrequencyRanges();
  omegas = calculateOmegas(freqs);
  v1 = ones(size(freqs)) .* 5;
  
  switch(config)
    case "highpass"
      highPassCalculations(omegas, r, c, v1, config);
    case "lowpass"
      lowPassCalculations(omegas, r, c, v1, config);
    otherwise
      return
  endswitch

endfunction
