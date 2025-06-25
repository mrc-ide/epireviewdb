#' Data on the articles identified and included in the systematic review of
#' articles related to Ebola virus disease.
#'
#' @description
#' This data set provides the details of all extracted articles included in
#' the systematic review for Ebola virus disease (EVD).
#'
#' @name ebola_articles
#' @docType data
#' @inherit marburg_articles format
#' @source Nash, Rebecca K., Bhatia Sangeeta, Morgenstern Christian, Doohan 
#' Patrick, Jorgensen David, McCain Kelly, McCabe Ruth et al. "Ebola virus disease
#' mathematical models and epidemiological parameters:a systematic review."
#' The Lancet Infectious Diseases 24, no. 12 (2024): e762-e773.
#' https://doi.org/10.1016/S1473-3099(24)00374-8
"ebola_articles"

#' Transmission models extracted in the systematic review of articles related
#' to Ebola virus disease.
#'
#' @description
#' This data set provides all extracted data for mathematical models applied to
#' Ebola virus disease (EVD).
#'
#' @name ebola_models
#' @docType data
#' @inherit marburg_models format 
#' @inherit ebola_articles source
"ebola_models"

#' Parameters extracted in the systematic review of articles
#' related to Ebola virus disease.
#'
#' @description
#' This data set provides all extracted parameters for Ebola virus disease
#' (EVD).
#'
#' @name ebola_params
#' @docType data
#' @inherit marburg_params format
#' @inherit ebola_articles source
"ebola_params"

