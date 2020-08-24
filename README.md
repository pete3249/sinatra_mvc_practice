### Layers to a Web Application

Dependencies (gems/packages)

Configuration (environment variables/ other stuff in config folder)

Database

Models

Views

Controllers

Routes

I use these layers as a template for building cheat sheets about different concepts related to a Sinatra/Rails application

### Single Responsibility Principle (SRP)

Classes should only have one responsibility!

### Dependencies
How we specify code written by other people (or us) that we need to have installed before our program can run.

### Configuration
Make sure all of our dependencies are loaded and configured with any information they need to work properly for our app. These might change from application to application and need to be configured so they work properly (config/environment.rb, config.ru).

### Database
Add the ability to persist data beyond the running of our program. Allows us to store information so we can retrieve it later. 

In a web app, we write migration files whose responsibility is recording changes to the database over time and allowing multiple developers to integrate those changes as they occur in a more automated way. Other developers will get an error if they try to run the code without running a migration that you added. 

### Models
Provides an abstraction of what we're trying to model in real life. These files contain logic about the types of things that we care about for the application. 

When we describe features of an application, every *thing (noun) that we refer to could potentially be a model. The verbs could be methods they can do. The way we describe individual things (their attributes) could be columns in the database table associated with that model.

### Views
Code that describes the content that is sent back to the browser (i.e. what the user actually sees).We could include javascript here too because it can also influence what the user sees.

### Controllers
Groups of routes that are related to one another.

### Routes
Designed to map requests to responses. Code that determines how our application should respond to different types of requests. Routes contain an HTTP verb (GET, POST) and path ('/').

### Assessment: Response and Request cycle using restaraunt analogy

1. Customer places an order
2. Waiter checks their brain (knowledge of the menu) to find the matching menu item (customer wants martini)
3. Waiter takes order to the bartender and leaves them a ticket
4. Bartender gets the Vermouth, Gin, Olive, Ice, and stirring spoon and prepares Martini