

#' Count time-stamped events
#'
#' @param event_dates vector of class "Date" of events to be counts
#' @param event_type 'year', 'month', 'week', 'day', 'hour' or 'minute'
#' @param event_all_possible (optional) specify all possible dates to count used
#'                           to count event_type's with zero values.
#'
#' @return table of counts for each event by event_type
#' @export
#'
count_time_events <- function(event_dates,
                              event_type =  c('year',
                                              'month',
                                              'week',
                                              'day',
                                              'hour',
                                              'minute'),
                              event_all_possible = NULL
                              ){

    if(class(event_dates) != "Date"){
      stop("event_dates must be vector of class Date")
    }
   '%!in%' <- function(x,y){ # hardcode "not in" function
      !('%in%'(x,y))
    }
    all.event.types <- c('year',
                         'month',
                         'week',
                         'day',
                         'hour',
                         'minute'
                         )
    if(event_type %!in% all.event.types){
      stop("event_type must be year, month, week, day, hour or minute")
    }

    events <- floor_date(event_dates, event_type)

    if(is.null(event_all_possible)){
      first <- sort(events)[1]
      last  <- sort(events)[length(events)]
      event_all_possible <- seq(from = first,
                                to = last,
                                by = event_type)
    }

    tab <- table(factor(events,
                        levels = factor(event_all_possible)))

    return(tab)


} # end function
