#' Programming friendly names for parameters in the params dataset
#' 
#'
#' @description
#' The list of parameters in our bespoke database used for data extraction are
#' not programming-friendly. For instance, one of the parameters is called
#' "Human delay - Admission to Care/Hospitalisation to Death", which is unwieldy 
#' if you want to filter on this value. The `params_short_names` dataset provides 
#' a mapping of the original names to more compact names. For instance, a compact
#' name for the same parameter is `delay_admission_to_death`. These names are
#' available as a column in the `params` dataset for each pathogen when the
#' datasets are accessed through the companion package
#' [epireview](https://github.com/mrc-ide/epireview). It has been provided here
#' for convenience. Users of `epireviewdb` might might prefer to work with
#' these compact names while operating on the datasets.
#'
#' @name params_short_names
#' @docType data
#' @format A data frame with 107 rows and 2 columns:
#' - parameter_type_short
#' - parameter_type_full
"params_short_names"
