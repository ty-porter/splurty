# splurty

Splurty is built in Rails 5.2.1 as part of a project for Vanderbilt University's Coding Bootcamp. It takes user inputs and creates a database of quotes to serve up randomly to users. 

On the backend, Splurty can also handle AJAX requests and serve up quotes via a JSON API. [Reactive-Splurty](https://github.com/pawptart/reactive-splurty) uses this to render the same information using ReactJS.

See Splurty in action [here](https://splurty-tyler-porter.herokuapp.com). 

## Calling the API

### Retrieving Quotes
If you'd like to use the API to retrieve quotes, send a GET request to

```https://splurty-tyler-porter.herokuapp.com/quotes.json```

It will return a JSON object that looks similar to the following example:

```
{
    "id": 1,
    "saying": "A bicycle ride around the world begins with a single pedal stroke.",
    "author": "Scott Stoll",
    "created_at": "2019-03-07T03:19:17.780Z",
    "updated_at": "2019-03-07T03:19:17.780Z"
}
``` 
### Creating Quotes
Similarly, if you'd like to create a new quote, use a POST request including the `saying` and `author` keys, and Splurty does the rest. 

## TODO

* Fix the Bootstrap bug causing Splurty to be wider than viewport width.
