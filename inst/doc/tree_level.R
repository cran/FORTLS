## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include=FALSE------------------------------------------------------------
dir.data <- system.file("exdata", package="FORTLS")
library(FORTLS)
library(lidR)

## ----eval = FALSE, include = TRUE---------------------------------------------
#  dir.data <- system.file("exdata", package="FORTLS")
#  multiLAS <- readLAS(paste(dir.data, "Galicia_multi_scan.laz", sep = "/"))
#  lidR::plot(multiLAS, color = "RGB")

## ----eval = FALSE, include = TRUE---------------------------------------------
#  pcd.single <- normalize(las = "Galicia_single_scan.laz",
#                   normalized = TRUE,
#                   x.center = 0, y.center = 0,
#                   max.dist = 15, min.height = NULL, max.height = NULL,
#                   algorithm.dtm = "knnidw", res.dtm = 0.2,
#                   csf = list(cloth_resolution = 0.5),
#                   RGB = TRUE,
#                   scan.approach = "single",
#                   id = NULL, file = "single",
#                   dir.data = dir.data, save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include = TRUE---------------------------------------------
#  head(pcd.single)

## ----eval = FALSE, message=FALSE, warning=FALSE, include=TRUE-----------------
#  tls.resolution = list(point.dist = 6.34, tls.dist = 10)
#  
#  tree.list.single.tls <- tree.detection.single.scan(data = pcd.single,
#                             dbh.min = 4, dbh.max = 200, h.min = 1.3,
#                             ncr.threshold = 0.1,
#                             tls.resolution = tls.resolution,
#                             d.top = NULL,
#                             plot.attributes = NULL,
#                             breaks = c(1.0, 1.3, 1.6), stem.section = c(1,5),
#                             save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include=TRUE-----------------------------------------------
#  head(tree.list.single.tls)

## ----eval = FALSE, warning=FALSE, include=TRUE--------------------------------
#  pcd.multi <- normalize(las = "Galicia_multi_scan.laz",
#                   #normalized = TRUE,
#                   x.center = 0, y.center = 0, RGB = TRUE,
#                   scan.approach = "multi", file = "multi.txt",
#                   dir.data = dir.data, save.result = FALSE)
#  
#  tree.list.multi.tls <- tree.detection.multi.scan(data = pcd.multi,
#                            dbh.min = 4, dbh.max = 200, h.min = 1.3,
#                            ncr.threshold = 0.1,
#                            tls.precision = 0.03,
#                            breaks = c(1.0, 1.3, 1.6), stem.section = c(1,5),
#                            d.top = NULL,
#                            plot.attributes = NULL,
#                            save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include=TRUE-----------------------------------------------
#  head(tree.list.multi.tls)

## ----eval = FALSE, include = FALSE--------------------------------------------
#  multiLAS <- readLAS(paste(dir.data, "Galicia_multi_scan.laz", sep = "/"))
#  diameter <- readLAS(paste(dir.data, "diameters.laz", sep = "/"))
#  plot(multiLAS, color = "RGB", add = plot(diameter, color = "Intensity"))

## ----eval = FALSE, include= TRUE----------------------------------------------
#  files <- list.files(pattern = "las$")
#  
#  tls.resolution = list(point.dist = 7.67, tls.dist = 10)
#  
#  tree.list.tls <- tree.detection.several.plots(las.list = files,
#                        id = NULL, file = NULL,
#                        scan.approach = "multi",
#                        x.center = 0, y.center = 0,
#                        max.dist = 20, min.height = 0.1, max.height = NULL,
#                        algorithm.dtm = "knnidw", res.dtm = 0.2,
#                        csf = list(cloth_resolution = 0.5),
#  
#                        dbh.min = 7, dbh.max = 200, h.min = 1.3,
#                        tls.resolution = tls.resolution,
#                        ncr.threshold = 0.05,
#                        breaks = c(0.5, 1, 1.3, 1.6, 2, 2.5, 3),
#                        stem.section = c(0.5, 4),
#                        d.top = NULL, plot.attributes = NULL,
#                        dir.data = dir.data, save.result = FALSE, dir.result = NULL)

