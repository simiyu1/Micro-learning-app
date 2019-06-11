[![Coverage Status](https://coveralls.io/repos/github/simiyu1/Micro-learning-app/badge.svg?branch=develop)](https://coveralls.io/github/simiyu1/Micro-learning-app?branch=develop) [![Build Status](https://travis-ci.com/simiyu1/Micro-learning-app.svg?branch=develop)](https://travis-ci.com/simiyu1/Micro-learning-app) [![codecov](https://codecov.io/gh/simiyu1/Micro-learning-app/branch/develop/graph/badge.svg)](https://codecov.io/gh/simiyu1/Micro-learning-app)
# Micro-Learning Application

Micro-Learning app is a responsive web application that sends you one page per day about something you want to learn. Could be: a new Language, a random Wikipedia page, React documentation, a page from the CIA World Factbook, anything! 

# Mock ups

[Link to InVision](https://invis.io/NASFF2N5DSF)

## Login screen             |  Dashboard screen



## Getting Started

These instructions will get you a copy of the project up and running on your local machine for
development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
An IDE (Microsoft's VS Code preffered)
Stable internet (to download the gems)
Git (not required but preferred)
```

### Installing

Follow these steps to get a copy of this project on your machine

#### Step one
 - Install the latest version of VS Code 
 [ Official Visual Studio Code](https://code.visualstudio.com/Download)
 - Instructions when you get stuck downloading it are at
  [ VSCode Docs ](https://code.visualstudio.com/docs)

#### Step two

 - Install Git through homebrew (if it doesn't exist)
    -   Install Homebrew paste the following on terminal
        ```
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor
        ```
    -   Install Git
        ```
        brew install git
        ```

 - Clone the repo into your desired folder
    -  In terminal, move into the desired directory
    -  Pasted the following in terminal to clone this repo
        ```
        git clone https://github.com/simiyu1/Micro-learning-app.git
        ```

 - Open Visual Studio Code and open the folder cloned into your machine.
    - File -> new -> import project

 - Ensure you have stable internet, and install the gems in the Gemfile using the command
          ```
            bundle install
            ```  


## Running the tests

Running the automated tests for this system

### Run all tests

Run the unit tests in terminal using the command

```
    rspec spec/*
```

### Instrumentation tests

Run the Instrumentation tests in terminal using the command

```
.
```

## Deployment

 - in progress


## Built With

* [Ruby] - To make Http Requests
* [Sinatra] - Dependency Management

## Contributing

Not accepting contributions, but feel free to fork and play with it :)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details