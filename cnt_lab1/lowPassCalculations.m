function lowPassCalculations(omegas, r, c, v1, config)
  v2 =  [5, 4.6, 4.5, 4.4, 4.2, 4.0, 3.9, 3.7, 3.4, 3.3, 3.1, 2.8, 2.8, 2.5, 2.0, 1.5, 1.0, 0.8, 0.7, 0.7, 0.6, 0.4, 0.4, 0.2, 0.2, 0.1, 0, 0];
  
  # measured
  phidmsMeasured = [15, 25, 27, 33, 37, 41, 43, 45, 47, 54, 58, 65, 69, 72, 74, 77, 96, 98, 81.82, 85, 87, 87, 89, 90, 92, 91, 0];
  tsmsMeasured = calculateMeasuredTransferFunction(v1, v2);
  aphisMeasured = aPhiOfOmega(tsmsMeasured);
  
  # calculated
  phidmsCalculated = calculatePhaseDifference(omegas, r, c, config);
  tsmsCalculated = calculateTransferFunction(omegas, r, c, config);
  aphisCalculated = aPhiOfOmega(tsmsCalculated);
  
  plotData(omegas, aphisMeasured, aphisCalculated);
  
endfunction
