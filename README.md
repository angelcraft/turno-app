# turno.app 📅

App Android para leer horarios de trabajo desde una foto.

## Cómo compilar la APK con GitHub Actions

1. Sube este proyecto a tu repositorio de GitHub
2. Ve a la pestaña **Actions** en tu repositorio
3. El workflow se ejecuta automáticamente al hacer push a `main`
4. También puedes ejecutarlo manualmente: Actions → Build APK → Run workflow
5. Cuando termine (~5 min), descarga la APK desde **Artifacts**

## Características

- 📸 Leer horarios manuscritos desde foto
- 🤖 IA de Google Gemini para reconocimiento
- 🎨 Colores por tipo de turno (mañana/tarde/mediodía)
- ✏️ Edición de turnos
- 💾 Guardar turnos por trabajador
- 📅 Exportar al calendario de Google
- ☰ Menú lateral con historial

## Configuración

La app pide una API Key de Google Gemini al primer uso.
Puedes obtenerla gratis en: https://aistudio.google.com/app/apikey
