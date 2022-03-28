## Introduction

You are a person. You have many cars. Those cars break, a lot. You like to buy cars, and sell them, but you also want to make sure you aren't losing any money. This Ruby application will help keep track of all your cars, all the repairs for each of your cars, how much money you spent on said repairs, and more. 

## Getting Started

To start the server and be able to create a front end of it, you must open your command promt, navigate to the peoject directory, and run the command 
`bundle exec rake server`

This command will start the server and you will be able to create various requests to the server

## Usage

Disclaimer: Default port is 9292 for the server. Check to make sure that port is set to 9292

#### User endpoints

To create a new user, you make a POST request to
`http://localhost:9292/users`

To get information about a user, you make a GET request to
`http://localhost:9292/users/{id}`

To delete a user from the database, you make a DELETE request to
`http://localhost:9292/users/{id}`

To check to see if the user entered correct credentials for logging in, you make a POST request to
`http://localhosty:9292/login`

#### Car endpoints

To get a list of all cars in the database, you make a GET request to
`http://localhost:9292/cars`

To get a specific car, assuming you have the id of the car, you make a GET request to 
`http://localhost:9292/cars/{id}`

To add a new car to the database, you make a POST request to
`http://localhost:9292/cars`

To update the owner of a car in the database, you make a PATCH request to
`http://localhost:9292/cars/{id}`

To delete a car from the database, you make a DELETE request to
`http://localhost:9292/cars/{id}`

To add a new repair for a car in the database, you make a POST request to
`http://localhost:9292/cars/{id}/repairs`

## Contributing

Feel free to fork and clone this project. Use it, abuse it, improve it.
