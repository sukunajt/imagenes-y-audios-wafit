# Script para subir imágenes a GitHub
# Uso: .\upload-images.ps1

param(
    [string]$ImagePath,
    [string]$Category = "logos"
)

# Verificar si se proporcionó una ruta de imagen
if (-not $ImagePath) {
    Write-Host "Uso: .\upload-images.ps1 -ImagePath 'ruta\a\imagen.jpg' -Category 'logos|backgrounds|icons'"
    Write-Host "Ejemplo: .\upload-images.ps1 -ImagePath 'C:\imagenes\logo.png' -Category 'logos'"
    exit 1
}

# Verificar que el archivo existe
if (-not (Test-Path $ImagePath)) {
    Write-Host "Error: El archivo no existe: $ImagePath"
    exit 1
}

# Verificar que la categoría es válida
$validCategories = @("logos", "backgrounds", "icons")
if ($Category -notin $validCategories) {
    Write-Host "Error: Categoría inválida. Use: logos, backgrounds, o icons"
    exit 1
}

# Obtener el nombre del archivo
$fileName = Split-Path $ImagePath -Leaf

# Crear la ruta de destino
$destinationPath = "images\$Category\$fileName"

# Copiar el archivo
try {
    Copy-Item $ImagePath $destinationPath -Force
    Write-Host "✅ Imagen copiada a: $destinationPath"
    
    # Agregar al git
    git add $destinationPath
    Write-Host "✅ Archivo agregado a git"
    
    # Hacer commit
    git commit -m "Agregar imagen: $fileName a $Category"
    Write-Host "✅ Commit realizado"
    
    # Push (opcional - descomenta si quieres hacer push automático)
    # git push
    # Write-Host "✅ Push realizado"
    
    Write-Host "`n🎉 Imagen subida exitosamente!"
    Write-Host "URL para usar en n8n: https://raw.githubusercontent.com/TU_USUARIO/TU_REPO/main/$destinationPath"
    
} catch {
    Write-Host "❌ Error: $($_.Exception.Message)"
} 