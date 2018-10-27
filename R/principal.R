#' isa
#'
#' @import ggplot2
#'
#' @docType package
#' @name isa
NULL

tabela <- lerArquivo()

ggplot(tabela, aes(x = Bloco, y = Andar)) + geom_boxplot()
ggsave('./data/Andar.png')

ggplot(tabela, aes(x = Bloco, y = Final)) + geom_boxplot()
ggsave('./data/Final.png')

ggplot(tabela, aes(x = Bloco, y = Sala)) + geom_boxplot()
ggsave('./data/Sala.png')

ggplot(tabela, aes(x = Bloco, y = Cozinha)) + geom_boxplot()
ggsave('./data/Cozinha.png')

ggplot(tabela, aes(x = Bloco, y = Banheiro)) + geom_boxplot()
ggsave('./data/Banheiro.png')

ggplot(tabela, aes(x = Bloco, y = Dorm)) + geom_boxplot()
ggsave('./data/Dorm.png')

total <- tabela %>% calcularTotal
ggplot(data = total, aes(x = Bloco, y = Total)) + geom_bar(stat = 'identity')
ggsave('./data/Total.png')

rachaduras <- tabela %>% calcularRachaduras
ggplot(data = rachaduras, aes(x = Bloco, y = Rachadura)) + geom_bar(stat = 'identity')
ggsave('./data/Rachadura.png')

infiltracoes <- tabela %>% calcularInfiltracoes
ggplot(data = infiltracoes, aes(x = Bloco, y = Infiltracao)) + geom_bar(stat = 'identity')
ggsave('./data/Infiltracao.png')

dados <- list(total, infiltracoes, rachaduras)
processados <- Reduce(function(x, y) merge(x, y, all = TRUE), dados)
print(processados)