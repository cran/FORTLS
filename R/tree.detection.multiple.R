
tree.detection.multiple <- function(files,

                        normalize.arguments =

                        list(max.dist = NULL, min.height = NULL, max.height = NULL),

                        tree.detection.arguments =

                        list(dbh.min = 7.5, dbh.max = 200,

                             ncr.threshold = 0.1,

                             tls.resolution = list(),

                             breaks = c(1.0, 1.3, 1.6),

                             plot.attributes = NULL),

                        dir.data = NULL, save.result = TRUE, dir.result = NULL){

  if(is.null(tree.detection.arguments$ncr.threshold)){

    .ncr.threshold <- 0.1

  } else {

    .ncr.threshold <- tree.detection.arguments$ncr.threshold

  }


  for (i in (1:length(files))) {

  message("Computing plot: ", i)

  message("Normalizing")

  .data <- normalize(las = files[[i]],

                     max.dist = normalize.arguments$max.dist,

                     min.height = normalize.arguments$min.height,

                     max.height = normalize.arguments$max.height,

                     id = i,

                     dir.data = dir.data, save.result = save.result, dir.result = dir.result)

  message("Detecting trees")

  if(i < 2){

  .tree.list.tls <- tree.detection(data = .data,

                                   dbh.min = tree.detection.arguments$dbh.min,

                                   dbh.max = tree.detection.arguments$dbh.max,

                                   breaks = tree.detection.arguments$breaks,

                                   ncr.threshold = .ncr.threshold,

                                   tls.resolution = tree.detection.arguments$tls.resolution,

                                   plot.attributes = tree.detection.arguments$plot.attributes,

                                   dir.result = dir.result, save.result = save.result)

  } else {

  .tree.list.tls.2 <- tree.detection(data = .data,

                                     dbh.min = tree.detection.arguments$dbh.min,

                                     dbh.max = tree.detection.arguments$dbh.max,

                                     breaks = tree.detection.arguments$breaks,

                                     ncr.threshold = .ncr.threshold,

                                     tls.resolution = tree.detection.arguments$tls.resolution,

                                     plot.attributes = tree.detection.arguments$plot.attributes,

                                     dir.result = dir.result, save.result = save.result)

  .tree.list.tls <- rbind(.tree.list.tls, .tree.list.tls.2)

  }

  }

  utils::write.csv(.tree.list.tls,
                   file = file.path(dir.result, "tree.list.tls.csv"),
                   row.names = FALSE)

  #####
  return(.tree.list.tls)

}