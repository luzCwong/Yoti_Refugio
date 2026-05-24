# Backend — Yoti Refugio MVP

## Propósito
Intermediario seguro entre el frontend y la API de IA.
Las claves API NUNCA se exponen en el navegador.

## Rutas planificadas
| Ruta | Método | Descripción |
|------|--------|-------------|
| /api/chat | POST | Enviar mensaje a Yoti Escucha |
| /api/resources | GET | Obtener recursos filtrados por tipo/ámbito |
| /api/emergency | POST | Registrar evento de emergencia (anónimo) |

## Variables de entorno necesarias
Crear archivo `.env` local (NUNCA subir a GitHub):
```
AI_API_KEY=
AI_MODEL=
DB_URL=
PORT=3001
```

## Seguridad
- Rate limiting en todas las rutas
- Sin almacenamiento de texto libre de conversaciones en V1
- Solo logs anónimos: flujo usado, nivel de riesgo estimado, recurso mostrado
