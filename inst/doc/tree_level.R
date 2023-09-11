## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----include=FALSE------------------------------------------------------------
dir.data <- getwd()
download.file("https://www.dropbox.com/s/17yl25pbrapat52/PinusRadiata.laz?dl=1",
              destfile = file.path(dir.data, "PinusRadiata.laz"),
              mode = "wb")
download.file("https://www.dropbox.com/scl/fi/es5pfj87wj0g6y8414dpo/PiceaAbies.laz?rlkey=ayt21mbndc6i6fyiz2e7z6oap&dl=1",
              destfile = file.path(dir.data, "PiceaAbies.laz"),
              mode = "wb")
library(FORTLS)

## ----eval = FALSE, include = TRUE---------------------------------------------
#  singleLAS <- lidR::readLAS(paste(dir.data, "PinusRadiata.laz", sep = "/"))
#  lidR::plot(singleLAS, color = "RGB")

## ----eval = TRUE, include = TRUE----------------------------------------------
pcd.single <- normalize(las = "PinusRadiata.laz", 
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

## ----eval = FALSE, warning=FALSE, include=TRUE--------------------------------
#  tls.resolution = list(point.dist = 6.34, tls.dist = 10)
#  
#  tree.list.single.tls <- tree.detection.single.scan(data = pcd.single,
#                             dbh.min = 4, dbh.max = 200, h.min = 1.3,
#                             ncr.threshold = 0.1,
#                             tls.resolution = tls.resolution,
#                             d.top = NULL,
#                             plot.attributes = NULL,
#                             breaks = 1.3, stem.range = NULL, stem.section = c(1,5),
#                             save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include=TRUE-----------------------------------------------
#  head(tree.list.single.tls)

## ----echo=FALSE---------------------------------------------------------------
tree.list.single.tls <- read.csv(paste(dir.data, "tree.list.single.tls.csv", sep = "/"))
kableExtra::scroll_box(kable_input = kableExtra::kable(head(tree.list.single.tls), 
                                                       format = "html"), width = "100%")

## ----eval = FALSE, warning=FALSE, include=TRUE--------------------------------
#  pcd.multi <- normalize(las = "PiceaAbies.laz",
#                   x.center = 0, y.center = 0,
#                   scan.approach = "multi", file = "multi.txt",
#                   dir.data = dir.data, save.result = FALSE)
#  
#  tree.list.multi.tls <- tree.detection.multi.scan(data = pcd.multi[pcd.multi$prob.selec == 1, ],
#                            dbh.min = 4, dbh.max = 200, h.min = 1.3,
#                            slice = 0.15,
#                            ncr.threshold = 0.1,
#                            tls.precision = 0.05,
#                            breaks = NULL, stem.section = c(1,5),
#                            d.top = NULL,
#                            plot.attributes = NULL,
#                            save.result = FALSE, dir.result = NULL)

## ----eval = FALSE, include=TRUE-----------------------------------------------
#  head(tree.list.multi.tls)

## ----echo=FALSE---------------------------------------------------------------
tree.list.multi.tls <- read.csv(paste(dir.data, "tree.list.multi.tls.csv", sep = "/"))
kableExtra::scroll_box(kable_input = kableExtra::kable(head(tree.list.multi.tls), 
                                                       format = "html"), width = "100%")

## ----eval = FALSE, include = FALSE--------------------------------------------
#  diameter <- readLAS(paste(dir.data, "diameters.laz", sep = "/"))
#  lidR::plot(singleLAS, color = "RGB", add = plot(diameter, color = "Intensity"))

## ----eval = FALSE, include= TRUE----------------------------------------------
#  tls.resolution = list(point.dist = 7.67, tls.dist = 10)
#  
#  tree.list.tls <- tree.detection.several.plots(las.list = c("PinusSylvestris1.laz", "PinusSylvestris2.laz"),
#                        id = NULL, file = NULL,
#                        scan.approach = "single",
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

