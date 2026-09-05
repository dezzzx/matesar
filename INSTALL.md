# Instalación de matesar (Ubuntu / Linux)

## 1. Descomprime el zip donde quieras tenerlo guardado
Por ejemplo, en tu carpeta personal:

```bash
unzip matesar.zip -d ~/
```

Esto crea `~/matesar/` con dos cosas dentro:
- `matesar`            → el programa (script)
- `matesar-apuntes/`   → la carpeta con todos los apuntes (raices, logaritmos, ...)

**Importante:** el script y la carpeta `matesar-apuntes/` deben quedarse
siempre juntos (uno al lado del otro), porque el script busca la carpeta
de apuntes a su lado automáticamente.

## 2. Instala las dependencias recomendadas (opcionales pero recomendadas)

```bash
sudo apt update
sudo apt install tree zenity
```

- `tree` → para que los árboles de carpetas salgan bonitos (si no lo tienes,
  el programa funciona igual pero con una lista más simple).
- `zenity` → para que los apuntes se abran en una **ventana emergente**
  (si no lo tienes, se abrirán con `less`/`cat` directamente en la terminal).

## 3. Dale permisos de ejecución al script

```bash
chmod +x ~/matesar/matesar
```

## 4. Añádelo a tu PATH para poder escribir "matesar" desde cualquier sitio

Opción recomendada — crea un enlace en `~/bin` (o `~/.local/bin`):

```bash
mkdir -p ~/.local/bin
ln -s ~/matesar/matesar ~/.local/bin/matesar
```

Asegúrate de que `~/.local/bin` está en tu PATH (normalmente ya lo está
en Ubuntu moderno). Si `matesar` no se reconoce como comando, añade esto
al final de tu `~/.bashrc`:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

Y luego recarga la terminal:

```bash
source ~/.bashrc
```

## 5. ¡Listo! Pruébalo

```bash
matesar                          # muestra todos los temas (árbol completo)
matesar raices                   # árbol de lo que hay dentro de "raices"
matesar /raices                  # (la barra inicial es opcional, funciona igual)
matesar raices/racionalizacion   # abre ese apunte en ventana emergente
matesar derivadas/tabla_derivadas
matesar integrales/integracion_por_partes
```

## Cómo añadir más apuntes en el futuro

Solo tienes que crear un archivo `.md` nuevo dentro de la carpeta del tema
que quieras (o crear una carpeta nueva para un tema nuevo) en
`matesar-apuntes/`. No hace falta tocar el script para nada: `matesar`
detecta automáticamente todo lo que haya en la carpeta.

Ejemplo: para añadir un apunte nuevo sobre matrices:

```bash
mkdir -p ~/matesar/matesar-apuntes/matrices
nano ~/matesar/matesar-apuntes/matrices/operaciones_basicas.md
```

Y ya podrás hacer `matesar matrices` y `matesar matrices/operaciones_basicas`.
