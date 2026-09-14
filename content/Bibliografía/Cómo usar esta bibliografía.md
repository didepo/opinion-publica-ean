---
tags:
  - guía
---

# Cómo usar esta bibliografía

Cada referencia es **una nota**. La [[Bibliografía.base|Base]] no guarda datos: lee las notas de esta carpeta y las muestra como tabla. Si una referencia no aparece en la tabla, el problema está en las propiedades de su nota, no en la Base.

## Agregar una referencia

1. Duplicar `_Plantilla de referencia.md`.
2. Renombrar así: `AÑO — Apellido(s) — Palabras clave del título`.
3. Llenar las propiedades. La cita en MLA se arma sola en la columna **Referencia MLA**.

La nota de plantilla empieza con guion bajo (`_`) para que la Base la ignore. Si duplicas y no quitas el guion bajo, tu referencia será invisible.

## Cómo se llenan los autores (esto importa)

MLA no ordena los nombres igual para todos los autores de un mismo artículo:

- **El primero se invierte**: `Hernández-Rodríguez, Juan Camilo`
- **Los demás van en orden natural**: `Óscar Iván Londoño Pardo`
- **Con tres o más autores**, la Base escribe automáticamente `et al.` después del primero. Aun así, registra a todos en la lista: los necesitamos para buscar y para atribuir.

La fórmula respeta ese orden tal como lo escribas. Si inviertes el segundo autor, la cita saldrá mal y nadie lo va a notar hasta que un lector lo coteje.

## Qué significa cada propiedad

| Propiedad | En MLA | Nota |
|---|---|---|
| `titulo` | Título de la fuente | Sin comillas: la fórmula las pone |
| `publicacion` | Contenedor 1 | Nombre de la revista, va en cursiva |
| `volumen`, `numero` | `vol.`, `no.` | Deja vacío lo que no aplique |
| `anio` | Fecha de publicación | Solo el año |
| `paginas` | `pp.` | Rango: `418-445`. Si la revista usa número de artículo, déjalo vacío y anótalo en el cuerpo |
| `repositorio` | Contenedor 2 | SciELO, Redalyc, DOAJ, Dialnet, JSTOR |
| `doi` | Ubicación | Solo el identificador: `10.32870/cys.v2023.8518`, sin `https://doi.org/` |
| `url` | Ubicación | Solo si **no** hay DOI. MLA prefiere el DOI |
| `fecha_acceso` | Fecha de consulta | Formato `AAAA-MM-DDT12:00:00` — ver abajo |

### Por qué la fecha lleva `T12:00:00`

Una fecha sin hora se interpreta como medianoche en horario universal. Al mostrarla en Bogotá —cinco horas atrás— retrocede al día anterior, y la cita termina diciendo que consultamos el artículo un día antes de haberlo hecho. Peor todavía: el servidor que construye el sitio trabaja en horario universal y **sí** muestra el día correcto, así que la misma cita aparece con dos fechas distintas según dónde se mire.

Fijar la hora al mediodía elimina el problema en cualquier huso horario. Es un detalle mínimo y es exactamente la clase de detalle que una bibliografía no puede permitirse.

## Las tres propiedades que sostienen el proyecto

**`acceso_abierto`** — El compromiso es que cualquier lector pueda cotejar lo que afirmamos. Una fuente cerrada puede citarse, pero la vista *Acceso cerrado* existe para obligarnos a buscar primero una alternativa abierta. Si no la hay, que sea una decisión, no un descuido.

**`licencia`** — `CC BY`, `CC BY-NC 4.0`, etc. Determina qué podemos reproducir en el material de clase. Sin licencia registrada, no reproducimos figuras ni tablas.

**`hallado_con`** — `Claude`, `Perplexity`, `manual`, `clase`. No es contabilidad: es trazabilidad. Cuando una referencia resulte estar mal, vamos a querer saber por dónde entró.

## Flujo de estados

`por verificar` → `verificada` → `citada`, o bien → `descartada`

- **por verificar**: la referencia existe en algún resultado de búsqueda, nadie ha abierto el artículo.
- **verificada**: alguien abrió la fuente, confirmó autoría, año, páginas y DOI contra el documento original, y firmó en `verificado_por`.
- **citada**: ya está usada en un texto nuestro.
- **descartada**: no sirve. Dejar la nota con el motivo en el cuerpo; un descarte documentado ahorra que otro la vuelva a proponer.

Ningún hallazgo de un asistente de IA —este incluido— entra como `verificada` sin que una persona haya abierto la fuente. En un proyecto sobre desinformación, una cita inventada no es un error técnico: es la falla exacta que estamos estudiando.
