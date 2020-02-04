
#' Return the categories from the API
#'
#' @return Vector of comment categories
#' @examples
#' get_catgories()

get_categories <- function(){

  categories <- jsonlite::fromJSON("http://quotes.rest/qod/categories.json")

  return(names(categories$contents$categories))
}

#' Return a quote
#'
#' @param category One of the quote categories as a string
#' @return Quote as text
#' @examples
#' get_quote()
#' get_quote("funny")

get_quote <- function(category = NULL){

  if(is.null(category)){

    quote <- jsonlite::fromJSON("http://quotes.rest/qod.json")
  } else {

    quote <- jsonlite::fromJSON("http://quotes.rest/qod.json?category=inspire")
  }

  return(quote$contents$quotes$quote)
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Welcome to quotr!")
  packageStartupMessage("Your source of quotes from the interwebs")
}
