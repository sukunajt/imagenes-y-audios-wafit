# URLs para usar en n8n

## Repositorio: https://github.com/sukunajt/imagenes-y-audios-wafit

### Imagen de Bienvenida
- **Archivo**: `Sanaturelacionconlacomida.png`
- **URL Normal**: `https://github.com/sukunajt/imagenes-y-audios-wafit/blob/main/images/bienvenida/Sanaturelacionconlacomida.png`
- **URL Raw**: `https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/Sanaturelacionconlacomida.png`

### Audio de Bienvenida
- **Archivo**: `Audio wafit (mp3cut.net) 2.mp3`
- **URL Normal**: `https://github.com/sukunajt/imagenes-y-audios-wafit/blob/main/images/bienvenida/audios/audio%20bienvenida/Audio%20wafit%20(mp3cut.net)%202.mp3`
- **URL Raw**: `https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/audios/audio%20bienvenida/Audio%20wafit%20(mp3cut.net)%202.mp3`

## Cómo usar en n8n

### 1. En nodos de WhatsApp
```json
{
  "media": {
    "link": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/Sanaturelacionconlacomida.png"
  }
}
```

### 2. En nodos HTTP Request
```json
{
  "method": "GET",
  "url": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/Sanaturelacionconlacomida.png"
}
```

### 3. En nodos de Email
```json
{
  "attachments": [
    {
      "filename": "bienvenida.png",
      "content": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/Sanaturelacionconlacomida.png"
    }
  ]
}
```

### 4. En nodos de Telegram
```json
{
  "photo": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/Sanaturelacionconlacomida.png"
}
```

### 5. En nodos de WhatsApp (Audio)
```json
{
  "token": "8czn7gj44nu06qcr",
  "to": "={{ $node['Webhook'].json.body.data.from }}",
  "audio": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/audios/audio%20bienvenida/Audio%20wafit%20(mp3cut.net)%202.mp3"
}
```

### 6. Enviar Imagen Y Audio juntos (WhatsApp)
```json
{
  "token": "8czn7gj44nu06qcr",
  "to": "={{ $node['Webhook'].json.body.data.from }}",
  "image": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/Sanaturelacionconlacomida.png",
  "audio": "https://raw.githubusercontent.com/sukunajt/imagenes-y-audios-wafit/main/images/bienvenida/audios/audio%20bienvenida/Audio%20wafit%20(mp3cut.net)%202.mp3"
}
```

## Notas importantes
- **Usa siempre la URL Raw** para n8n (la que empieza con `raw.githubusercontent.com`)
- Las URLs normales de GitHub no funcionan directamente en n8n
- Si agregas más imágenes o audios, sigue el mismo patrón de URL
- Los espacios en nombres de archivos se convierten en `%20` en la URL 