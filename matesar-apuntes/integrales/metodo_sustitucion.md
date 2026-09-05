# Integración por sustitución (cambio de variable)

## Pasos
1. Elegir  t = g(x)  (una parte "conflictiva" de la integral)
2. Calcular  dt = g'(x) dx   →   despejar dx
3. Sustituir todo en función de t (no debe quedar ninguna x)
4. Integrar en t (debería ser una integral inmediata)
5. Deshacer el cambio: sustituir t = g(x) de vuelta

## Ejemplo
  ∫ 2x·(x²+1)^5 dx
  t = x²+1  →  dt = 2x dx
  = ∫ t^5 dt = t^6/6 + C = (x²+1)^6/6 + C

## Pista para elegir t
  Suele funcionar bien tomar t = el "interior" de una función compuesta
  (dentro de una raíz, un exponente, un seno, un logaritmo...) cuando
  su derivada también aparece (o casi) en la integral.
