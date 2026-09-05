# matesar

Visor rápido de apuntes de matemáticas (fórmulas y esquemas) desde la
terminal de Ubuntu/Linux.

```
matesar                              # árbol completo de temas
matesar raices                       # árbol de lo que hay dentro de un tema
matesar raices/racionalizacion       # abre ese apunte (ventana emergente con zenity)
```

## Instalar en un ordenador nuevo

```bash
curl -fsSL https://raw.githubusercontent.com/TU_USUARIO/matesar/main/install.sh | bash
```

(sustituye `TU_USUARIO` por tu usuario real de GitHub una vez subido el repo)

O manualmente:

```bash
git clone https://github.com/TU_USUARIO/matesar.git ~/matesar
cd ~/matesar
chmod +x install.sh matesar
./install.sh
```

## Añadir apuntes nuevos

Crea un `.md` dentro de la carpeta del tema en `matesar-apuntes/` (o una
carpeta nueva para un tema nuevo), y luego:

```bash
cd ~/matesar
git add .
git commit -m "Añado apuntes de matrices"
git push
```

En cualquier otro ordenador donde ya lo tengas instalado, solo tienes que
hacer `git -C ~/matesar pull` (o volver a correr `install.sh`) para
traerte los apuntes nuevos.

Ver `INSTALL.md` para más detalles de instalación local (sin GitHub).
