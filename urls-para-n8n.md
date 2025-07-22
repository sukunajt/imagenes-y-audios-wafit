# URLs para usar en n8n

## Repositorio: https://github.com/sukunajt/imagenes-y-audios-wafit

### Imagen de Bienvenida
- **Archivo**: `380F95C4-EA97-45DB-B88D-AF280D77D69A.png`
- **URL Normal**: `https://github.com/sukunajt/imagenes-y-audios-wafit/blob/main/images/bienvenida/380F95C4-EA97-45DB-B88D-AF280D77D69A.png`
- **URL Raw**: `https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/380F95C4-EA97-45DB-B88D-AF280D77D69A.png`

## Cómo usar en n8n

### 1. En nodos de WhatsApp
```json
{
  "media": {
    "link": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/380F95C4-EA97-45DB-B88D-AF280D77D69A.png"
  }
}
```

### 2. En nodos HTTP Request
```json
{
  "method": "GET",
  "url": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/380F95C4-EA97-45DB-B88D-AF280D77D69A.png"
}
```

### 3. En nodos de Email
```json
{
  "attachments": [
    {
      "filename": "bienvenida.png",
      "content": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/380F95C4-EA97-45DB-B88D-AF280D77D69A.png"
    }
  ]
}
```

### 4. En nodos de Telegram
```json
{
  "photo": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/380F95C4-EA97-45DB-B88D-AF280D77D69A.png"
}
```

## Notas importantes
- **Usa siempre la URL Raw** para n8n (la que empieza con `raw.githubusercontent.com`)
- Las URLs normales de GitHub no funcionan directamente en n8n
- Si agregas más imágenes, sigue el mismo patrón de URL 