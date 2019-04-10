---
title: Cleaning data with OpenRefine
parent: Special
nav_order: 4
---

Reporters often acquire data from sources that are collected in haphazard ways, or focus on fields that are filled out voluntarily. Think about all of the ways your name and address could appear on a mailing list, then add to the mix typos and errors, and you have a typical government database.

[OpenRefine](http://openrefine.org/download.html), an open source project that has been supported by Google in the past, was developed to help you work with data that comes in unstructured or poorly structured or standardized ways.  The Open Refine site points to lots of introductory exercises.

This one will just walk you through some of the most common features of OpenRefine. The next one will show you how to take a poorly structured data set and turn it into a database.

We're going to use a tab-separated file that was derived from the Arizona liquor licensing list downloaded from here: https://www.azliquor.gov/query/query.cfm

There were some problems with the file, which were taken care of in an R script, mainly because there were line breaks within variables that OpenRefine couldn't handle. This slice of the data only includes licenses for retailers -- bars, restaurants, stores, hotels and clubs.
