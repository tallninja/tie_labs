function highPassCalculations(omegas, r, c, v1, config)
  v2 =  [0.9, 1.6, 2.4, 2.8, 3.2, 3.5, 3.8, 4.0, 4.0, 4.2, 4.8, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0];
  
  # measured
  phidmsMeasured = [90, 80, 57.6, 54, 45, 51.43, 30, 32.73, 36, 40, 18.95, 11.25, 14.4, 8.6, 5.14, 8.71, 6.55, 14.4, 8.09, 7.35, 5.32, 3.24, 2.76, 1.45, 1.33, 1.23, 1.16, 1.09];
  tsmsMeasured = calculateMeasuredTransferFunction(v1, v2);
  aphisMeasured = aPhiOfOmega(tsmsMeasured);
  
  # calculated
  phidmsCalculated = calculatePhaseDifference(omegas, r, c, config);
  tsmsCalculated = calculateTransferFunction(omegas, r, c, config);
  aphisCalculated = aPhiOfOmega(tsmsCalculated);
  
  figure(1)
  plotData(omegas, aphisMeasured, aphisCalculated);
  figure(2)
  plotPhiData(omegas, phidmsMeasured, phidmsCalculated);
  
endfunction
