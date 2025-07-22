# Guía de uso de imágenes en n8n

## Cómo subir imágenes

1. **Arrastra y suelta** las imágenes en las carpetas correspondientes:
   - `logos/` - Para logos de empresas, marcas, etc.
   - `backgrounds/` - Para fondos y imágenes de fondo
   - `icons/` - Para iconos y elementos gráficos pequeños

2. **Haz commit y push** a GitHub

## Cómo usar en n8n

### En nodos HTTP Request
```json
{
  "method": "GET",
  "url": "https://raw.githubusercontent.com/TU_USUARIO/TU_REPO/main/images/logos/logo.png"
}
```

### En nodos de WhatsApp
Para enviar imágenes por WhatsApp:
```json
{
  "media": {
    "link": "https://raw.githubusercontent.com/TU_USUARIO/TU_REPO/main/images/backgrounds/fondo.jpg"
  }
}
```

### En nodos de Email
Para adjuntar imágenes en emails:
```json
{
  "attachments": [
    {
      "filename": "logo.png",
      "content": "https://raw.githubusercontent.com/TU_USUARIO/TU_REPO/main/images/logos/logo.png"
    }
  ]
}
```

## Formatos recomendados
- **PNG**: Para logos e iconos (transparencia)
- **JPG**: Para fotografías y fondos
- **SVG**: Para iconos vectoriales (escalables)

## Tamaños recomendados
- **Logos**: 200x200px a 500x500px
- **Fondos**: 1920x1080px máximo
- **Iconos**: 64x64px a 128x128px 