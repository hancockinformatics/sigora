genesFromRandomPathways <- function(seed = 1234, GPSrepo, np, ng) {

  set.seed(seed)

  fr <- GPSrepo$origRepo[[3]]
  p1 <- sample(unique(fr[, 1]), np)

  cat("### Randomly selected pathways are:\n")
  cat(paste(as.character(GPSrepo$origRepo[[1]])[p1], "\n"))

  g1 <- sample(unique(fr[fr[, 1] %in% p1, 2]), ng)
  queryList <- as.character(GPSrepo$origRepo[[2]])[g1]

  res <- list()
  res[["genes"]] <- queryList
  res[["selectedPathways"]] <- as.character(GPSrepo$origRepo[[1]])[p1]

  invisible(res)
}
