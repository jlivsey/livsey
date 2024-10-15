# line chart by datetime
df %>% 
  # make datetime: force unique year
  mutate(datetime = lubridate::make_datetime(2020, month, day, hour, minute, second)) %>% 
  
  ggplot() +
  geom_line(aes(x = datetime, y = T42, colour = factor(year))) +
  scale_x_datetime(breaks = lubridate::make_datetime(2020,1:12), labels = month.abb) +
  labs(title = "Temperature by Datetime", colour = "Year")


df %>% 
  
  # average by year-month
  group_by(year, month) %>% 
  summarise(T42 = mean(T42, na.rm = TRUE), .groups = "drop") %>% 
  
  ggplot() +
  geom_line(aes(x = month, y = T42, colour = factor(year))) +
  scale_x_continuous(breaks = 1:12, labels = month.abb, minor_breaks = NULL) +
  labs(title = "Average Temperature by Month", colour = "Year")


xd = AirPassengers - ts_trend(AirPassengers)
xd |>
  ts_df() |>
  mutate(year = lubridate::year(time)) |> 
  mutate(month = lubridate::month(time)) |>
  ggplot() + 
  geom_line(aes(x = month, y = value, colour = factor(year)))
