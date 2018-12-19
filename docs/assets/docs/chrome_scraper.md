---
nav_exclude: true
---


ire-toronto
===========
Scraping may be the most valuable new skill you'll learn this year. There are several tools out there to help you, with more coming out all the time. But at some point, if you do this enough, you'll find that learning to program a little is a lot easier than trying to wrangle a tool into something it didn't anticipate.

What's scraping, and what can you do with it?
-----

With the simplest of tools:
* Download all of the documents linked off of a page.
* Simple scrape of a table created on one page, like inmates at the [Boone County jail](http://showmeboone.com/sheriff/jailresidents/jailresidents.asp) or salaries of officials in [Ontario's legislature](http://www.fin.gov.on.ca/en/publications/salarydisclosure/pssd/orgs.php?organization=legislative&year=2013)
* Simple scrape of a more complex page, like a page of articles from the IRE website, [Extra Extra](http://www.ire.org/blog/extra-extra/), or Craigslist listings for [housing](http://toronto.en.craigslist.ca/apa/) in Toronto

With some common tools:
* Extract everything from a set of paginated results.
* Dig into detail pages when you have to click on each link on a site to get more.
* Simulate simple searches, like going through each possible date on the White House [public schedule](http://www.whitehouse.gov/schedule/complete/2013-11-04).

What's going to be hard no matter what:
* Security systems that require Javascript and checking of session cookies.
* Search pages that require parameters you can't know in advance
* Popups

Most of these can be finessed with enough programming, but your simple tools probably won't do it.

##Tools

#####Free and easy

* [DownloadThemAll!](https://addons.mozilla.org/en-US/firefox/addon/downthemall/) for Firefox, [Download Master](https://chrome.google.com/webstore/detail/download-master/mcceagdollnkjlogmdckgjakjapmkdjf?hl=en-US) for Chrome.  These will let you capture all of the files linked off a page, filtering for just the ones you want. They are great when an agency has put a whole bunch of PDFs online and you want them all in one folder so you can search them.
* Some people just use Google Docs for scraping simple pages, but I find them limiting and the formulas just don't work that well.
* [Chrome Scraper](https://chrome.google.com/webstore/detail/scraper/mbigbapnjcgaffohmbkdlecaccepngjd?hl=en) extension, for parsing almost anything you can see on a page. Very powerful.

#####Not too expensive and more powerful

* Outwit Hub](http://www.outwit.com/),  US$60 - standalone software or Firefox extension that automates going through multipage results and digging into detail pages.
* [Helium Scraper](http://www.heliumscraper.com/en/index.php?p=home), US$99 for Windows only. More powerful for very complicated pages, but it helps to know a little Javascript if you need to walk through forms or guess addresses.

Each of these have their own odd language, so there's a considerable learning curve. If you're spending a lot of time learning the tool, consider putting your effort instead into learning a programming language like Ruby or Python for scraping.
