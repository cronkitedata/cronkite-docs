## Visualization as a reporting tool

The [slides](reportingviz.pptx?raw=true) and a [tip sheet](viztips.pdf?raw=true) are included in this folder. 

### Tools for data visualization###

The R programming language's [ggplot2](http://ggplot2.org/) is probably used most frequently by reporters to get quick visualizations that won't be published. It's each to make some of the most common charts, graphs and maps with default options that take advantage of a century of research into visual perception. It has a recent add-in called [Shiny](http://shiny.rstudio.com/) to make interactive visualizations, something it was missing in the past.

[D3](http://d3js.org/) is used by reporters who already know Javascript (not many). It's the language that has pretty much replaced Flash and Activescript.

Most reporters, as opposed to those who produce visualizations for publication, use simpler tools. Keep in mind that the free, online versions of some of these tools will make your data public by default.

* Excel's implementation of [sparklines](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=0001OR). They are an amazingly simple and effective way to see trends quickly. 

* [Tableau Public](http://www.tableausoftware.com/public/) is a small-scale version of the expensive Tableau software used in business and industry. The more powerful desktop version is free for IRE members, but about $2,000 a seat if you pay. 

* [ManyEyes](http://www-958.ibm.com/software/analytics/manyeyes/) has a similar public approach, but is a little easier to use for very small scale visualizations.
  
* [Google Fusion Tables](https://support.google.com/fusiontables/answer/184641?hl=en) have the advantage of geocoding (putting addresses on a map when you don't know the coordinates.) It's a little confusing, but there is a big user base and a lot of help. 
 
* [Timeflow](https://github.com/FlowingMedia/TimeFlow/wiki), an alpha level product created at Duke University for exploratory investigative timelines and calendars. It will run off of a hard drive, but your security  settings may still block it. Most other timeline programs are for publication rather than exploration (at least the ones we can afford)

* [Simile Exhibit](http://www.simile-widgets.org/exhibit/), a project out of MIT that attempts to make it easy to make timelines, Google maps and small searchable datasets in one place. It's good for data that won't change a lot, since you have to have a specific data format for it. It's not very actively supported and still feels like an academic project, but it generally works.


### Visualizing text  

* [Voyant Tools](http://voyant-tools.org/) lets you upload text or pdfs and get a high-level view of the contents. [Here's](http://voyeurtools.org/?corpus=1411344109413.2091&stopList=stop.en.taporware.txt) an example using Martin Luther King's "I have a Dream" speech, or [this one] (http://voyeurtools.org/?corpus=1411347124307.8286&stopList=stop.en.taporware.txt) from three Chicago Police Board decisions.

* [ManyEyes](http://www-958.ibm.com/software/analytics/labs/manyeyes/#create) has several visualizations that are just for text. [The same example](http://www-958.ibm.com/software/analytics/labs/manyeyes/#vis=503352)

* [Wordseer](http://wordseer.berkeley.edu/wordseer-3-0-blog/). I haven't tried this yet -- it's just recently available to the general public. But I've seen demos and it looks interesting. 

* Although it's not really visualization, [ClearForest Gnosis](https://addons.mozilla.org/en-US/firefox/addon/clearforest-gnosis/), a plug-in for Mozilla, is helpful for color-coding the entities on your documents. 

There are a lot of other text visualization experiments in the digital humanities, especially history, linguistics and literature graduate programs. Keep an eye on the projects at the [Digital Research Tools](http://dirtdirectory.org/categories/visualization) site, which is constantly updated.


