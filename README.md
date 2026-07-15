# Curriculum Vitae

CV profesional en formato PDF generado con LaTeX, basado en la plantilla [Awesome CV](https://github.com/posquit0/Awesome-CV).

El proyecto genera **6 versiones** del CV: tres roles (Analista de datos / Ingeniero de datos / Desarrollador Python) en dos idiomas (Español / Inglés).

## Versiones disponibles

| Archivo | Rol | Idioma |
|---|---|---|
| `cv-analyst-es.tex` | Analista de datos | Español |
| `cv-analyst-en.tex` | Data Analyst | English |
| `cv-engineer-es.tex` | Ingeniero de datos | Español |
| `cv-engineer-en.tex` | Data Engineer | English |
| `cv-jefferson-ortiz.tex` | Desarrollador Python (versión general) | Español |
| `cv-developer-en.tex` | Python Developer | English |

Los PDFs compilados se generan en la carpeta `output/`.

## Estructura del repositorio

```
curriculum-vitae/
├── cv-sections/
│   ├── shared/               # Contenido común a todos los roles e idiomas
│   │   ├── experience.tex / experience_en.tex
│   │   ├── academic_experience.tex / academic_experience_en.tex
│   │   └── education.tex / education_en.tex
│   ├── analyst/              # Específico del perfil Analista de datos
│   │   ├── summary.tex / summary_en.tex
│   │   └── skills.tex / skills_en.tex
│   ├── engineer/             # Específico del perfil Ingeniero de datos
│   │   ├── summary.tex / summary_en.tex
│   │   └── skills.tex / skills_en.tex
│   └── developer/            # Específico del perfil Desarrollador Python
│       ├── summary.tex / summary_en.tex
│       └── skills.tex / skills_en.tex
├── fonts/                    # Fuentes Roboto y Source Sans Pro
├── output/                   # PDFs generados localmente (ignorado por git)
├── .github/workflows/
│   └── build-cvs.yml         # CI: compila las 6 versiones en cada push
├── awesome-cv.cls            # Clase LaTeX con el diseño del CV
├── Makefile                  # Compilación local
├── cv-analyst-es.tex         # Archivos principales (uno por versión)
├── cv-analyst-en.tex
├── cv-engineer-es.tex
├── cv-engineer-en.tex
├── cv-jefferson-ortiz.tex    # CV general (Desarrollador Python, español)
└── cv-developer-en.tex
```

## Compilación local

Requiere `latexmk` y `lualatex` (incluidos en TeX Live o MiKTeX).

```bash
make                    # Compila las 6 versiones → output/
make cv-jefferson-ortiz # Compila solo una versión
make clean              # Elimina la carpeta output/
```

## Dónde editar cada cosa

| Cambio | Archivo(s) a editar |
|---|---|
| Nuevo trabajo | `cv-sections/shared/experience.tex` y `experience_en.tex` |
| Nuevo título académico | `cv-sections/shared/education.tex` y `education_en.tex` |
| Habilidades del analista | `cv-sections/analyst/skills.tex` y `skills_en.tex` |
| Habilidades del ingeniero | `cv-sections/engineer/skills.tex` y `skills_en.tex` |
| Presentación del analista | `cv-sections/analyst/summary.tex` y `summary_en.tex` |
| Presentación del ingeniero | `cv-sections/engineer/summary.tex` y `summary_en.tex` |
| Habilidades del desarrollador | `cv-sections/developer/skills.tex` y `skills_en.tex` |
| Presentación del desarrollador | `cv-sections/developer/summary.tex` y `summary_en.tex` |
| Datos personales (nombre, contacto) | Los 6 archivos `.tex` raíz |
| Diseño y estilos | `awesome-cv.cls` |

## Integración continua (CI)

El workflow `.github/workflows/build-cvs.yml` compila automáticamente las 6 versiones en cada push a `main` (cuando cambia algún `.tex`, `awesome-cv.cls` o `fonts/`). Las 6 versiones quedan disponibles como artefactos de la ejecución, y el CV general (`cv-jefferson-ortiz.pdf`) se publica además en la rama `curriculum-vitae-pdf`, reemplazando cualquier PDF anterior.
