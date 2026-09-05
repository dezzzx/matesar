# Asíntotas de una función

## Asíntota vertical: x = a
  Existe si  lim(x→a) f(x) = ±∞
  (típicamente donde el denominador se anula y el numerador no)

## Asíntota horizontal: y = L
  Existe si  lim(x→±∞) f(x) = L  (L finito)

  Para f(x) = P(x)/Q(x):
  - grado(P) < grado(Q)  →  y = 0
  - grado(P) = grado(Q)  →  y = (coef. líder P)/(coef. líder Q)
  - grado(P) > grado(Q)  →  no hay asíntota horizontal (puede haber oblicua)

## Asíntota oblicua: y = mx + n   (solo si grado(P) = grado(Q)+1)
  m = lim(x→±∞) f(x)/x
  n = lim(x→±∞) [f(x) - mx]

  (Equivalente: hacer la división de polinomios P(x)/Q(x);
  el cociente, sin el resto, es la asíntota oblicua)
