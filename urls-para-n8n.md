# URLs para usar en n8n

## Repositorio: https://github.com/sukunajt/imagenes-y-audios-wafit

### Imagen de Bienvenida
- **Archivo**: `IMG_5473.PNG`
- **URL Normal**: `https://github.com/sukunajt/imagenes-y-audios-wafit/blob/main/images/bienvenida/IMG_5473.PNG`
- **URL Raw**: `https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/IMG_5473.PNG`

## Cómo usar en n8n

### 1. En nodos de WhatsApp
```json
{
  "media": {
    "link": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/IMG_5473.PNG"
  }
}
```

### 2. En nodos HTTP Request
```json
{
  "method": "GET",
  "url": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/IMG_5473.PNG"
}
```

### 3. En nodos de Email
```json
{
  "attachments": [
    {
      "filename": "bienvenida.png",
      "content": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/IMG_5473.PNG"
    }
  ]
}
```

### 4. En nodos de Telegram
```json
{
  "photo": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/IMG_5473.PNG"
}
```

## Notas importantes
- **Usa siempre la URL Raw** para n8n (la que empieza con `raw.githubusercontent.com`)
- Las URLs normales de GitHub no funcionan directamente en n8n
- Si agregas más imágenes, sigue el mismo patrón de URL 