# atividade3-ps1
Atividade de automação em powershell.

# Automatização de Organização de Arquivos
Este script em PowerShell automatiza a organização de arquivos em diferentes categorias com base em suas extensões. Ele verifica uma pasta de origem para arquivos e os move para pastas de destino correspondentes com base na extensão do arquivo.

# Requisitos
PowerShell instalado no sistema.
# Uso
Clone ou baixe este repositório em seu computador.
Abra o PowerShell.
Navegue até o diretório onde o script está localizado.
Execute o script PowerShell organizar-arquivos.ps1.
# Configuração
Antes de executar o script, certifique-se de configurar corretamente as variáveis no início do script de acordo com suas necessidades:

'$origem: Caminho da pasta de origem onde os arquivos serão organizados.
'$destinoTextos: Caminho da pasta onde os arquivos de texto serão movidos.
'$destinoImagens: Caminho da pasta onde os arquivos de imagem serão movidos.
'$destinoPDFs: Caminho da pasta onde os arquivos PDF serão movidos.
'$destinoOutros: Caminho da pasta onde os arquivos com extensões diferentes serão movidos.
# Exemplo
![imagem_2024-04-19_224157555](https://github.com/Krlos-G/atividade3-ps1/assets/136604221/45e89def-7146-4a63-9711-986b89952705)

## Execução da automação
Você insere arquivos na pasta origem:
![Captura de tela 2024-04-19 225818](https://github.com/Krlos-G/atividade3-ps1/assets/136604221/fa2ae6fc-109c-444b-bcbe-18b6fea5ee5a)
E então executa a automação e ela separara os arquivos ordenadamente na pasta destino:
![imagem_2024-04-19_230031246](https://github.com/Krlos-G/atividade3-ps1/assets/136604221/23dd85d8-6926-4abd-8d6b-dd7d343aae4f)

# Dockerfile
Criando dockerfile:
```
# Use a imagem base do Windows Server Core
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Copie o script PowerShell para o diretório de trabalho no contêiner
COPY organizar-arquivos.ps1 C:\scripts\organizar-arquivos.ps1

# Executa o script PowerShell ao iniciar o contêiner
CMD ["powershell.exe", "-File", "C:\\scripts\\organizar-arquivos.ps1"]
```
## Executando Dockerfile
Abra o seu terminal powershell e digite : cd C:\cole o caminho de diretorio do dockerfile:
```
cd C:\Users\carlo\OneDrive\Documentos\Cods
```
Certifique-se de colocar o Dockerfile no mesmo diretório que o script PowerShell. Para construir a imagem Docker, você pode usar o seguinte comando:
```
docker build -t nome-da-imagem .
```
Substitua nome-da-imagem pelo nome desejado para sua imagem Docker. Após a construção bem-sucedida da imagem, você pode executá-la usando:
```
docker run -it nome-da-imagem
```
### Exec Docker
![atividade3-ps1](https://github.com/Krlos-G/atividade3-ps1/assets/136604221/d9c405d1-ce5f-4828-b19d-773d321d6262)
