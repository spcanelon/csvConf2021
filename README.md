[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4743271.svg)](https://doi.org/10.5281/zenodo.4743271) [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]
# CSV Conf 2021 <a href='https://github.com/spcanelon/csvConf2021'><img src='coverImage.png' align="right" height="138.5" alt='Promotional image created by CSVConf featuring the title of the presentation "Revealing Room for Improvement in Accessibility within a Social Media Data Visualization Learning Community." It also shows the conference name (csv,conf,v6) in the top left along with the comma CSV Conf logo, and presenter names on the bottom right'/></a>

<!-- badges: start -->
<!-- badges: end -->

## Revealing Room for Improvement in Accessibility within a Social Media Data Visualization Learning Community

* Silvia Canelón, PhD ([\@spcanelon](https://www.twitter.com/@spcanelon))
* Liz Hare, PhD ([\@DogGeneticsLLC](https://www.twitter.com/@DogGeneticsLLC))

The goal of this talk for [csv,conf,v6](https://csvconf.com/speakers/#silvia-canel%C3%B3n-elizabeth-hare) is to share our findings after scraping the alternative (alt) text from data visualization tweets shared as part of the TidyTuesday online learning community.

* Tuesday, May 4, 2021 at 10:20am EST (2:20pm UTC)
* Recording of the talk (captions available): https://youtu.be/DxLkv2iRdf8

### HTML slide deck

* [Screenreader-friendly version](https://spcanelon.github.io/csvConf2021/slides/indexLH.html)
* [Presentation version](https://spcanelon.github.io/csvConf2021/slides)

### Abstract

We all aim to use data to tell a compelling story, and many of us enjoy sharing how we got there by open-sourcing our code, but we don't always share our story with everyone. Even kind, supportive, and open communities like the #TidyTuesday R learning community on Twitter has a ways to go before the content shared can be accessible to everyone. Lived experiences of blind R users tell us that most data visualizations shared for TidyTuesday are inaccessible to screen reading technology because they lack alternative text (i.e. alt text) descriptions. Our goal was to bring this hidden lack of accessibility to the surface by examining the alternative text accompanying data visualizations shared as part of the TidyTuesday social project. We scraped the alternative text from 6,443 TidyTuesday images posted on Twitter between April 2, 2018 and January 31, 2021. The first image attached to each tweet was considered the primary image and was scraped for alternative text. Manual web inspection revealed the CSS class and HTML element corresponding to the primary image, as well as the attribute containing the alternative text. We used this information and the ROpenSci {RSelenium} package to scrape the alternative text. Our preliminary analysis found that only 2.4% of the images contained a text description entered by the tweet author compared to 84% which were described by default as "Image". This small group of intentional alternative text descriptions had a median word count of 18 (range: 1-170), and a median character count of 83 (range: 8-788). As a reference point, Twitter allows 240 characters in a single tweet and 1,000 characters for image descriptions. This analysis was made possible thanks to a dataset of historical TidyTuesday tweet data collected using the ROpenSci {rtweet} package, and openly available in the [TidyTuesday GitHub repository](https://github.com/rfordatascience/tidytuesday).

### Data & analysis <a href='https://github.com/spcanelon/TidyTuesdayAltText#tidytuesdayalttext-'><img src='https://raw.githubusercontent.com/spcanelon/TidyTuesdayAltText/main/man/figures/ttat_hex.png?token=AL4Z36PWXNE5E73MVZQKXA3ATCZWA' align="right" height="120" alt='Hex logo for the package. White with a thick black border. Inside, the TidyTuesday logo on the top half which are the words TidyTuesday in white against a broad brush stroke of black paint. On the bottom half, the words alt = "text" in black against a white background and within angle brackets to simulate html code.'/></a>

- [TidyTuesdayAltText](https://www.github.com/spcanelon/TidyTuesdayAltText) package 
- [Alt-Text Summary](https://spcanelon.github.io/csvConf2021/R/TidyTuesdayAltTextDescriptive2.html)
- [Analysis Exploring Alt-Text Contents](https://spcanelon.github.io/csvConf2021/R/TidyTuesdayEvaluateText.html)

## Alt text resources

### Data visualization

*	[Writing alt-text for data visualization • Blog post • Amy Cesal](https://medium.com/nightingale/writing-alt-text-for-data-visualization-2a218ef43f81)
* [Writing Alt Text for Data Visualization • YouTube • Amy Cesal • Outlier 2021 Lightning Talk](https://www.youtube.com/watch?v=nBcR95S0F0o)
* [Are your visualizations excluding people? • YouTube • Frank Elavsky, Larene Le Gassick, Sarah Fossheim • Outlier 2021](https://www.youtube.com/watch?v=SWB-KLXN-Ok&list=PLAm5TIX-yz7IkKOUcStM_vl8AD0S9v0co&index=10)
* [Chartability Data Visualization Accessibility Audit Workbook • Frank Elavsky](https://chartability.fizz.studio/)

### Tools for Twitter

* How to add alt-text to tweets: [How to make images accessible for people • Twitter](https://help.twitter.com/en/using-twitter/picture-descriptions)
* Show alt-text for tweets: [Alt or not • Firefox extension](https://addons.mozilla.org/en-US/firefox/addon/alt-or-not/)
* Twitter reminder to add alt-text: [Twitter Required Alt Text • Firefox extension](https://addons.mozilla.org/en-GB/firefox/addon/twitter-required-alt-text/)

### General

* [WGBH Guide Guidelines for describing STEM images](https://www.wgbh.org/foundation/ncam/guidelines/guidelines-for-describing-stem-images)
* [Images Concepts • Images • WAI Web Accessibility Tutorials](https://www.w3.org/WAI/tutorials/images/)
*	[Making Images Accessible • DIAGRAM Center](http://diagramcenter.org/making-images-accessible.html)
*	[Diagram Center Accessible Math Tricks and Tips • DIAGRAM Center](http://diagramcenter.org/accessible-math-tools-tips-and-training.html#training)

---

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
