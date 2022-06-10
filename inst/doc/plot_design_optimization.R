## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include=FALSE------------------------------------------------------------
dir.data <- system.file("data", package="FORTLS")
setwd(dir.data)
load("Rioja.data.RData")
load("Rioja.simulations.RData")
tree.tls <- Rioja.data$tree.tls
tree.field <- Rioja.data$tree.field
sim <- simulations$fixed.area
dir.data <- system.file("exdata", package="FORTLS")
library(FORTLS)

## ----fig.height=7, fig.width=7, fig.align = "center", message=FALSE, warning=FALSE----
estimation.plot.size(tree.tls = tree.tls,
                     plot.parameters = data.frame(radius.max = 25, k.max = 50, BAF.max = 4),
                     dbh.min = 4,
                     average = TRUE, all.plot.designs = FALSE)

## ----eval=FALSE---------------------------------------------------------------
#  sim <- simulations(tree.tls, tree.ds = NULL, tree.field,
#              plot.design = c("fixed.area", "k.tree", "angle.count"),
#              plot.parameters = data.frame(radius.max = 25, k.max = 50, BAF.max = 4),
#              scan.approach = "single", var.metr = list(tls = NULL, field = NULL),
#              dbh.min = 4, h.min = 1.3, max.dist = Inf,
#              dir.data = dir.data, save.result = FALSE, dir.result = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  bias <- relative.bias(simulations = list(fixed.area=sim),
#                variables = c("N", "G", "d", "dg", "d.0", "h", "h.0"),
#                save.result = FALSE, dir.result = NULL)
#  bias$fixed.area

## ----eval=FALSE---------------------------------------------------------------
#  cor <- correlations(simulations = list(fixed.area=sim),
#               variables = c("N", "G", "d", "dg", "d.0", "h", "h.0"),
#               method = c("pearson", "spearman"), save.result = FALSE,
#               dir.result = NULL)

## ----eval=FALSE---------------------------------------------------------------
#  optimize.plot.design(correlations = cor,
#                       variables = c("N", "G", "d", "dg", "d.0", "h", "h.0"),
#                       dir.result = NULL)

