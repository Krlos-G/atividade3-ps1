# Use a imagem base do Windows Server Core
FROM mcr.microsoft.com/powershell:latest

# Copie o script PowerShell para o diretório de trabalho no contêiner
COPY redi.ps1 C:\Users\carlo\OneDrive\Documentos\Cods\redi.ps1

# Executa o script PowerShell ao iniciar o contêiner
CMD ["powershell.exe", "-File", "C:\\Users\\carlo\\OneDrive\\Documentos\\Cods\\redi.ps1"]
