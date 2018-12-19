---
nav_exclude: true
---


PDF Tools
============

PDF's are the bane of a data journalist's existence. They come in all kinds of unfriendly formats. This list of tools is just for those PDFs you want to turn into a data table of some kind, not ones that you just need to search as documents.

#Searchable tables
Some PDFs were created from an Access or Excel printout, and have within them the original text. Others have been effectively scanned and are just images. You can tell the difference by trying to select some text. If you can select text then you have the first step done.

The problem is that PDFs are designed to preserve the format on the page, and aren't data files. They're like printed reports. Sometimes copying and pasting leaves you with unintelligible line breaks and smushed-together cells. You'll usually have to use some kind of tool to deal with this.

The key to trying to convert PDFs is to try every tool you can afford. You'll never know which one works.

## Free tools
* [CometDocs](http://www.cometdocs.com) is a free service that lets you upload your pdf and will return to you an XL file in email. Your IRE membership gives you a paid version for free, which lets you keep all of your pdf's on their site and puts you in the front of the line.
* [Tabula](http://tabula.nerdpower.org/), a new alpha-level project from ProPublica and the Mozilla fellows (and also Jeremy Merrill now at the NYT). It lets you show the program where a table is, and it does a little more sophisticated work to figure out where the cells are. It's a little better with PDF's with lines between rows than CometDocs.
* [xpdf](http://www.foolabs.com/xpdf/) is an old but reliable command line tool that still works remarkably well. It's often best for very fixed-width and consistent pdfs. It's a bit of a pain to install on Unix-based (including Mac) systems, but once you have it it's easy. See [this tutorial](http://www.ire.org/resource-center/tipsheets/3440/) from IRE to use it. You'll have to log into IRE to get it.

There are also PDF plug-ins to Ruby and Python, which can sometimes work just fine.

None of these tools will convert images to words -- for that, you may need to pay some money.

##When free isn't good enough
Most of the pay products have two levels: one if you don't need "OCR", or Optical Character Recognition, for scanned documents; another if you do. If you're going to pay, you might as well get the OCR -- you'll need it someday.

In order of difficulty and cost:

*[Able2Extract](http://www.investintech.com/order_main.htm): $99.95 for non-OCR/ $129.95 for OCR. Intuitive and reasonably accurate. It has some annoyances, but saving as a text file often overcomes them (rather than going directly to Excel).

*[ABBYY FineReader](http://finereader.abbyy.com/) Also $99.99 for personal use. Rob had a great tutorial on this. In terms of speed, ease of use and accuracy, it's probably the best investment. It will also work very well on documents that have been scanned to turn them into searchable PDFs.

*[OmniPage](http://www.nuance.com/for-individuals/by-product/omnipage/index.htm), $149.99 for individuals. This one is just slightly more powerful, but I've had better luck with it over time. The constant upgrades
are really a pain.

*[Cogniview](http://www.cogniview.com/) has PDF2XL, which has been a treat for very difficult pdfs. It has a hard learning curve and is only really useful on tables, unlike OmniPage and ABBYY. ($129.97).

Some of these come for both Mac and Windows, others just for Windows.
