# Teste NTConsult - Testes realizados na API so site [JSON Placeholder](https://jsonplaceholder.typicode.com)

Esse projeto implementa testes de api para a aplicação JSON Placeholder

> Utilizando a stack: 
```sh
Ruby + Cucumber + HTTParty
```
> O motivo de escolher essa stack, é que, além de muito simples e permitir que várias ações sejam feitas de forma mais otimizada, a linguagem Ruby também oferece uma ótima qualidade de código, deixando o projeto com a boa prática de programação _clean code_. 

[![Ruby Version][ruby-image]][ruby-url]
[![Cucumber Version][cucumber-image]][cucumber-url]
[![HTTParty Version][httparty-image]][httparty-url]

Para executar os testes, é necessário, ter previamente instalado:

* [Ruby](https://www.ruby-lang.org/pt/downloads/)
* [NodeJs](https://nodejs.org/pt-br/download/)

* E um editor de códigos a sua escolha

## Baixando o projeto

Para baixar todo o projeto e suas dependências, basta fazer o git clone desse repositório, no diretório desejado de sua máquina. 
Para realizar o procedimento via linha de comando, acesse o diretório desejado através do console de sua preferência, e logo após, execute o comando:
```sh
git clone https://github.com/maressa-o/NTConsultTestQA
```
Após a conclusão, todos os arquivos estarão disponíveis no diretório previamente escolhido.

## A estrutura do projeto

O projeto foi estruturado da seguinte forma:

 * A pasta **features** contém todos os arquivos fonte do projeto, sendo eles:
     * **contracts:** possui os arquivos .json utilizados nas requisições feitas pelos testes.
     * **hooks:** o arquivo hooks, implementa o método de inicialização da classe de serviços, que será utilizada durante todos os testes.
     * **services:** o arquivo _service_ implementa todos os métodos utilizados pelos steps que auxiliam nas ações descritas nos cenários.
     * **specifications:** nessa pasta, temos os arquivos _.feature_ contendo os BDD`s (descrições) dos cenários de testes.
     * **step_definitions:** nessa pasta, encontramos os arquivos _steps_ que implementam as ações do usuário para cada fluxo, seguindo seus respectivos cenários descritos nos arquivos _.feature_.
     * **support:** Aqui, encontramos:
        * **env.rb:** possui as configurações de todo o projeto
        * **config:** nessa pasta está o arquivo _test.yml_ que contém a url base da aplicação.
        * **utils:** esse diretório possui dois arquivos auxiliares, o _data.rb_ que contém dados auxiliares utilizados nos testes, e o arquivo _resource.rb_ que contém os resources de nossa aplicação, permitindo a execução dos verbos HTTP.
        * **report_builder.rb:** esse arquivo possui a configuração do relatório gerado para o resultados dos testes após a execução.
     * **reports:** nessa pasta são gerados os arquivos dos relatórios de execução dos testes.
     * **tmp:** possui os arquivos de configuração da gem _rubycritic_
     * **cucumber.yml:** possui as configurações de execução do projeto.
     * **Gemfile:** onde declaramos as gems (bibliotecas) utilizadas em nosso projeto. 

## Executando...

Para executar os testes, abra o projeto, baixado no passo anterior, em uma IDE de sua escolha, e siga o passo a passo:

* Para instalar todas as dependências configuradas, acesse o diretório do projeto pelo seu console, e execute o comado:

```sh
bundle install
```

* Após concluir a instalação, execute o comando abaixo substituindo o _"@tag"_ para a tag do teste que você deseja executar. As tags podem ser encontradas nos arquivos  **.feature** dentro da pasta _specifications_. Como exemplo, veja a imagem abaixo:

```sh
cucumber -p -test -t @suatag
```

![@tag]()

Para esse projeto, temos 3 tipos de tag, que foram destacadas na imagem acima:

* A tag destacada em **roxo**, é a tag global. Executando essa tag, todos os testes implementados no projeto serão executados.
* A tag destacada em **vermelho**, se trata da tag que separa os testes pelos tipos de requisições _HTTP_. Nesse caso, todos os testes implementados para a requisição _get_.
* As tags que foram destacadas em **amarelo**, são as tags de cada cenário específico, ou seja, somente um cenário de teste será executado.

## Relatórios

Conseguimos gerar dois tipos de relatório para esse projeto. 

* O primeiro, se trata do relatório de aprovação e falha dos testes, e pode ser gerado seguindo o passo a passo abaixo:

    * É necessário gerar o relatório, antes de o mesmo ser exibido, por se tratar de um relatório web. Para isso, em sua linha de comando execute:

      ```sh
      cucumber -p -test -t @suatag -p json
      ```
      (lembrando que _@suatag_ deve ser substituída pela tag do teste que você deseja que o relatório seja exibido.)

      Após a execução desse comando, serão criados dois arquivos na pasta _reports_, sendo um _.json_ e outro  _.html_. 

    * Para visualizar o relatório, após a execução do comando anterior e criação dos arquivos, com o botão direito clique no arquivo **.html** e escolha a opção de exibir na pasta. Após isso, basta dar um duplo clique sobre o arquivo, e o mesmo será renderizado em uma página web, exibindo o relatório dos testes executados.

  O(s) relatório(s) exibido(s) serão como os abaixo:

     * para a tag _'@json-api'_

       * Ao abrir o arquivo _.html_ gerado para a execução, a primeira tela a ser exibida é a "home"do relatório. Nela, é possivel encontrar gráficos que mostram a porcentagem de aprovacão e reprovação dos testes executados por fluxos (features) e cenários. Além de informacões sobre qual ambiente o teste foi executado, o tempo total para a execução de todos os testes, data e hora de quando eles foram executados, nome do projeto... entre outras informações.

       * Ao selecionar a aba _Features_ na tela do relatório, temos uma visão de todos as Funcionalidades (fluxos) executados. E ao clicar em cima de uma dessas funcionalidades, é exibido os cenários executados para essa determinada funcionalidade.

       * E por ultimo, ao clicar em algum desses cenários listados, um modal é exibido com todas as informações de execução dos _steps_ aprovados ou não durante a execução desse mesmo cenário.

       

     ![report-home]()

     ![report-features]()

     ![report-steps]()

* O segundo relatório se trata de uma ferramente utilizada para avaliar a qualidade do código Ruby, que exibe melhorias e código flake para um progeto feito em ruby. Para visualizar basta:
      
    * Executar o comando abaixo em seu console:
      ```sh
      rubycritic
      ```
      
     * O relatório que será exibido, se parecerá com esse: 

     ![rubycritic]()


## ------------ Dúvidas ------------ 

> Em caso de dúvidas, basta entrar em contato:

* Maressa Sales - Analista de Qualidade Sênior
* salesmaressa3@gmail.com
* [LinkedIn](https://www.linkedin.com/in/maressa-sales-de-oliveira-3541a2151/)


[ruby-image]: https://img.shields.io/badge/ruby-2.6.3-red
[ruby-url]: https://www.ruby-lang.org/pt/
[cucumber-image]: https://img.shields.io/badge/cucumber-5.2.0-brightgreen
[cucumber-url]: https://cucumber.io/
[httparty-image]: https://img.shields.io/badge/httparty-0.18.1-yellow
[httparty-url]: https://rubygems.org/gems/httparty/versions/0.13.7?locale=pt-BR
