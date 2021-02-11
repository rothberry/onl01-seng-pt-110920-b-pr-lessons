# Sinatra MVC && REST && FORMS && MORE!

What is MVC?
Framework, or a design methodology when it comes to web applications
Model:      The data, database (respresented by a class inheriting from ActiveRecord::Base)
View:       What the user sees, how we display the data 
    (.erb => embedded Ruby )
Controller: The passthrough between the model and views, routes used the controll the models, to display the views

All happening inside of the app fold/dir

## ERB

combo of HTML && Ruby

regular HTML
Ruby is contained inside of 
<% "EVERYTHING INSIDE WILL RUN AS RAW RUBY %>
<%= "EVERYTHING INSIDE WILL RENDER AFTER IT's done being %>


## What is RESTful Routing?

the collective uniform way to setup your routes

REST        ROUTE           HTTP        NOTES
=====       ====            ====        ====
INDEX       /chars          GET         Shows all the objects
SHOW        /chars/:id      GET         Shows one object
NEW         /chars/new      GET         Displays the NEW Form    
CREATE      /chars          POST        Adds new obj to the db
EDIT        /chars/:id/edit GET         Displays the EDIT form
UPDATE      /chars/:id      PUT/PATCH   Updates the obj in the database
DELETE      /chars/:id      DELETE      Removes the obj from the db
