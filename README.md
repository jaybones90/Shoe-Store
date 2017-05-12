# Shoe Store

This is a simple web application which allows the user to create new stores and a new shoes, while being able to update and delete all data related to shoes and stores. It has sections to view all stores and all shoes, and the specific shoe page will display the price and brand of the shoe. It also allows the user to add shoes to a specific store and will display back to the user which shoes belong to a specific store.

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.2.2
Bundler

### Installing


Clone the repo to your local machine and then access your terminal to run the command 'rake db:create' which will create the databases and then run the command 'rake db:migrate' to run the migrations that will build the tables in the database. If you'd like to be able to run all the spec tests, then you'll need to run the command 'rake db:test:prepare'.

You can view the webpage live if you run the command 'ruby app.rb' and then copy the localhost path into your web browser. The standard localhost for Sinatra is port 4567.

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6


## Authors

* Jason Ainsworth

## License

MIT License

Copyright (c) Jason Ainsworth 2017

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
