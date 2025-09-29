# Apostila GitHub

![Status do Build](https://github.com/ep-aero-ufsm/apostila-github/actions/workflows/latex.yml/badge.svg)

Este é o repositório onde é fornecido o código fonte da apostila de GitHub da EP Aero UFSM. O PDF é gerado automaticamente pelo workflow de CI/CD toda vez que há um push no branch `main`.

## Como acessar o PDF

O PDF gerado pelo workflow pode ser acessado publicamente neste link:

- **Visualizar no navegador:** [Abrir Apostila](https://github.com/ep-aero-ufsm/apostila-github/blob/main/apostila_github.pdf)  
- **Baixar PDF:** [Download Apostila](https://github.com/ep-aero-ufsm/apostila-github/raw/main/apostila_github.pdf) 

> Nota: O PDF é atualizado automaticamente a cada commit no branch `main`.

## Contribuições

Sinta-se à vontade para enviar sugestões, abrir issues ou pull requests. A construção do PDF é automática, então qualquer alteração no `.tex` será refletida na próxima versão gerada.

Antes de enviar suas modificações para o repositório, verifique que o PDF compila e exibe as suas contribuções corretamente. Isso pode ser feito usando o script fornecido, `compilar_local.sh`. Esse script gera um PDF que não é enviado ao repositório remoto, chamado `apostila_github_local.pdf`.
