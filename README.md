# Curriculum Vitae

El objetivo de este proyecto es generar un CV profesional en formato PDF que pueda ser fácilmente actualizado y personalizado. Entre los aspectos clave se destacan:

Tomo como base la popular plantilla [Awesome CV](https://github.com/posquit0/Awesome-CV). 

## Descripción del Proyecto

En el proyecto se puede encontrar las siguientes características a considerar:


- **Modularidad:** El CV se divide en secciones individuales ubicadas en la carpeta `cv-sections/`, lo que facilita su edición y mantenimiento.

- **Diseño Profesional:** Basado en la plantilla Awesome CV, el diseño es moderno y está optimizado para resaltar información relevante.

- **Automatización:** Se han configurado flujos de trabajo de integración continua (CI) para asegurar que el documento compile correctamente en cada actualización.


## Estructura del Repositorio

- `jeff-curriculum.tex`: Archivo principal en LaTeX que compila el CV.
- `awesome-cv.cls`: Archivo de clase de LaTeX que define el estilo y diseño del CV.

- **Carpeta `cv-sections/`**: Contiene archivos individuales para cada sección del CV (por ejemplo, experiencia, educación, habilidades).

- **Carpeta `fonts/`**: Incluye las fuentes utilizadas en el documento.

- **Carpeta `.github/workflows/`**: Configuraciones para la integración continua del proyecto.


## Personalización

Para actualizar o personalizar tu CV:

- **Editar Secciones:**

    Modifica los archivos en la carpeta `cv-sections/` para actualizar información personal, experiencia, educación y más.

- **Actualizar Estilos:**

    Si deseas cambiar el diseño, puedes editar el archivo `awesome-cv.cls` o los archivos de estilo asociados.

- **Añadir Nuevos Contenidos:**

    Puedes agregar nuevas secciones o modificar las existentes para reflejar tu información actualizada.

## Integración Continua (CI)

El repositorio cuenta con configuraciones de **GitHub Actions** para compilar el documento automáticamente. Cada vez que realices un push o una pull request, se verificará que el CV compile sin errores, lo que ayuda a mantener la calidad y consistencia del documento.

## ¡Gracias!
Si encuentras algún problema, tienes sugerencias o deseas contribuir al proyecto, no dudes en abrir una issue o enviar una pull request.