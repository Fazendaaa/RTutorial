#' Calcular Total
#'
#' @description
#' Pega o dados da tabela e cacula o tamanho total de blocos e com o tamanho de
#' cada um
#'
#' @author Fazendaaa
#'
#' @param dados Data frame para realizar tarefa
#'
#' @return Dada frame com os dados calculados
#'
#' @importFrom dplyr group_by
#' @importFrom dplyr summarise
#'
#' @export
#'
calcularTotal <- function(dados) {
    total <- dados %>%
                group_by(Bloco) %>%
                summarise(Total = n())

    return (total)
}

#' Calcular Infiltrações
#'
#' @description
#' Pega o dados da tabela e calcula em ordem decrescente os andares com maiores
#' incidências de infiltração
#'
#' @author Fazendaaa
#'
#' @param dados Data frame para realizar tarefa
#'
#' @return Dada frame com os dados calculados
#'
#' @importFrom dplyr group_by
#' @importFrom dplyr filter
#' @importFrom dplyr summarise
#'
#' @keywords internal
#'
calcularInfiltracoes <- function(dados) {
    total <- dados %>%
                filter(Infiltr == 1) %>%
                group_by(Bloco) %>%
                summarise(Infiltracao = n())

    return (total)
}

#' Calcular Rachaduras
#'
#' @description
#' Pega o dados da tabela e calcula em ordem decrescente os andares com maiores
#' incidências de rachaduras
#'
#' @author Fazendaaa
#'
#' @param dados Data frame para realizar tarefa
#'
#' @return Dada frame com os dados calculados
#'
#' @importFrom dplyr group_by
#' @importFrom dplyr filter
#' @importFrom dplyr summarise
#'
#' @keywords internal
#'
calcularRachaduras <- function(dados) {
    total <- dados %>%
                filter(Rachadura == 1) %>%
                group_by(Bloco) %>%
                summarise(Rachadura = n())

    return (total)
}

#' Calcular Ocorrências
#'
#' @description
#' Pega o dados da tabela e calcula se infiltrações e rachaduras aparcem mais:
#' \itemize{
#'     \item Nos primeiros andares
#'     \item Nos últimos
#'     \item Não há relação
#'}
#'
#' @author Fazendaaa
#'
#' @param dados Data frame para realizar tarefa
#'
#' @return Dada frame com os dados calculados
#'
#' @export
#'
verificarOcorrencias <- function(dados) {

}
