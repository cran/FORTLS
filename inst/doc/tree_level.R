## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include=FALSE------------------------------------------------------------
dir.data <- getwd()
download.file("https://www.dropbox.com/s/17yl25pbrapat52/Galicia_single_scan_red.laz?dl=1",
              destfile = file.path(dir.data, "Galicia_single_scan.laz"),
              mode = "wb")
download.file("https://www.dropbox.com/s/i905wj0lavklczb/Galicia_multi_scan_red.laz?dl=1",
              destfile = file.path(dir.data, "Galicia_multi_scan.laz"),
              mode = "wb")
download.file("https://www.dropbox.com/s/qrps8om12tzi2a1/Rioja_1_red.laz?dl=1",
              destfile = file.path(dir.data, "Rioja_1.laz"),
              mode = "wb")
download.file("https://www.dropbox.com/s/vgau7yy1rezvn2d/Rioja_2_red.laz?dl=1",
              destfile = file.path(dir.data, "Rioja_2.laz"),
              mode = "wb")
library(FORTLS)

## ----eval = FALSE, include = TRUE---------------------------------------------
#  multiLAS <- lidR::readLAS(paste(dir.data, "Galicia_multi_scan.laz", sep = "/"))
#  lidR::plot(multiLAS, color = "RGB")

## ----eval = TRUE, include = TRUE----------------------------------------------
pcd.single <- normalize(las = "Galicia_single_scan.laz", 
                 normalized = NULL,
                 x.center = 0, y.center = 0,
                 max.dist = 10, min.height = NULL, max.height = NULL, 
                 algorithm.dtm = "knnidw", res.dtm = 0.2,
                 csf = list(cloth_resolution = 0.5),
                 RGB = TRUE,
                 scan.approach = "single",
                 id = NULL, file = "single.txt",
                 dir.data = dir.data, save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include = TRUE---------------------------------------------
#  head(pcd.single)

## ----echo=FALSE---------------------------------------------------------------
kableExtra::scroll_box(kable_input = kableExtra::kable(head(pcd.single), format = "html"), 
                       width = "100%")

## ----eval = TRUE, warning=FALSE, include=TRUE---------------------------------
tls.resolution = list(point.dist = 6.34, tls.dist = 10)

tree.list.single.tls <- tree.detection.single.scan(data = pcd.single,
                           dbh.min = 4, dbh.max = 200, h.min = 1.3,
                           ncr.threshold = 0.1,
                           tls.resolution = tls.resolution,
                           d.top = NULL,
                           plot.attributes = NULL,
                           breaks = 1.3, stem.section = c(1,5),
                           save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include=TRUE-----------------------------------------------
#  head(tree.list.single.tls)

## ----echo=FALSE---------------------------------------------------------------
kableExtra::scroll_box(kable_input = kableExtra::kable(head(tree.list.single.tls), 
                                                       format = "html"), width = "100%")

## ----eval = TRUE, warning=FALSE, include=TRUE---------------------------------
pcd.multi <- normalize(las = "Galicia_multi_scan.laz", 
                 x.center = 0, y.center = 0, RGB = TRUE,
                 scan.approach = "multi", file = "multi.txt",
                 dir.data = dir.data, save.result = FALSE)

tree.list.multi.tls <- tree.detection.multi.scan(data = pcd.multi[pcd.multi$prob.selec == 1, ],
                          dbh.min = 4, dbh.max = 200, h.min = 1.3,
                          ncr.threshold = 0.1,
                          tls.precision = 0.03,
                          breaks = 1.3, stem.section = c(1,5),
                          d.top = NULL,
                          plot.attributes = NULL,
                          save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include=TRUE-----------------------------------------------
#  head(tree.list.multi.tls)

## ----echo=FALSE---------------------------------------------------------------
kableExtra::scroll_box(kable_input = kableExtra::kable(head(tree.list.multi.tls), 
                                                       format = "html"), width = "100%")

## ----eval = FALSE, include = FALSE--------------------------------------------
#  diameter <- readLAS(paste(dir.data, "diameters.laz", sep = "/"))
#  lidR::plot(multiLAS, color = "RGB", add = plot(diameter, color = "Intensity"))

## ----eval = FALSE, include= TRUE----------------------------------------------
#  tls.resolution = list(point.dist = 7.67, tls.dist = 10)
#  
#  tree.list.tls <- tree.detection.several.plots(las.list = c("Rioja_1.laz", "Rioja_2.laz"),
#                        id = NULL, file = NULL,
#                        scan.approach = "multi",
#                        x.center = 0, y.center = 0,
#                        max.dist = 10, min.height = 0.1, max.height = NULL,
#                        algorithm.dtm = "knnidw", res.dtm = 0.2,
#                        csf = list(cloth_resolution = 0.5),
#  
#                        dbh.min = 7, dbh.max = 200, h.min = 1.3,
#                        tls.resolution = tls.resolution,
#                        ncr.threshold = 0.05,
#                        breaks = 1.3,
#                        stem.section = c(0.5, 4),
#                        d.top = NULL, plot.attributes = NULL,
#                        dir.data = dir.data, save.result = FALSE, dir.result = NULL)

