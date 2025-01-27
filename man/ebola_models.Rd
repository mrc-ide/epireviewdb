% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ebola_data.R
\docType{data}
\name{ebola_models}
\alias{ebola_models}
\title{Transmission models extracted in the systematic review of articles related
to Ebola virus disease.}
\format{
data.frame with the following fields:
\itemize{
\item model_data_id = ID variable for the model.
\item article_id = ID variable for the article the model came from.
\item model_type = whether the model was compartmental, branching process,
agent/individual based, other, or unspecified.
\item compartmental_type = if the model is compartmental, whether the model is
SIS, SIR, SEIR, or "other".
\item stoch_deter = whether the article specified whether the model was
stochastic, deterministic, or both.
\item theoretical_model = "TRUE" or "FALSE". "TRUE" if the model is not fit to
data.
\item interventions_type = interventions modelled e.g. vaccination, quarantine,
vector control, treatment, contact tracing, hospitals, treatment
centres, safe burials, behaviour changes, other, or unspecified.
\item code_available = whether the code was made available in the article.
\item transmission_route = which transmission route was modelled, e.g. airborne
or close contact, human to human, vector to human, animal to human,
sexual, or unspecified.
\item assumptions = assumptions used in the model e.g. homogenous mixing, latent
period is the same as incubation period, heterogeneity in transmission
rates between groups or over time, age dependent susceptibility, or
unspecified.
\item covidence_id = article identifier used by the Imperial team.
}
}
\source{
Nash, Rebecca K., Bhatia Sangeeta, Morgenstern Christian, Doohan
Patrick, Jorgensen David, McCain Kelly, McCabe Ruth et al. "Ebola virus disease
mathematical models and epidemiological parameters:a systematic review."
The Lancet Infectious Diseases 24, no. 12 (2024): e762-e773.
https://doi.org/10.1016/S1473-3099(24)00374-8
}
\usage{
ebola_models
}
\description{
This data set provides all extracted data for mathematical models applied to
Ebola virus disease (EVD).
}
\keyword{datasets}
