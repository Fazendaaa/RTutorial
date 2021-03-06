#' isa
#'
#' @import ggplot2
#'
#' @docType package
#' @name isa
NULL

tabela <- lerArquivo()

#' Grafico De Andar
andarGrafico <- function () {
    ggplot(tabela, aes(x = Bloco, y = Andar)) + geom_boxplot()
}

finalGrafico <- function () {
    ggplot(tabela, aes(x = Bloco, y = Final)) + geom_boxplot()
}

salaGrafico <- function () {
    ggplot(tabela, aes(x = Bloco, y = Sala)) + geom_boxplot()
}

cozinhaGrafico <- function () {
    ggplot(tabela, aes(x = Bloco, y = Cozinha)) + geom_boxplot()
}

banheiroGrafico <- function () {
    ggplot(tabela, aes(x = Bloco, y = Banheiro)) + geom_boxplot()
}

dormGrafico <- function () {
    ggplot(tabela, aes(x = Bloco, y = Dorm)) + geom_boxplot()
}

#total <- tabela %>% calcularTotal
#ggplot(data = total, aes(x = Bloco, y = Total)) + geom_bar(stat = 'identity')
#ggsave('./data/Total.png')

#rachaduras <- tabela %>% calcularRachaduras
#ggplot(data = rachaduras, aes(x = Bloco, y = Rachadura)) + geom_bar(stat = 'identity')
#ggsave('./data/Rachadura.png')

#infiltracoes <- tabela %>% calcularInfiltracoes
#ggplot(data = infiltracoes, aes(x = Bloco, y = Infiltracao)) + geom_bar(stat = 'identity')
#ggsave('./data/Infiltracao.png')

#dados <- list(total, infiltracoes, rachaduras)
#processados <- Reduce(function(x, y) merge(x, y, all = TRUE), dados)
#print(processados)
