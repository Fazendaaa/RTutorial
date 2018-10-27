#' isa
#'
#' @import ggplot2
#'
#' @docType package
#' @name isa
NULL

tabela <- lerArquivo()

total <- tabela %>% calcularTotal
infiltracoes <- tabela %>% calcularInfiltracoes
rachaduras <- tabela %>% calcularRachaduras

dados <- list(total, infiltracoes, rachaduras)

processados <- Reduce(function(x, y) merge(x, y, all = TRUE), dados)

paraVisualizar <- as.data.frame(processados)
print(paraVisualizar)
