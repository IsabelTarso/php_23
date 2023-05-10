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
 
 
 <?php 
$possibilidades = array("papel"=>[
    "tesoura" => "perde",
    "pedra" => "ganha",
    "papel" => "empate",
],
    
    , "pedra"=>[
        "tesoura"=> "ganha",
        "pedra" => "empate",
        "papel" => "perde",

    ],
    
    , "tesoura"=> [
    
    "tesoura"=> "empate",
    "pedra" => "perde",
    "papel" => "ganha",

],);
 
 
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

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
<?php



function primeCheck($number){
    if ($number == 1)
    return 0;
    for ($i = 2; $i <= $number/2; $i++){
        if ($number % $i == 0)
            return 0;
    }
    return 1;
}
for($number =1; $number <= 10; $number++)
{
    $flag = primeCheck($number);
if ($flag == 1)
    echo " é primo <br>";
else
    echo "não é primo <br>";
  }

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
<br>
<?php 
$possibilidades = array("papel"=>[
    "tesoura" => "perde",
    "pedra" => "ganha",
    "papel" => "empate",
],
    
    , "pedra"=>[
        "tesoura"=> "ganha",
        "pedra" => "empate",
        "papel" => "perde",

    ],
    
    , "tesoura"=> [
    
    "tesoura"=> "empate",
    "pedra" => "perde",
    "papel" => "ganha",

],);

<?php
  for($i =1; $i < 20; $i++){
  echo "O Valor de I = ".$id;
}
?>
<?php 
$horarioinicial:
<br>
$horainicial + "2700" = $Finaldoprimeirotempo <br>
$Finaldoprimeirotempo + "2700" = $fimdojogo<br>
$fimdojogo/60= $horariofinal<br>
<br>
<br>
<br>
<br>
$horainicial<br>
$arrTempoInicial = explode(":", $horainicial);<br>
<br>
$horaIni = $arrTempoInicial[0];<br>
$minIni = $arrTempoInicial[1];<br>
$minIni = $arrTempoInicial[2];<br>
<br>
$horaEmSegundos = ($horaIni * );<br>
$minutosEmSegundos = ($minIni)<br>
<br>
<br>
<?php
<br>
$inicio = '23:30:00';
$fim = '01:10:27';
<br>
/*$diferenca = Datetime(fim) - Datetime(inicio); --> faz a mesma coisa que o codigo abaixo*/
<br>
$arr_ini = explode(":", $inicio);
$arr_fim = explode(":", $fim);
<br>
//23:59:59 --> 86399<br>
//24:00:00 --> 86400<br>
//00:00:00 --> 0<br>
<br>
$inicio = ($arr_ini[0]*3600) + ($arr_ini[1]*60) + $arr_ini[2];
<br>
$fim = ($arr_fim[0]*3600) + ($arr_fim[1]*60) + $arr_fim[2];
<br>
if($inicio > $fim){
    $fim += 86400;<br>
}
<br>
$tempo = $fim - $inicio;<br>
<br>
$hora = $tempo/3600;
$tempo = $tempo%3600;<br>
<br>
$min = $tempo/60;<br>
$tempo = $tempo%60;<br>
<br>
$seg = $tempo;<br>
<br>
echo "Tempo decorrido: " . intval($hora) . " hora, " . intval($min) . " minutos e {$seg} segundos";<br>
?>
<br>
A função include() do PHP tem como objetivo incluir (como o próprio nome diz) um arquivo dentro do outro quando acessado. Caso ocorra algum problema na inclusão deste, será apresentado um Warning (aviso) que não foi possível incluir o arquivo e continuará a exibição da página normalmente sem a inclusão do arquivo. A função include() aceita parâmetros via GET quando chama um arquivo. <br>
A função require() do PHP tem a mesma funcionalidade da função include(), citada acima, com a diferença que se caso o arquivo que você está incluindo não exista (ou não seja encontrado), será gerado um Fatal Error (erro fatal), paralizando a execução de qualquer script que venha após a linha do require(); outra divergência é o fato desta função não aceitar parâmetros via GET para o arquivo chamado. Caso você utilize este parâmetro, ele será ignorado.<br>
CRUD = Create, read, update, delete
