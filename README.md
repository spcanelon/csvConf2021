# csvConf2021 <a href='https://github.com/spcanelon/csvConf2021'><img src='coverImage.png' align="right" height="138.5" alt='Promotional image created by CSVConf featuring the title of the presentation "Revealing Room for Improvement in Accessibility within a Social Media Data Visualization Learning Community." It also shows the conference name (csv,conf,v6) in the top right next along with the comma CSV Conf logo, and presenter names on the bottom right'/></a>

<!-- badges: start -->
<!-- badges: end -->

## Revealing Room for Improvement in Accessibility within a Social Media Data Visualization Learning Community

- Silvia Canelón, PhD ([\@spcanelon](https://www.twitter.com/@spcanelon))
- Liz Hare, PhD ([\@DogGeneticsLLC](https://www.twitter.com/@DogGeneticsLLC))

The goal of this talk for csv,conf,v6 is to share our findings after scraping the alternative (alt) text from data visualization tweets shared as part of the TidyTuesday online learning community.

### Abstract

We all aim to use data to tell a compelling story, and many of us enjoy sharing how we got there by open-sourcing our code, but we don't always share our story with everyone. Even kind, supportive, and open communities like the #TidyTuesday R learning community on Twitter has a ways to go before the content shared can be accessible to everyone. Lived experiences of blind R users tell us that most data visualizations shared for TidyTuesday are inaccessible to screen reading technology because they lack alternative text (i.e. alt text) descriptions. Our goal was to bring this hidden lack of accessibility to the surface by examining the alternative text accompanying data visualizations shared as part of the TidyTuesday social project. We scraped the alternative text from 6,443 TidyTuesday images posted on Twitter between April 2, 2018 and January 31, 2021. The first image attached to each tweet was considered the primary image and was scraped for alternative text. Manual web inspection revealed the CSS class and HTML element corresponding to the primary image, as well as the attribute containing the alternative text. We used this information and the ROpenSci {RSelenium} package to scrape the alternative text. Our preliminary analysis found that only 2.4% of the images contained a text description entered by the tweet author compared to 84% which were described by default as "Image". This small group of intentional alternative text descriptions had a median word count of 18 (range: 1-170), and a median character count of 83 (range: 8-788). As a reference point, Twitter allows 240 characters in a single tweet and 1,000 characters for image descriptions. This analysis was made possible thanks to a dataset of historical TidyTuesday tweet data collected using the ROpenSci {rtweet} package, and openly available in the [TidyTuesday GitHub repository](https://github.com/rfordatascience/tidytuesday).

## Alt text resources

Data visualization alt-text resouces:

*	[Writing alt-text for data visualization](https://medium.com/nightingale/writing-alt-text-for-data-visualization-2a218ef43f81)

Tools

* Show alt-text for tweets: [Alt or not, Firefox](https://addons.mozilla.org/en-US/firefox/addon/alt-or-not/)
* Twitter reminder to add alt-text: [Twitter Required Alt Text, Firefox](https://addons.mozilla.org/en-GB/firefox/addon/twitter-required-alt-text/)

General alt-text resources:
* [WGBH Guide Guidelines for describing STEM images](https://www.wgbh.org/foundation/ncam/guidelines/guidelines-for-describing-stem-images)
*	[Diagram Center Accessible Images](http://diagramcenter.org/making-images-accessible.html)
*	[Diagram Center Accessible Math Tricks and Tips: Training](http://diagramcenter.org/accessible-math-tools-tips-and-training.html#training)
