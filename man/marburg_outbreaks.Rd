% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marburg_data.R
\docType{data}
\name{marburg_outbreaks}
\alias{marburg_outbreaks}
\title{Data on the outbreaks identified in the systematic review of articles
related to Marburg virus disease.}
\format{
data.frame with the following fields:
\itemize{
\item outbreak_id = ID variable for the outbreak.
\item article_id = ID variable for the article the outbreak data came from.
\item outbreak_start_day = Day that the outbreak started (numeric - DD).
\item outbreak_start_month = Month that the outbreak started (three letter
abbreviation e.g. "Aug").
\item outbreak_start_year = Year that the outbreak started (numeric - YYYY).
\item outbreak_end_day = Day that the outbreak ended (numeric - DD).
\item outbreak_end_month = Month that the outbreak ended (three letter
abbreviation e.g. "Aug").
\item outbreak_date_year = Year that the outbreak ended (numeric - YYYY).
\item outbreak_duration_months = Outbreak duration in months.
\item outbreak_size = total outbreak size.
\item asymptomatic_transmission = whether asymptomatic transmission occurred,
either TRUE or FALSE.
\item outbreak_country = country in which the outbreak occurred.
\item outbreak_location = location that the outbreak occurred.
\item cases_confirmed = total number of confirmed cases.
\item cases_mode_detection = either diagnosed based on symptoms alone
("Symptoms"), confirmed via a laboratory test such as PCR ("Molecular
(PCR etc)"), "Not specified", or NA.
\item cases_suspected = total number of suspected cases.
\item cases_asymptomatic = total number of asymptomatic cases.
\item deaths = total number of deaths.
\item cases_severe_hospitalised = total number of severe hospitalised cases.
\item covidence_id = article identifier used by the Imperial team.
}
}
\source{
Cuomo-Dannenburg G, McCain K, McCabe R, Unwin HJT, Doohan P, Nash RK,
et al. Marburg Virus Disease outbreaks, mathematical models, and disease
parameters: a systematic review. The Lancet Infectious Diseases, Volume 24, Issue 5, e307 - e317
https://doi.org/10.1016/s1473-3099(23)00515-7
}
\usage{
marburg_outbreaks
}
\description{
This data set provides all extracted data for outbreaks of Marburg virus
disease (MVD).
}
\keyword{datasets}
