# Integral definida y cálculo de áreas

## Regla de Barrow (Teorema Fundamental del Cálculo)
  ∫[a,b] f(x) dx = F(b) - F(a)
  donde F es una primitiva de f (F' = f)

## Propiedades
  ∫[a,a] f(x) dx = 0
  ∫[a,b] f(x) dx = -∫[b,a] f(x) dx
  ∫[a,c] f(x) dx = ∫[a,b] f(x) dx + ∫[b,c] f(x) dx

## Área entre una curva y el eje X
  Si f(x) ≥ 0 en [a,b]:   Área = ∫[a,b] f(x) dx
  Si f(x) ≤ 0 en [a,b]:   Área = -∫[a,b] f(x) dx
  Si cambia de signo: hallar los cortes con el eje X y sumar los
  valores absolutos de cada tramo por separado.

## Área entre dos curvas f(x) y g(x) en [a,b]
  Área = ∫[a,b] |f(x) - g(x)| dx
  (en la práctica: hallar los puntos de corte, ver quién está por
  encima en cada tramo, e integrar (f-g) o (g-f) según corresponda)

## Volumen de revolución (método de discos, eje X)
  V = π · ∫[a,b] [f(x)]² dx
