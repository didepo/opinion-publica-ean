# Opinión Pública — Universidad EAN

Materiales de trabajo de la asignatura **Opinión Pública** (pregrado, Universidad EAN).
Sitio publicado: **https://didepo.github.io/opinion-publica-ean**

Este repositorio es la copia pública de una bóveda de Obsidian que se trabaja en privado. Lo que se publica aquí está en `content/` y se genera con [Quartz](https://quartz.jzhao.xyz/).

## Qué hay adentro

| Carpeta | Qué contiene |
|---|---|
| `Bibliografía/` | Fuentes con referencia en formato MLA, priorizando acceso abierto y revisión por pares |
| `Lecturas críticas/` | Lecturas argumentadas de las fuentes, con autoría declarada — humana o de IA |
| `Preguntas detonadoras/` | Preguntas que abren discusión y no se cierran buscando |

## Cómo se trabaja

La bóveda privada es la fuente de verdad. `content/` es una copia desechable: `publicar.sh` la reescribe completa en cada publicación. **No edites nada dentro de `content/`** — se pierde en la siguiente sincronización.

```bash
./publicar.sh              # sincroniza, pregunta y publica
./publicar.sh --solo-sync  # solo sincroniza, para revisar antes
npx quartz build --serve   # vista previa local en http://localhost:8080
```

## Compromisos del proyecto

1. **Acceso abierto primero.** Se prefieren fuentes que cualquier lector pueda abrir y cotejar. Citar algo cerrado es una decisión que se documenta, no un descuido.
2. **La autoría de cada lectura se declara.** Las lecturas hechas por una IA lo dicen, e indican qué soporte se leyó y qué no se verificó.
3. **Ningún hallazgo de IA se da por verificado** hasta que una persona abre la fuente y firma.

## Licencias

- **Contenido** (notas, lecturas, preguntas): [CC BY-SA 4.0](LICENSE-CONTENIDO.md)
- **Código** (Quartz y configuración): MIT, ver `LICENSE.txt`
