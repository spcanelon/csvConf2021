# Import CSV of annotated tweets
# These are tweets with neither "Image" nor "ScrapingError" in the AltText field
AnnotatedSubset <-
  read_csv("data/AltTextSubset_Annotated_Raw.csv")

# Remove some extra variables and reformat others
AnnotatedSubset_v2 <-
  AnnotatedSubset %>%
  select(-Tags, -ImageUrlCopy, -TweetDate) %>%
  mutate(UrlCheck = as_factor(UrlCheck),
         Year = as_factor(Year),
         TweetId = as.character(TweetId)) %>%
  rename("AnnotationNotes" = "Notes") %>%
  distinct()

# Save the unique observations from the AltTextSubset dataset
AltTextSubset <- TidyTuesdayAltText::AltTextSubset %>% distinct()

# Join the AltTextSubset data with the annotated data
AnnotatedSubset_v3 <- left_join(AltTextSubset, AnnotatedSubset_v2)

# Add Week variable and reorder Variables
# Places the most relevant variables on the left of the data frame
AnnotatedSubset_v3 <- AnnotatedSubset_v3 %>%
  mutate(Week = week(TweetDate)) %>%
  arrange(desc(TweetDate)) %>%
  select(TweetId, AltText, TitleText, SubtitleText, OtherText, AnnotationNotes,
         TweetDate, Year, Week, UrlCheck, everything()) %>%
  mutate(TweetUrl = glue::glue("https://twitter.com/anyauthor/status/{TweetId}"))

# Export annotated and formatted dataset as Rds
# Note: cannot export as CSV because the HashtagList field is a list
write_rds(AnnotatedSubset_v3, "data/AltTextSubset_Annotated.rds")
