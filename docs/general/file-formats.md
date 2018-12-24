---
nav_order: 2
title: "File formats"
parent: General resources
---

# Understanding file formats
{: .no_toc}

1. TOC
{: toc}

Data doesn't always show up in a simple Excel spreadsheet or on a Google sheet. There are about a dozen common forms that you'll find data.   

File types refer to two different things. At its core, data could be:
* **Text** - the (nearly) universally recognized format that can be opened and managed in any software. There are different encodings, but usually you'll find them labeled as UTF-8 or ASCII. Don't worry about it for now.
* **Binary** - machine-readable but encoded in computer-ese, often in proprietary form. Images and sound are always binary, but so are Excel and PDF files.

Both of these types, at their most basic level, are transmitted using bits -- a series of 0s and 1s -- but text file bits represent characters and binary file bits represent some other kind of data, either proprietary or non-character.

The other kind of file specification tells you how it is organized -- in rectangular table structure, or in some other form that looks more like documents?

Most file structures are denoted by their file extension, or the part that comes after the period. In both Macs and Windows, you may not see those extensions by default. Make sure you see the extensions on a Mac by opening a Finder window and choosing "Preferences." Make sure the box that says "Show all filename extensions" is *checked*:

![]({{site.baseurl}}/assets/images/filetypes-finder-preferences.png) &nbsp;&nbsp; ![]({{site.baseurl}}/assets/images/filetypes-finder.png)

In Windows, use the shortcut for All Settings in the bottom right, then search for File Extensions. A window will pop up and make sure that "Hide extensions for known file types" is *unchecked*.

<img src="{{site.baseurl}}/assets/images/filetypes-windows-exensions.png" style="width:500px;">

## Text-based formats

### CSV, TSV and other delimited data files

Tabular text, the simplest data to read into any program, can come in several structures. The most common that you'll see is called CSV, or comma-separated values. Your computer probably thinks that a CSV file is supposed to be opened in Excel or, on a Mac, in the built-in Numbers program.

A CSV file suggests that a program wishing to use the data table should use commas to separate the columns, or fields. Usually, the data is enclosed by double quotes when it's possible to have a comma within the field. The first row usually shows the headings in the same form:

      name, position, start_date, age_at_start_date
      "Trump, Donald", President, 2017-01-20, 70
      "Obama, Barack", President, 2009-01-20, 47

If you see a file like this on the Web, you can open it in your browser and safely save it with a .csv extension so that other programs recognize it, but it's not necessary. You can use it no matter what it's called.

Some people use TSV instead of CSV, replacing the comma with a TAB key. The reason is that it's less likely you'll need to use the quotes, which then reduces some confusion when your data could include quotes. They are much less likely to include TABS.

#### Benefits

CSV and its cousins are the international language of data. They work with every open source product and every piece of brand-name software.

#### Traps

Excel and Google sheets quite annoyingly like to think they know what's in your data, and don't let you specify the way the fields are read. This means that if it sees a number, it will treat it as a number even if it's a Zip Code. It will also turn fields that look like dates into dates, even when they shouldn't. This comes up frequently in two places. In anything related to schools that list the grades that school includes, you'll often see '9-12' turned into September 12th or September 2012. In some cities, addresses with dashes also get corrupted, turning 12-21 into December 12th. (This is very frequent in Queens, NY)
These are very specific problems, but they are impossible to fix if you lose the original CSV file.

You can usually just change the extension from .csv to .txt and then you'll be allowed to specify what you want the program to do.

The other trap is harder to deal with and is treated differently in each program -- that's the problem of unescaped quotes. An unescaped quote would look something like this:

         Donald "You're fired!" Trump, president, ...

In this case, programs won't know what to do. Some, like Python, try to be smart -- it works fine if there's o comma directly after the internal quote. Others completely fail. Even worse, different programs expect different "escapes" for internal quotes. In MySQL and some other programs, a backslash tells the program to ignore the upcoming quote. Microsoft products usually want two consecutive ones:

         Donald \"You're fired!\" Trump
         Donald ""You're fired!"" Trump

This is a common problem when someone has exported the data into a text file from some proprietary format like Excel.

### Fixed-width text

This is another form of a universal file format that can be read by anyone, except it splits the fields at specific locations within a row rather than using specific characters. These are a little harder to read, but are common when you get data produced by old computers in government agencies.  The bigger disadvantage is that every field has to be the same size. If someone has a long name or title, for example, it will be chopped off in this format.

          Trump, Donald   |president     |2017-01-20
          Obama, Barack   |president     |2009-01-20
          Biden, Joe      |vice president|2009-01-20
          Washington, Geor|president     |1779-04-30


### XML and JSON

XML (eXtensible Markup Language) and JSON (Javascript Object Notation) are two other universal ways to share plain text data, but they work in a very different way from the tabular information we see. In both cases, they define a structure and can have multiple pieces of information within a record. They are both tagged, in that each field is named whenever it's used. At its simplest, XML looks a lot like HTML (below), except it uses field names and characteristics to do its work:

    <employees>
        <employee sex="M">
            <firstName>John</firstName> <lastName>Doe</lastName>
        </employee>
        <employee sex="F">
            <firstName>Anna</firstName> <lastName>Smith</lastName>
        </employee>
        <employee sex="">
            <firstName>Peter</firstName> <lastName>Jones</lastName>
        </employee>
    </employees>ß


At one time, XML was the official format required by federal agencies for data transfer, so there are a lot of government-generated XML files.

JSON also defines the structure of a dataset by using the names of the fields, but it's stored in a somewhat more compact structure:

      {"employees":[
          { "firstName":"John", "lastName":"Doe" },
          { "firstName":"Anna", "lastName":"Smith" },
          { "firstName":"Peter", "lastName":"Jones" }
      ]}

#### Benefits
No one has to guess what anything means in these tagged structures. They can include anything you want, including full documents within one field. Once a computer program can read one of these formats, there are very few ways they can go wrong.

Most computer languages such as R or Python have standard methods of reading these files, making them relatively easy to work with. Don't curse these formats. They're your friends.

#### Traps

They're often NOT properly created, leading to frustrating "malformed" errors in programs that can read them. Complicated structures -- ones with nested pieces of information, such as a list of nicknames for each of these employees -- and very large files are almost impossible to open in software without reading it through a program first.


### HTML

At its core, HTML is a structured document containing text. Images, sound, videos and other files are linked to them; the formatting you see is done through text instructions. That doesn't mean it's easy to work with as a data source. You'll have to *parse* the document to get its pieces out.

#### Traps

Even when you do get the text out, there are often weird entities that are used for things like accents and other characters. For example, instead of a dash, "--", you'll see &mdash; or instead of an "&", you see "&amp;". This is particularly annoying in lists of names with accents and other non-standard characters.

### SQL dumps

A SQL dump is plain text or binary information that is designed to be read back into a relational database program like MySQL, SQLite or PostGreSQL. While not strictly text, it is considered an open format. (SQL databases can store more than text, including images or sound, but it's stored in a standard way.) Just know that if you need to ask for data, a SQL dump is a very easy way to work with a large database, and is usually easy for a government agency to produce.

## Non-text files

### Image, sound and video

There are two kinds of binary files. The first is a set of files that are standard across all operating systems and used to convey images, sound and video. These are .jpg, .png, .mp4, .mp3, etc. You can't read them with a text file, but almost any program that processes that kind of file will open and save them. You can read them into computer programs and work with them bit-by-bit.

For example, many machine learning algorithms are used to identify pictures that are the same. They look for codes that tell them what each pixel of the screen shows. Each pixel can be one of about a million different colors.

We won't be dealing with these much, but it's worth it for you to know that you can do analysis of sound, video and image just the same way  you can with tabular data.

### Vector images

These files are often used to transfer images made with Adobe Illustrator or in mapping programs. Rather than put each pixel in the file, each object -- a dot, line, or polygon -- is defined by a giant mathematical formula. It's more efficient than working with pixels, and it allows the objects to contain additional information. Shrinking and enlarging them doesn't change the file size or the quality.

## Proprietary files

### Excel, Access and their cousins

These are files the files created by software that contain special instructions in computer code that are intended to be read by the originating programs. Many of the formats you'll see originated with Microsoft: .xlsx, .accdb, .docx and .pptx. In fact, Google docs downloads, by default, are converted into these Microsoft formats. They are much more susceptible to viruses and other malware, but they can contain a lot more information.

They can be either text or binary. In fact, Microsoft Excel and Word documents are now text files -- very, very, complicated text files that you wouldn't want to try to decipher on your own.

### PDF

I've saved PDF because it's the bane of most data journalists' existence. PDF files were designed to present information exactly as the person who created it wanted. It's really a report, not a dataset. But many government agencies now try to pawn off PDFs as data. There are all kinds of issues with PDFs, but for now just leave it this way: You don't want them.
