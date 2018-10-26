# Isa
## A fazer
Comparar os blocos A e B:
* Os tamanhos de cada bloco
* Criar uma nova coluna com o tamanho total
* Usar os box plots de cada bloco
* infiltraçãoes e rachaduras
* Calcular medidas de posição e dispersão:
    * Mediana
    * Quartis
    * Média
    * Mínimo
    * Máximo
    * Variância
* Verificar se infiltrações e rachaduras aparecem mais:
    * [ ] Nos primeiros andares
    * [ ] Nos últimos
    * [ ] Não há relação

### Dados
|  id | Bloco | Andar | Final | Sala | Cozinha | Banheiro | Dorm | Rachadura | Infitr |
| --- | ----- | ----- | ----- | ---- | ------- | -------- | ---- | --------- | ------ |
| 1 | A | 1 | 1 | 28.8 | 7.1 | 5.1 | 12.3 | 0 | 1 |
| 2 | A | 5 | 2 | 26.1 | 8.2 | 4.9 | 17.2 | 1 | 1 |
| 3 | B | 7 | 7 | 27.8 | 6.9 | 5.4 | 15.6 | 1 | 0 |
| ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

## Rodando
### Contruindo o código:
```shell
R -e "devtools::check()"
```

### Verificando padrões
```shell
R -e "options(warn=-1);goodpractice::gp('isa')"
```

### Rodando testes
```shell
R -e "devtools::document();devtools::test()"
```

### Rodando o programa
```shell
Rscript ./R/main.R
```

## Notas
No Arch Linux tive que instalar o `jdk8-openjdk` e rodar o seguinte comando antes de instalar o pacote `xlsx`:
```shell
sudo R CMD javareconf
```

Durante o processo de desenvolvimento a mensagem:
```shell
Picked up _JAVA_OPTIONS
```
Sempre aparecia na primeira chamada do pacote `xlsx`. Adicionando as seguintes linhas na minha shell profile resolveram o problema:
```shell
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'
```

Graças a [este](https://superuser.com/a/1009779) comentário.

### Diretório
Como arquivos .xlsx não são considerados arquivos válidos para serem utilizados pelo R -- como arquivos "padrões" da linguagem --, ele foi adicionado no [.Rbuildingore](./.Rbuildingore) para evitar que desse um warning durante a verificação.
