library(visualTest)
context("Testando principal arquivo")

tmp <- "../../data/tmp"
dir.create(tmp)

test_that("Testando grafico do andar", {
    andarGrafico()
    ggsave("Andar.png", path = tmp, device = png())
    input <- getFingerprint("../../data/tmp/Andar.png")
    output <- getFingerprint("../../data/tests/Andar.png")

    expect_equal(input, output)
})

unlink(tmp, recursive = TRUE)
