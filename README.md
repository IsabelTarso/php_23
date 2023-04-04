# php_23
1 - verificar se estamos no ubuntu.
2 - File -> open folder.
2.1 - apaga conteudo.
2.2 - informa o caminho /var/www/html.
2.3 - abre essa pasta (enter ou cliockando com o mouse em html).
3 - terminal novo.
4 - git clone LINK_DO_REPOSITORIO.
5 - informa o caminhho /var/www/html/php_23.
5.1 - abre essa pasta (com ente ou clicando com o mouse no html).
6 - configurar o git (git email e o git name da pagina 4 da apostila).
7 - verificar se o apache esta rodando/executando.
7.1 - acessar o navegador com localhost ou 127.0.0.1 (deve aparecer a configuração inicial do apache).
7.2 - sudo service apahce2 status (apache is running)
7.3 - sudo service apahce2 start.
7.4 - executar os passos 7.1 e 7.2.
 
 
 
 
 ### Para salvar no GitHub 
 1 - git add . ( . = todos os arquivos ou especificar por nome ex. git add index.php).
 2 - git commit -m  "DESCREVER O QUE FOI FEITO"
 3 - git push.
 4 - verificar no github se ficou salvo.



 ## Para o merge 
 1 - git checkout NOME Da BRANCH
 2 - git pull (obter atualizacoes)
 3 - git merge NOME BRANCH PARA FAZER AS ALTERAÇÕES 
 
 
 
 
TABELA rh
id PK AUTOINCREMENT NOT NULL
    id_pessoa (fk) = null
    salario
log_first datetime DEFAULT CURRENTTIMESTAMP,
log_last datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENTTIMESTAMP,





TABELA pesssoas|people 
id PK AUTOINCREMENT NOT NULL (fk = id_pessoas nas outras tabelas)
user_id (fk) = null
endereco (fk) = null
cpf = null
cnpj = null
telefone = null
nacionalidade * (NOT NULL)
estado_civil = null
cnae = null
data_abertura_empresa = null
genero = null
etnia = null
inscricao_estadual = null



___Tabela___



TABELA enderecos
id_estado (fk) = null
id_cidade (fk) = null
rua
bairro
numero



complemento
cep
referencia



TABELA estados
nome
sigla





TABELA cidade 
nome
populacao
densidade_demografica
renda_per_capita
ultimo_senso


 _Anotações_
 dbeaver
 dbeaver
 dbeaver
 sudo service apache2 status// para ver se o localhost esta rodando
 
 
 .= ligar uma informação//contatenar!!
 
 
 
 <?php = misturar php com hmtl
 
 
<br>                             --!para proteção de dados add index.html!--
                                   
                             
                             
                          --->> a maquina sempre procurara o arquivo index <<---
                       
                       
                       
403 - forbide> codigo html
</b> , negrito


<? __ Abrir php// >? fechar a tag php

const// constante == não muda = ``;

variavel// $= ``;

echo = texto 
//= comentario 
--sql
0 = um termo 
0,0 = termo decimal 
== compracao
% pega o resto da divisão 

Laço de repetição
do, while , do ... while == laços de repetição
++ somar a variavel mais um


