#' Ler Arquivo
#'
#' @description
#' Lê o arquivo e o retorna
#'
#' @section Observações:
#' Toda e qualquer modificação do arquivo deverá ser feita aqui antes de ser
#' processado
#'
#' @author Fazendaaa
#'
#' @return O arquivo em formato Data Frame
#'
#' @importFrom xlsx read.xlsx
#'
#' @export
#'
lerArquivo <- function () {
    tabela <- read.xlsx('./data/input.xlsx', 1)

    return (tabela)
}

#' Salvar Arquivo
#'
#' @description
#' Salva os dados em um arquivo xlsx
#'
#' @section Observações:
#' Toda e qualquer modificação dos dados no tocante a estrutura xlsx deverá ser
#' feita aqui antes de ser salvo
#'
#' @author Fazendaaa
#'
#' @param dados Data frame estrutura que será salva
#'
#' @importFrom xlsx write.xlsx
#'
#' @export
#'
salvarArquivo <- function(dados) {
    # Fazer aqui processamentos se necessários

    write.xlsx(dados)
}
