---
title: "Links to source data for doctoral students"
parent: Workshops
nav_order: 1
---

## Outside data sources for doctoral students


* [Social Explorer](https://socialexplorer.com) is a much easier way to get at Census and related data than going through the Census bureau. It's a subscription service that is available any time you're connected through the school's IP.  It includes block group level 5-year ACS files, decennial census and some historical data other sources.

* [IPUMS](https://www.ipums.org/) is a project out of the University of Minnesota that collects microdata and tries to line it up across years. This means you can compare Census results for some geographic areas over a very long time. Most of the time, you can generate your results online, which takes care of weighting and error testing. In some cases, you'll have to download the data and create summaries yourself. Of particular note is the Time-Use survey and the CPS voter supplement.

* [General Social Survey](http://www.norc.org/Research/Projects/Pages/general-social-survey.aspx) has been taken every other year since 1972, and include a varying set of questions on social issues. It's a difficult site to use, and trend data is shown online only for some predetermined issues. Be careful with the weighting - in two years, they oversampled African-American respondents, which means you have to remove that sample code to make years comparable. Using wtsall as the weight will take care of these problems. ([example using hours of tv](docs/GSS.xlsx))

* [enigma.com](https://public.enigma.com) wants to be the Google for public records, and it has aggressively sought out some datasets from government agencies. (Example: The minority report on Facebook ads allows you to look at the data submitted to Congress during the investigation) One of its great strengths is that it takes care to give you the lineage of all datasets.

* [data.world](https://data.world) wants to be the Facebook of data, where people can share their data and insights. It's all over the place -- no one makes any effort to curate it, or to enforce credibility standards. But if you find something there, you can usually follow it back to the original source.

* [github.com](https://github.com) is where a lot of people stash their data, and by default it's public. A Google search usually doesn't search the datasets held inside Github's world - you normally need to search there. It's also useful to look for news organizations' github pages -- this is where they make data public that they've used in stories. (There are some other places, but this is the most common.)

* Google's new [dataset search](https://toolbox.google.com/datasetsearch) makes it a little easier to find standard datasets, but it is just as hit or miss as the rest of Google.

* [Roper Center for Public Opinion Research](https://ropercenter.cornell.edu/polls/) is an archive of reputable polling results. Most organizations contribute them to Roper after some time has passed, but it's a useful place to see what questions on your topic have been asked before, and by whom. One way to use it is to do a new survey based on the same questions if you need a comparison. Search poll questions using the  [ipoll search](https://ropercenter.cornell.edu/CFIDE/cf/action/ipoll/index.cfm). Their datasets are mainly historical or esoteric.
