---
title: Cleaning data with OpenRefine
parent: Special
nav_order: 4
---

(Lecture notes only)

Reporters often acquire data from sources that are collected in haphazard ways, or focus on fields that are filled out voluntarily. Think about all of the ways your name and address could appear on a mailing list, then add to the mix typos and errors, and you have a typical government database.

[OpenRefine](http://openrefine.org/download.html), an open source project that has been supported by Google in the past, was developed to help you work with data that comes in unstructured or poorly structured or standardized ways.  The Open Refine site points to lots of introductory exercises.

Here are two files that are good practice for getting around OpenRefine:

* The same [Phoenix city salaries](https://www.phoenixopendata.com/dataset/0c02bbfd-08d9-41e9-a00c-97848a9f7350/resource/3a5c2950-88e3-4cb4-b436-c78d2a266c75/download/open-data-staff-salaries-as-of-12-31-2018.csv). Just copy and paste that link into OpenRefine (you don't have to download the file).

* A [slice of Arizona liquor license]({{site.baseurl}}/assets/data/csv/az_liquor_license.txt) records, [downloaded from the state](https://www.azliquor.gov/query/query.cfm), slightly cleaned and filtered in R, then saved to a tab-separated file.


## Practice with OpenRefine

* How to start it up - if the browser doesn't open, use localhost:3333 .
* How to load a csv directly from the Web - go over the options in the first import screen.
* Data screen -
    * Defaults to 10 rows - Usually change to 50.
    * Show a text facet.
    * Show converting text to number, and what a numeric facet looks like.
    * Cluster options - show how to quickly see what is in the dataset, and how to change them.
    * Filter with facets.
    * Use regular expressions in filter
    * Create field based on another, then use clustering and filtering to clean it up. Example: We dont know what department they are in, but some occupations would only be in one.


Do some work on liquor licenses on your own if you're interested.

## Clean up Medicare

The file came from here: http://www.health.ny.gov/health_care/managed_care/reports/enrollment/monthly/
Put everything together into [one horrible spreadsheet]({{site.baseurl}}/assets/docs/openrefine/all-longterm-managed-care.xlsx).
Walk through how to think about it and clean it up. [Walkthrough is here](https://cronkitedata.github.io/cronkite-docs/assets/docs/openrefine/openrefine).

* Record vs. row.
* Remove UPSTATE TOTALS (I learned this the hard way - just had to go back and fix it the first time through.)
* Show as rows, with 6636.
* Regex : Extract month and year. NYS or NYS, or NYS JANUARY, or NYS JANUARY with no comma - use regex in filter.
* Once you know you have them - add column based on this column.
* Then fill down on that one.
* Now value.match(
              /.\*NYS[, ](.*\d{4}.*/)[0])

* Now value.replace spaces and commas with one space.
* now value.toDate('MMM yyyy')
* Show how to go backwards.

Then go through the rest of the tutorial.
