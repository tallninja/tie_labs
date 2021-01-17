function plotData(omegas, aphisMeasured, aphisCalculated)
  x = log(omegas);
  y1 = aphisMeasured;
  y2 = aphisCalculated;
  
  subplot(2, 1, 1);
  plot(x, y1);
  title("Aphi(w) measured against log(w)");
  xlabel("log(w)")
  ylabel("Aphi(w) measured");
  subplot(2, 1, 2);
  plot(x, y2); 
  title("Aphi(w) calculated against log(w)");
  xlabel("log(w)");
  ylabel("Aphi(w) calculated");
endfunction
