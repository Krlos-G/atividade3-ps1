$origem = "C:\Users\carlo\OneDrive\Documentos\Devops\Origem"
$destinoTextos = "C:\Users\carlo\OneDrive\Documentos\DevopsDestino\Textos"
$destinoImagens = "C:\Users\carlo\OneDrive\Documentos\DevopsDestino\Imagens"
$destinoPDFs = "C:\Users\carlo\OneDrive\Documentos\DevopsDestino\PDFs"
$destinoOutros = "C:\Users\carlo\OneDrive\Documentos\DevopsDestino\Outros"

if (-not (Test-Path $destinoTextos)) { New-Item -ItemType Directory -Path $destinoTextos }
if (-not (Test-Path $destinoImagens)) { New-Item -ItemType Directory -Path $destinoImagens }
if (-not (Test-Path $destinoPDFs)) { New-Item -ItemType Directory -Path $destinoPDFs }
if (-not (Test-Path $destinoOutros)) { New-Item -ItemType Directory -Path $destinoOutros }

$arquivos = Get-ChildItem -Path $origem

foreach ($arquivo in $arquivos) {
    $extensao = $arquivo.Extension.ToLower()

    if ($extensao -in ".txt", ".doc", ".docx") {
        Move-Item -Path $arquivo.FullName -Destination $destinoTextos
    }
    elseif ($extensao -in ".jpg", ".jpeg", ".png", ".gif") {
        Move-Item -Path $arquivo.FullName -Destination $destinoImagens
    }
    elseif ($extensao -eq ".pdf") {
        Move-Item -Path $arquivo.FullName -Destination $destinoPDFs
    }
    else {
        Move-Item -Path $arquivo.FullName -Destination $destinoOutros
    }
}
Write-Host "Arquivos movidos com sucesso!"