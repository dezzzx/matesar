# Integración por partes

  ∫ u dv = u·v - ∫ v du

## Cómo elegir u y dv: regla nemotécnica "ALPES" / "LIATE"
  Prioridad para ser "u" (se deriva):
  L - Logarítmicas       ln(x)
  I - Inversas trig.     arctg(x), arcsen(x)
  A - Algebraicas        x, x², polinomios
  T - Trigonométricas    sen(x), cos(x)
  E - Exponenciales      e^x

  El resto (lo que quede) es "dv" (se integra).

## Ejemplo
  ∫ x·e^x dx
  u = x      →  du = dx
  dv = e^x dx →  v = e^x

  = x·e^x - ∫e^x dx = x·e^x - e^x + C = e^x(x-1) + C

## Integrales cíclicas
  A veces hay que aplicar partes dos veces y despejar la integral
  original de la ecuación resultante (típico en ∫e^x·sen(x)dx).
