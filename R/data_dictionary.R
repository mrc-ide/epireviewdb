#' Create a data dictionary for auto-generating documentation
#' Steps:
#' 1. Read in articles data for all pathogens
#' 2. Create a data.frame with the following columns: table, column_name, column_
#' type, <pathogen>,
#' 3. Populate the columns; <pathogen> is a boolean indicating whether column i
#' is in pathogen j
#' @importFrom stats reshape
#' @noRd
data_dictionary <- function() {
  ## Assume that objects are named consistently
  all_data <- utils::data(package = "epireviewdb")$results[, "Item"]
  all_data <- all_data[!all_data %in% "params_short_names"]
  ## Get the column name and column type together, in case we changed the
  ## type between versions
  out <- lapply(all_data, FUN = function(db) {
    tmp <- strsplit(db, "_")
    db <- get(db, envir = asNamespace("epireviewdb"))
    x <- sapply(db, typeof)
    column_names <- names(x)
    column_types <- unname(x)
    data.frame(
      pathogen = tmp[[1]][[1]], tablename = tmp[[1]][[2]],
      column_name = column_names, column_type = column_types)
  })
  out <- do.call(what = "rbind", args = out)
  ## Since pathogen is a column in the table, we can use it to spread the table
  out$value <- "Yes"
  out <- reshape(
    out, idvar = c("tablename", "column_name", "column_type"),
    timevar = "pathogen", direction = "wide"
  )
  out[is.na(out)] <- "No"
  colnames(out) <- gsub("value\\.", "", colnames(out))

  out 
}

#' Helper to annotate data dictionary with a description, for variables where
#' our names might not be self-explanatory.
#' The descriptions are hard-coded here, you auto-generate the dictionary first
#' and then run this function. It will join the descriptions to the dictionary.
#' as this is an internal function, no checks are added and if used incorrectly
#' it will fail ungracefully.
#' @return A data.frame with the same structure as the data dictionary, but with
#' descriptions added.
#' @noRd
#' 
data_description <- function(data_dictionary) {
  ## Pathogen leads, please edit this function to add descriptions for
  ## variables specific to your pathogen. We are choosing not to tie a description 
  ## to a pathogen because (1) most columns are common across pathogens and 
  ## (2) data dictionary has been organised as a wide data.frame.
  ## Be careful not to use commas inside the description, as commas are used to
  ## separate the columns in the dictionary.
  params_description <- data.frame(
    tablename = c("parameter"),
    column_name = c("distribution_par1_type",
                    "method_disaggregated",
                    "method_disaggregated_by",
                    "method_disaggregated_only"),
    description = c(
      ## Description for distribution_par1_type
      "For parameters extracted as distributions the type of the first parameter
  Valid values are shape/scale/mean/standard deviation/CV/Variance/Meanlog/sdlog
  Note that if a distribution has more than two parameters only the first two are
  extracted",
      ## Description for method_disaggregated
  "Does the study report disaggregated parameter estimates",
  ## Description for method_disaggregated_by
  "Factor by which estimates have been disaggeragted",
  ## Description for method_disaggregated_only
  "Does the study report *only* disaggregated parameter estimates? The extracted
  values would then most likely represent a range across the disaggregated estimates"
  )
)
  ## Most of the weird column names are in the parameter table, but if you find
  ## any that need explaining in articles/outbreaks/models, please add them
  ## here.
  articles_description <- data.frame(
    tablename = "articles",
    column_name = c("covidence_id"),
    description = c("ID used in the covidence system. This is used as a primary key")
  )
  
  outbreaks_description <- data.frame(
    tablename = "outbreaks",
    column_name = c("pre_outbreak"),
    description = c("Pre outbreak baseline. Valid values are: Disease-free baseline;
  Endemic equilibrium; Unspecified")
  )

  models_description <- data.frame(
    tablename = "models",
    column_name = c("stoch_deter"),
    description = c("Whether the model is stochastic or deterministic")
  )
  description_df <- rbind(
    params_description, articles_description,
    outbreaks_description, models_description
  )
  ## Replace newlines with a space in the description field as will export
  ## to a CSV and newlines will break the format
  description_df$description <- gsub(
    pattern = "\n", replacement = "", x = description_df$description
  )
  out <- merge(
    data_dictionary, description_df, by = c("tablename", "column_name")
  )

  out
  
}
