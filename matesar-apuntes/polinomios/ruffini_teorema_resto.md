# Regla de Ruffini y Teorema del resto

## Teorema del resto
  El resto de dividir P(x) entre (x - a) es P(a).
  Si P(a) = 0  →  (x-a) es factor de P(x), y a es raíz de P(x).

## Regla de Ruffini (dividir entre x - a)
1. Escribir los coeficientes de P(x) en fila (completar con 0 los que falten).
2. Bajar el primer coeficiente.
3. Multiplicar por "a" y sumar en la siguiente columna.
4. Repetir hasta el final. El último número es el resto.
5. Los números anteriores son los coeficientes del polinomio cociente
   (un grado menos que P(x)).

## Buscar raíces enteras
  Las posibles raíces enteras de P(x) son los divisores del término
  independiente (Teorema de la raíz racional / Ruffini por tanteo).

## Ejemplo
  P(x) = x³ - 6x² + 11x - 6
  Divisores de -6: ±1, ±2, ±3, ±6
  P(1) = 1-6+11-6 = 0  →  x=1 es raíz
  Ruffini entre (x-1): cociente x² - 5x + 6 = (x-2)(x-3)
  P(x) = (x-1)(x-2)(x-3)
