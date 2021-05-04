### create factor variable describing alt text based on the four categories
### 1. Customized alt text written by author
### 2, Field contains default text: "Image"
### 3. Scraping error - Tweet is unavailable (deleted or private)
### 4. NA Unavailable due to non-static media

library(tidyverse)
library(TidyTuesdayAltText)

tweets <-
  ### Access data from the four years
  dplyr::bind_rows(
    TidyTuesdayAltText::ttTweets2018,
    TidyTuesdayAltText::ttTweets2019,
    TidyTuesdayAltText::ttTweets2020,
    TidyTuesdayAltText::ttTweets2021
    )

# counting tweets per week in entire group
tweets <-
  tweets %>%
  dplyr::mutate(
    AltTextCategory = dplyr::case_when(
      AltText == "ScrapingError" ~ "MediaNotAvailable",
      AltText == "Image" ~ "DefaultDescription",
      is.na(AltText) == TRUE ~ "UnavailableNon-Static",
      TRUE ~ "DescriptiveText")) %>%
  dplyr::mutate(
    AltTextCategory = forcats::as_factor(AltTextCategory),
    TweetDate = lubridate::date(TweetDate),
    Week = lubridate::week(TweetDate)
  ) %>%
  dplyr::group_by(Year, Week) %>%
  dplyr::mutate(SumWeek = n()) %>%
  dplyr::ungroup()

write_rds(tweets, "slides/data/tweets.Rds")

# counting tweets per week for only tweets with alt text
tweetsAltText <-
  tweets %>%
  dplyr::filter(AltTextCategory == "DescriptiveText") %>%
  dplyr::group_by(Year, Week) %>%
  dplyr::mutate(SumWeek = n()) %>%
  dplyr::ungroup()

# producing two line graphs within the same plot
plot <-
  tweets %>%
  # defining the x and y axes
  ggplot2::ggplot(
    ggplot2::aes(x = TweetDate, y = SumWeek)) +
  # plotting light line for all tweets together
  ggplot2::geom_line(
    color = "gray", size = 0.5
  ) +
  # plotting dark line for tweets with alt-text
  ggplot2::geom_line(
    data = tweetsAltText,
    color = "#121824", size = 0.75
  ) +
  # stripping the ggplot2 theme down to the bare minimum
  # leaves behind only the line graphs and years along the x axis
  ggplot2::theme_minimal() +
  ggplot2::theme(
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank(),
    plot.title.position = "plot",
    axis.text.x = NULL,
    axis.title.x = NULL,
    axis.text.y = element_blank()
    ) +
  ggplot2::labs(
    x = NULL,
    y = NULL
  )

# saving plot as an R object
saveRDS(plot, "slides/data/plot.Rds")

# annotating the plot with a text and arrow indicator of
# when we announced our talk and shared preliminary findings
# resource: https://ggplot2-book.org/annotations.html#custom-annotations

plotAnnotated <-
  plot +
  # adding annotation text
  annotate(
    geom = "text",
    label = "Preliminary findings\nshared on Twitter\nMarch 25, 2021",
    hjust = "left",
    x = as.Date("2020-03-01"),
    y = 21,
    color = "#121824"
    ) +
  # adding annotation arrow
  annotate(
    geom = "curve",
    x = as.Date('2020-08-01'),
    xend = as.Date("2021-03-10"),
    y = 30,
    yend = 28,
    curvature = -.5,
    arrow = arrow(
      length = unit(2, "mm"),
      type = "closed"),
    color = "#121824"
  )

