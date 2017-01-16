#' Generates solution to detects urgency of choices (either choices are need or wants)
#'
#' This function will generate a adjacency table/graph of the choices along with generates coefficients of "need" choice and "want" choice along with the degree of network (which gives weighage to choice options).
#' @param x The adjacency matrix with names for choices in columns. Further each element the matrix can have zeros or ones and diagonals must be zeros.
#' @importFrom igraph graph.adjacency
#' @importFrom igraph degree
#' @importFrom igraph diameter
#' @importFrom igraph average.path.length
#' @importFrom igraph transitivity
#'
#' @return The function will return a choice network graph along with coefficients for need, wants, overall weightage, diameter, average length and trasitivity of choices.
#'
#'
#' @export
nvw <- function(x){
  require(igraph)
  if(nrow(x) != ncol(x)) stop('The number of columns mismatched with number of rows')
  rownames(x) <- colnames(x)
  names(x)
  m <- as.matrix(x)
  diag(m) <- 0
  g <- igraph::graph.adjacency(m, mode="directed", weighted=NULL) # this will create an 'igraph object'
  graph <- plot(g)
  need <- colSums(m)
  want <- rowSums(m)
  degree <- igraph::degree(g)
  diameter <- igraph::diameter(g)
  avl <- igraph::average.path.length(g)
  co <- igraph::transitivity(g)
  val <- list(m, g, need, want, graph, degree, diameter, avl, co)
  names(val) <- c('mat', 'adj', 'need', 'want', 'graph', 'degree', 'diameter', 'avg_length', 'transitivity')
  return(val)

}
