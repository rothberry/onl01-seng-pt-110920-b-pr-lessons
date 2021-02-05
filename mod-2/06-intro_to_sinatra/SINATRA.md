# Sinatra

What is Sinatra?

Direct Service Language
Create Web Applications
Has a frontend and backend (FullStack)

## How the internet works
## Vocab
HTTP Request/Response Cycle
Request   => The Client sending data to the Server
Response  => The Server sending data to the Client
Routes    => the tag at the end of the URL (endpoints)
localhost:3000/
localhost:3000/books
localhost:3000/books/:book_id
localhost:3000/books/14424/title

Controllers => Class Application of the routing

root => '/'

```RUBY
  Controller
  route get '/'
    whatever we want to present to the user
```

# Types of HTTP Requests

CREATE  POST    => Sends data to the server
READ    GET     => Displays the data from the server
UPDATE  PUT     => Edits data on the server
UPDATE  PATCH   => Edits data on the server
DELETE  DELETE  => Deletes data from the server

CONNECT
OPTIONS
TRACE
HEAD

## Convention over Configuration

Config      => Customized dev processes
Convention  => Dev agreed upon common practices