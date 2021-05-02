### create factor variable describing alt text based on the four categories
### 1. Customized alt text written by author
### 2, Field contains default text: "Image"
### 3. Scraping error - Tweet is unavailable (deleted or private)
### 4. NA Unavailable due to non-static media

tweets <-
  ### Access data from the four years
  dplyr::bind_rows(
    ttTweets2018,
    ttTweets2019,
    ttTweets2020,
    ttTweets2021) %>%
  dplyr::mutate(
    AltTextCategory = dplyr::case_when(
      AltText == "ScrapingError" ~ "MediaNotAvailable",
      AltText == "Image" ~ "DefaultDescription",
      is.na(AltText) == TRUE ~ "UnavailableNonStatic",
      TRUE ~ "DescriptiveText")) %>%
  dplyr::mutate(
    AltTextCategory = forcats::as_factor(AltTextCategory),
    AltTextCategory = factor(c(
      "DefaultDescription",
      "UnavailableNonStatic",
      "MediaNotAvailable",
      "DescriptiveText"
      ),
      levels = c(
      "DefaultDescription",
      "DescriptiveText",
      "MediaNotAvailable",
      "UnavailableNonStatic"))
  )

length(unique(tweets$TweetId)) #7136 unique tweets

tbl_cross(tweets, row=Year, col=AltTextCategory,
          percent="row")

tweetsCounted <-
  tweets %>%
  mutate(TweetWeek = lubridate::week(TweetDate)) %>%
  count(n = TweetDate)

tweets %>%
  ggplot(
    aes(x = TweetDate)
  ) +
  geom_line(stat='count')


DF %>% group_by(Group) %>%
  arrange(Date) %>%
  mutate(Value = cumsum(X=="OK")) %>%
  ggplot(aes(Date, y=Value, group = Group, col = Group)) + geom_line()


tweetsCounted %>%
  ggplot(
    aes(x = TweetDate, y = n)
  ) +
  geom_line(stat = "sum")
