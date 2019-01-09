---
title: K pop
parent: Excel practice
grand_parent: Excel
nav_order: 5
---

# How much fun is k-pop?
{: .no_toc}

In 2018, Lisa Travis, a student at the Walter Cronkite School, wanted to know more about her musical passion: k-pop. We worked to get the 11 characteristics of top k-pop stars' biggest hits into a dataset using the Spotify API. Now we can use her data to think about how numbers are useful in operationalizing concepts like "boring", "fast", or "sad".

Anyone with a Spotify account can get access to its API, or Application Programming Interface. We used several R programs to put the data together -- one pass got the most popular artists in Spotify by genre; the next found their top tracks; and the last rounded up the details about those tracks. Most of the metrics run from zero to 1. For example, a valence of 1 means the song is really, really happy. A valence of 0 means it's really, really sad.

[Read this analysis of one person's playlist](https://towardsdatascience.com/is-my-spotify-music-boring-an-analysis-involving-music-data-and-machine-learning-47550ae931de) to learn more about what the different measures are, and how he decided to check if his music was boring. We're going to go through some of the same measures and statistics to see how k-pop does in a similar analysis. (We'll skip the machine learning prediction of whether a song is his or hers.)


1. TOC
{: toc}

## Data and documentation

[kpop_spotify_tracks.tsv]() is a tab-separated text file exported from R containing the k-pop tracks. (There were some duplicates in the original dataset -- I'm not sure how they got there, but they've been eliminated.)

Most elements are defined on the Spotify API [track details documentation](https://developer.spotify.com/documentation/web-api/reference/tracks/get-audio-features/). The tracks were selected from those that can be played by subscribers in the U.S.

Additional fields came from other parts of the Spotify API. They are:

  field | description
  -- | --
  artist_id | Spotify's artist identifier, used to look up tracks
  all_genres | Every genre that is associated with the artist, in a semicolon-delimited list
  popularity | A value between 0 and 100, assigned by Spotify, with 100 being the most popular
  follower_count | The number of Spotify followers for the artist
  track_id | Spotify's track id. The original scrape of the data resulted in some duplicates, often because they were available in several different versions. The most popular version was kept.
  track_name |
  track_popularity | A value between 0 and 100. When a track was listed more than once, the most popular version was kept. Spotify says it's based on an algorithm that takes into account the number of plays and how recent those were. These values are aggregated to come up with artist popularity.
  track_length | in milliseconds

## Import and interview

By using a .tsv file instead of a .csv file, you have more options when you open the dataset. Don't double-click on it. Instead, start up Excel and use File / Open to open it up. That will bring you a diaolog box that asks how you want to deal with it. One of the options is to tell Excel what character set to use. Choose Korean (Mac). If you leave it at the default, all of the Korean characters will turn into mathematical symbols!


Take a few minutes to interview your data. Some possible first steps:

* Convert the data to a table, and format some of the numbers to make them easier to read. (You'll notice some of the numers are showing up in scientific notation, like -5.35E-06. Scientific notation is used for very, very large and very, very small numbers. This means that the number is 5.35 * 10<sup>-6</sup>

* Insert a column and add an ID so you can get back to the original order.

* Play with your filters while studying the documentation of what each column means.

* Get a sense of the variation within each column - are they all the same ? What is the scale (0 to 1, -60 to 0, 0 to 100 or something else?)

* Try sorting by various fields.

## Calculate some summary statistics

It's useful to know how much fields *vary* within themselves. You can calculate various statistics to get a good sense of this:

Measure | Excel formula | Meaning
-|-|-
Mean | =AVERAGE(range) | the simple average of a column of values
Mode | =MODE.x(range) |  the most common value
Standard Deviation | =STDEV.P(range) | A standard measure of variance. Rule of thumb: If it's larger than the mean, the numbers are vey spread out. If it's very small, there is almost no spread. This is a useful shorthand to see how well an average summarizes a group of numbers.
Maximum | =MAX(range) | the highest value
75th percentile | =PERCENTILE.INC(range, .75) | three quarters of the values are at or below this level
Median | =MEDIAN(range) | the middle value, where half are higher and half are lower, or the 50th percentile
25th percentile | =PERCENTILE.INC(range, .25) | one quarter of the values are at or below this level
Minimum | =MIN(range) | the lowest value
* Highest and lowest values

TK - image of the values.

These are typical "descriptive statistics" that help you quickly sum up a set of numbers. Let's take the track popularity field. A histogram shows a typical bell curve in statistics. This shows you the number of songs that fall between 0 and 10 on the popularity scale, between 10 and 20, etc. The standard deviation provides, in numbers, what you see on the chart: that there isn't a lot of variation in the popularity. That makes sense, since we chose the most popular kpop artists.



But when you look at the key variable -- which pitch is used as the basis for the music -- you'll see that kpop doesn't follow a single dominant chord, the way Blues does.
