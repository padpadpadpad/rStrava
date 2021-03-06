% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_activity_list.R
\name{get_activity_list}
\alias{get_activity_list}
\title{Get an activities list}
\usage{
get_activity_list(stoken, id = NULL, club = FALSE, friends = FALSE)
}
\arguments{
\item{stoken}{A \code{\link[httr]{config}} object created using the \code{\link{strava_oauth}} function}

\item{id}{string for id of the activity or club if \code{club = TRUE}}

\item{club}{logical if you want the activities of a club}

\item{friends}{logical if you want friends' activities of the authenticated user}
}
\value{
A list of activities for further processing or plotting.
}
\description{
Get an activities list of the desired type (club, friends, user)
}
\details{
Requires authentication stoken using the \code{\link{strava_oauth}} function and a user-created API on the strava website.
}
\examples{
\dontrun{
# create authentication token
# requires user created app name, id, and secret from Strava website
stoken <- httr::config(token = strava_oauth(app_name, app_client_id, 
	app_secret, cache = TRUE))

get_activity_list(stoken)
}
}
\concept{
token
}
