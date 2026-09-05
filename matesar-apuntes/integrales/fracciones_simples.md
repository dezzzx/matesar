# Integración de funciones racionales (fracciones simples)

  ∫ P(x)/Q(x) dx

## Paso 1: si grado(P) ≥ grado(Q)
  Hacer la división de polinomios:
  P(x)/Q(x) = cociente + resto(x)/Q(x)
  Integrar el cociente (es un polinomio) y descomponer el resto/Q(x).

## Paso 2: factorizar Q(x)
  Hallar las raíces de Q(x) (Ruffini, etc.)

## Paso 3: descomponer en fracciones simples
  - Raíz real simple a:        A/(x-a)
  - Raíz real doble a:         A/(x-a) + B/(x-a)²
  - Raíces complejas (x²+bx+c):  (Ax+B)/(x²+bx+c)

## Paso 4: calcular A, B, C... (igualando numeradores) e integrar
  ∫ A/(x-a) dx = A·ln|x-a| + C
  ∫ A/(x-a)² dx = -A/(x-a) + C
