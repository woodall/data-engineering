## Data Conversion App

Convert raw text data files into a relational database objects.

### Setup

Clone the repo

    https://github.com/woodall/data.git

Create the database

    $ rake db:migrate

_Note, if the above command fails, you might need to prefix your it, and the following command line tasks with `bundle exec`, like so,_

    $ bundle exec rake db:migrate


### Run the tests

Clone the database

    $ rake db:test:clone

Make sure the tests pass by running

    $ rspec spec

### Start the server

Start the server with

    $  rails server

Navigate your browser to

  **localhost:3000**

### Try it out!

Upload text files in the requested format.


<hr>

## About

### Background
Imagine LivingSocial has just acquired a new company.  Unfortunately, the company has never stored their data in a database and instead uses a plain text file.  We need to create a way for the new subsidiary to import their data into a database.  Your task is to create a web interface that accepts file uploads, normalizes the data, and then stores it in a relational database.

Here's what your web-based application must do:

### Requirements
Your app must accept (via a form) a tab delimited file with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name.

Your app must parse the given file, normalize the data, and store the information in a relational database.

After upload, your application should display the total amount gross revenue represented by the uploaded file.

### Assumptions

Columns will always be in the same order.

There will always be data in each column.

There will always be a header line.

### Example file
An example input file named `example_input.tab` is included.

### Non-requirements

Authentication or authorization.

No need to be aesthetically pleasing

## Evaluation
Evaluation is based on the following criteria.

- Did your application fulfill the basic requirements?
- Did you document the method for setting up and running your application?
- Did you follow the instructions for submission?

Additionally, reviewers will attempt to assess your familiarity with standard libraries. Reviewers will attempt to assess your experience with object-oriented programming based on how you've structured your submission.
