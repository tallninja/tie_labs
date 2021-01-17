function Ws = calculateOmegas(freqs)
  Ws = zeros(size(freqs));
  for i = 1 : length(freqs)
    Ws(i) = 2 * pi * freqs(i);
  endfor
endfunction
