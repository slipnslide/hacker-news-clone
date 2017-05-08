# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Part 1: Users, Posts and Comments

Design the flow to be as similar to Hacker News as possible. We'll add one exception: comments don't need to be threaded. But the rest should be similar to Hacker News: users, posts, and comments. Do not implement votes in this version.
Releases

Release 0: Wireframes

This application is big enough you should spend time wireframing it. Wireframe the following pages:

An index page listing all the posts
A page showing a particular post, including comments
A user profile page
A page showing all a user's submissions
A page showing all a user's comments
A user signup and login page
Release 1: Models & Controllers

At the very least you should have the following models:

Post
User
Comment
Don't worry about threaded comments, unless you're feeling adventurous. Even if you are feeling adventurous, trying to implement threaded comments now might derail your momentum: wait until you have a non-threaded version working before you try your hand at a threaded version.

Also, don't worry about Hacker News' fancy sorting algorithms for the post homepage and comment threads. Just sort them in some simple way: chronologically, alphabetically, etc.

Routes

Give some thought to your controller routes before creating them. Consider following the RESTful routing convention instead of coming up with your own convention. Here are some routes to get you thinking in a RESTful way:

HTTP Verb	URL
View all posts	GET	/posts
View a single post	GET	/posts/:id
Add a comment to a post	POST	/posts/:id/comments
View all comments by a user	GET	/users/:id/comments
Release 2 : Views

Implement all the views. Don't worry about AJAX at first.

![Image of schema](/app/assets/images/schema.png)