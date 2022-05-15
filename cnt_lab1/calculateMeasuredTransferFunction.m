function tsms = calculateMeasuredTransferFunction(v1s, v2s)
  tsms = abs(v2s ./ v1s);
endfunction
