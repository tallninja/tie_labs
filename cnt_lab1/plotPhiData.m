function plotPhiData(omegas, phidmsMeasured, phidmsCalculated)
  x = log(omegas);
  y1 = phidmsMeasured;
  y2 = phidmsCalculated;
  
  # measured
  subplot(2, 1, 1);
  plot(x, y1);
  title("Phi(w) measured against log(w)");
  xlabel("log(w)");
  ylabel("Phi(w) measured");
  
  # calculated
  subplot(2, 1, 2);
  plot(x, y2);
  title("Phi(w) calculated against log(w)");
  xlabel("log(w)");
  ylabel("Phi(w) calculated");
endfunction