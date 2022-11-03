# README

# Poverty-Line-Server

 ## Table of Content
 - [Description](#description)
 - [Features](#features)
 - [Requirements](#Requirements)
 - [Installations](#installations)
 - [Technology  Used](#technology-Used)
 - [Licence](#licence)
 - [Authors](#Authors)
 ## Description
 
 <p>This Repository Contains the Poverty-Line server API.<br> Consumes data through classifying different users across Sub-Saharan Africa (SSA) inorder to help map out poverty line of different regions. THis aims at helping tackling issues such as poverty eradication,employemnt generation, social integration.
 </p>
 
[Go Back to the top](#Poverty-Line-Server)

## Features
    
    -RESTFUL API endpoints
    - /users  /regions /donations
    -Data Persistence
    -Validations
    -Authorization
## API Documentation

Locally on [API V1 Docs](http://127.0.0.1:3000/api-docs/index.html)


[Go Back to the top](#Poverty-Line-Server)
 ##  Requirements

 In order to use this repo you need to have the following installed:

- OS [either: Windows 10+, Linux or MacOS(running on x86 or arm architecture)]
- Ruby - 3.1.+
- Documentation on the Ruby language can be found here: [Ruby Docs](https://docs.ruby-lang.org/en/3.1/)
 ****
## Installation

To use this repo on your machine requires some simple steps
- Open a terminal / command line interface on your computer
- Clone the repo by using the following:

        git clone git@github.com:ezraa1/poverty_line_server.git

- Be patient as it creates a copy on your local machine for you.
- Change directory to the repo folder:

        cd poverty_line_server

- (Optional) Open it in ``Visual Studio Code``

        code .
- (Alternate Option) Open it in any editor of your choice.

 [Go Back to the top](#Poverty-Line-Server)

# Running the application

Running the application is very straight forward. You can use the following steps to run the app.

- Install required dependencies using bundle

      bundle install
      rails db:migrate db:seed

- Serve the application from the terminal

      rails s
 
### DB Schema DIAGRAM

- [DB_DIAGRAM](https://dbdiagram.io/d/634fbcf2470941019593beee)

### Technology  Used

* Ruby on Rails
* PostgreSQL
* Github 
* Heroku for deployment
* Figma & dbdiagram.io for designs

[Go Back to the top](#Poverty-Line-Server)

## Known Bugs 
* 
* 

## Future updates
* Add more data models
* fetch more data and get more tests from specific localities


## Authors
This project was contributed to by:

Email - 

        * [Bonventure](bonochieng@gmail.com)
        * [Melyn](melynatieno@gmail.com)
        * [Ezra](ezrakipchirchir1034@gmail.com)
        
Github -

        * [Bonventure](https://github.com/Bonveeee)
        * [Ezra](https://github.com/ezraa1)
        * [Melyn](https://github.com/MelynAtieno)

[Go Back to the top](#Poverty-Line-Server)

## MIT License

Copyright (c) [2022] [Poverty-Line-Server] 

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

[Go Back to the top](#Poverty-Line-Server)