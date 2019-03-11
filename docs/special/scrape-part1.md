
## The basics

Looking for data on the web can be as simple as good searching. You might find what Rob Gebeloff calls an "JSON miracle". Or you might be able to just change a few words in a window to get just what you want.

Usually, data journalists want to get a database that is being searched within a site. In other words, they are looking for data that is not in Google but is being served up on request when you fill out a form.

### Understanding URL's

Take a simple example. Go to the ASU people-search page at [https://isearch.asu.edu/asu-people/](https://isearch.asu.edu/asu-people/). Click on "Employee", and you'll see that the URL listed in the top of your screen  has changed. After the /asu-people/ part, it has added:

      fq=affiliationsFacet:Employee&q=*:*

What you see the

          xx=something&yy=somethingelse

you know that there is a query going on inside the site. Depending on which product is being used to build the site, it might have a question mark before the data.

Try just changing the \*:\* to the words "journalism cronkite" in the ASU employee search.

Examining a page's URL -- either before or after you click on a link -- is a good way to find out what has to be done to gather more information.

These kind of queries are called GET queries. It means that the query criteria are baked into the URL as a "query string". We're going to look at how this works in Chrome's inspection window. Right-click anywhere on your screen and choose "Inspect" from the menu. You should see something awful like this:

<img src="{{site.baseurl}}/assets/images/31-inspector-chrome.png" width="800">

This window has a LOT of information on it, but for now we just want to look at what's in the query header. Choose the Network tab and then refresh your page (it has to be open for it to record the steps.) Choose the "Doc" section of the network list, and you should see something like this:

![]({{site.baseurl}}/assets/images/31-inspector2.png)

You can see your query turned into a query string, and if you'd changed the page, you'll see a section called &start=..  In this case, it means it's starting at the 10th row. Notice that the Request Method says "GET".

If you search the same site for my name, you should get this URL: [https://isearch.asu.edu/profile/3189494](https://isearch.asu.edu/profile/3189494).  Notice that there is a number at the end This is common: most database programs create unique identifiers for each record, just the way we did in the Excel exercises. That suggests there might be someone with the number 3189493! Indeed, there is:

![]({{site.baseurl}}/assets/images/31-urlchasing.png)

These are just a few of the ways you'll want to pay attention to the URLs that appear when you click on a link. If you get something you like, try taking out the end of the url to see if there's anything there -- you might find a directory or a master page of some kind.

### GET vs. POST

The two common ways to get data from a server is through a "GET" or a "POST" request. One is easy to change in your browser, the other is not.

[TK - How to try changing POST to GET using variables.]

If it's a POST request, it's much harder -- you have to use another program called CURL to make the request, or do it through R or another programming language. We'll look at that next week.

## Looking under the hood

There's all kinds of interesting things buried inside a web page. Sometimes, it has all of the information you need -- it's just hiding some of it. Other times, it has entirely new information that someone is hiding from you.

Consider this March 25, 2015 post on Buzzfeed:  ["Listen to Rihanna's New Single"](http://www.buzzfeed.com/kelleydunlap/rihanna-reveals-new-music-arriving-tomorrow#.cw2x8QWpx) describes how Buzzfeed looked behind Rihanna's website and found a link to a new song that was top secret in the industry and wouldn't be released for another day.

![]({{site.baseurl}}/assets/images/31-bbhm.webp)

This is what happened: The author, trolling through the web page, found a link that contained the phrase "APPROVED-3.256"  Copying and pasting that link into a browser showed the promo for her hit single.

Journalists sometimes do the same thing. Griff Palmer, then of The New York Times, helped Declan Walsh prove that the [same company was behind a ring of fake universities](https://www.nytimes.com/2015/05/18/world/asia/fake-diplomas-real-cash-pakistani-company-axact-reaps-millions-columbiana-barkley.html), identified by [working backwards](https://www.nytimes.com/2015/05/17/world/asia/tracking-axacts-websites.html) to find links to the same images, accreditation bodies and similar telltale signs. He eventually found more than 350 schools with signs of similarities.  

Getting used to reading underneath the slick presentation can reap stories and scoops.

## Overriding page limits

Some websites can be tricked into giving you more at once than you think. One example is the [Maricopa County Sheriff's public mugshot site](https://www.mcso.org/Mugshot), which gives you information on the people who are in the county jail every day.

![]({{site.baseurl}}/assets/images/31-mugshots1.png)

If you hover over the "10 entries" limit and use your inspector, you'll see that the option value of "10" is selected. Try changing the one below that to 1000 instead:

![]({{site.baseurl}}/assets/images/31-mugshots2.png)

When you select it, you should be seeing all of the mugshots for that day.

This doesn't always work, and there are sometimes workarounds. It depends on how the website is created. If it has downloaded all of the information to your computer anyway, and is just hiding some of it, it will work. If it is going back to a server for more records, it usually won't.

## The JSON miracle

Many sites load the data you need into a browser in a form that is easy to convert to a dataset. Let's try looking at McDonalds locations:

![]({{site.baseurl}}/assets/images/31mcdonalds1.png)

When you reload this after inspecting, you can search through the pages that are loading for anything with a question mark in the URL. In this case, we find an entry that looks like this:

![]({{site.baseurl}}/assets/images/31mcdonalds2.png)

Try changing the numbers to a radius of 300 and a number of results to 300:

      https://www.mcdonalds.com/googleapps/GoogleRestaurantLocAction.do?method=searchLocation&latitude=33.4495511&longitude=-112.0789355&radius=300&maxResults=300&country=us&language=en-us&showClosed=&hours24Text=Open%2024%20hr


Now you'll have a json file you can save and read into either R or convert with one of the online converters into an Excel spreadsheet of the McDonalds locations within 300 miles.

## More ways to scrape

You might not get so lucky. You might have to convert the HTML code inside a page into a spreadsheet or database file. We're going to do that by looking at something called XPATH. This is the language used to access the inner structure of a web page.

That structure is kind of like a tree-- there's a trunk, which is the whole page. Then there are a couple of huge portions, like the heading and body of the page. Then within each of those are little branches. XPATH is a way to climb up and scramble across branches to find just what you want in a page.

Here is an [old tutorial](https://github.com/sarahcnyt/data-journalism/blob/master/class4/scraping-chrome.pdf) on XPATH and Chrome Scraper, which we're going to use. None of the sites are the same anymore, so we'll work on new ones.

I use Chrome Scraper, which somehow doesn't show up if you search Chrome extensions for Scraper! Google it instead. [This is the one](https://chrome.google.com/webstore/detail/scraper/mbigbapnjcgaffohmbkdlecaccepngjd?hl=en) you want:

![]({{site.baseurl}}/assets/31-images/scraper.png)

The tutorial has more on exactly how to look at it, but let's jump right in with a page to scrape -- the[Texas Death Row](https://www.tdcj.state.tx.us/death_row/dr_offenders_on_dr.html) list. (Arizona's isn't as scraper friendly, at least at first.)  This is actually a simple list that would import directly into Excel pretty easily. Let's use the scraper instead to start getting used to what's going on under the hood.

Select a couple of rows of data in table, and before you do anything else, look at your inspector. Look at the bottom of the screen, and it will show you the route that had to be taken to get to your selection. it starts with the html tag, goes to body, then a bunch of other tags, and eventually to a "tr" tag.

Now go back to the table, make sure you have a few rows selected, right-click and choose "Scrape similar"

![]({{site.baseurl}}/assets/images/31-scrape-similar.png)

That should bring up a list that looks pretty good -- it has the id number, the name, dob, etc. in nice columns and rows, and an invitation to copy to your clipboard or export to google docs. But let's look at a little of what is going on here, and how it knows what to do.

![]({{site.baseurl}}/assets/images/31-scrape-window.png)

Because this page is so simple, all that the scraper had to do was look for any TR tag (//tr), then it is asking for all of the TD tags below that. In other words, there were no other tables in the page that would confuse it. What if there were? You can use other items in the page to steer XPATH to the right place. For instance, this one could have been:

        //div[@class="overflow">/table/tbody/tr[td]

           or

        //table[1]/tbody/tr[td]

There is one mistake in this table. That is, the Link only shows the words "Offender Information". We want the actual link. The reason is XPATH always assumes you want the text shown on the screen, not the underlying information, if you don't say you want it. Try going into the Link area on left, and make this change:

       \*[2]

       to


       \*[2]/a/@href

This means that you want the \<a href=...> part of the underlying code. The "a" is the tag, and the @href is an attribute of that tag. Don't worry too much about getting all the terminology down. The idea is to look underneath the hood of the page to see how to extract what you want.
