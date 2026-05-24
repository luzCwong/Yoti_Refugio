-- Base de datos Yoti Refugio MVP V1
-- IMPORTANTE: La V1 NO almacena datos personales reales
-- Solo datos ficticios para demo y métricas anónimas

-- Recursos oficiales e institucionales
CREATE TABLE resources (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  nombre TEXT NOT NULL,
  tipo TEXT NOT NULL,          -- '016', '112', 'centro_igualdad', 'asociacion', 'estatal'
  ambito TEXT,                 -- 'nacional', 'madrid', 'getafe', etc.
  telefono TEXT,
  enlace TEXT,
  descripcion TEXT,
  activo BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT now()
);

-- Fichas educativas y respuestas base del agente
CREATE TABLE content_cards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  categoria TEXT NOT NULL,     -- 'senal_alerta', 'primer_paso', 'entorno', 'emergencia'
  titulo TEXT NOT NULL,
  texto TEXT NOT NULL,
  publico BOOLEAN DEFAULT true,
  prioridad INTEGER DEFAULT 5,
  created_at TIMESTAMP DEFAULT now()
);

-- Escenarios de prueba del agente
CREATE TABLE test_scenarios (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  nombre TEXT NOT NULL,
  descripcion TEXT,
  nivel_riesgo TEXT,           -- 'bajo', 'medio', 'alto', 'inmediato'
  entrada_prueba TEXT,
  respuesta_esperada TEXT,
  created_at TIMESTAMP DEFAULT now()
);

-- Métricas anónimas de demo (sin texto personal)
CREATE TABLE interaction_logs_demo (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  fecha TIMESTAMP DEFAULT now(),
  flujo TEXT,                  -- 'confusion', 'miedo_inmediato', 'control_digital', 'entorno', 'preparacion'
  nivel_riesgo_estimado TEXT,
  accion_mostrada TEXT,        -- 'recurso_016', 'recurso_112', 'plan_seguridad', etc.
  dispositivo TEXT             -- 'movil', 'tablet', 'ordenador'
);

-- Contactos ficticios para demo del módulo de círculo de confianza
CREATE TABLE safe_contacts_demo (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  alias TEXT NOT NULL,         -- Solo alias, nunca nombre real
  tipo TEXT,                   -- 'familiar', 'amiga', 'profesional'
  activo BOOLEAN DEFAULT true
);
