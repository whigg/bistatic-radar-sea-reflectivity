function ShadowFactor = shadow_factor(Shadowing, theta1, theta2, tanbeta0)

if strcmpi(Shadowing,'Y')
  v1 = abs(cot(theta1))/(sqrt(2)*tanbeta0);
  v2 = abs(cot(theta2))/(sqrt(2)*tanbeta0);
  B1 = (exp(-v1 * v1) ./ v1 - sqrt(pi) * erfc(v1)) ./ (2 * sqrt(pi));
  B2 = (exp(-v2 * v2) ./ v2 - sqrt(pi) * erfc(v2)) ./ (2 * sqrt(pi));
  ShadowFactor = (1 + erf(v1)) * (1 + erf(v2)) ./ (4 .* (1 + B1 + B2));
else
  ShadowFactor = 1;  
end

end