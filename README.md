# Projeto Politica

Este projeto é uma aplicação Ruby on Rails que permite criar, visualizar, editar e analisar políticas de privacidade, utilizando a API da Mistral AI para gerar resumos das políticas.

## Tecnologias

- Ruby 8
- Banco de Dados: Sqlite3
- Framework: Ruby on Rails

## Pré-requisitos

1. Instalar o **Git** e o **Ruby** através de seus sites oficiais:
   - Git: https://git-scm.com/downloads
   - Ruby: https://www.ruby-lang.org/pt/downloads/
   
2. Instalar o **Ruby on Rails**:
   ```bash
   gem install rails

3. Criar uma conta no Mistral AI para obter a sua chave de API.

4. Instalação e Configuração:


   -Instale as dependências: bundle install
   -Configure o banco de dados: rails db:migrate


5. Crie o arquivo .env a partir do .env.example e adicione a sua API_KEY da Mistral: MISTRAL_API_KEY=SuaAPIKeyAqui

6. Para rodar a aplicação:
   ```bash
   rails s

7. Rotas:

         Home: http://127.0.0.1:3000/ - Página inicial do projeto.
   
         Listar Políticas: /politicas - Exibe todas as políticas criadas.

         Criar Nova Política: /politicas/new - Formulário para criar uma nova política.
   
         Editar Política: /politicas/1/edit - Onde 1 é o ID da política que você deseja editar.
   
         Análise de Resumo: /text_summaries/analise - Gera um resumo utilizando a API da Mistral.
   
        

9. Contato:
   Para dúvidas ou mais informações, entre em contato:
     Email: vsantarelli.vms@gmail.com




