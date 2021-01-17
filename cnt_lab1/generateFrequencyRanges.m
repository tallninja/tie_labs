function freqs = generateFrequencyRanges()
  firstBatch = linspace(100, 900, 9);
  secondBatch = linspace(1000, 9000, 9);
  thirdBatch = linspace(10000, 100000, 10);
  freqs = [firstBatch secondBatch thirdBatch];
endfunction
