# Free & For Sale
## UC Berkeley Fall 2016 CS 198: Ruby on Rails DeCal

**Title:** Free and For Sale

**Team Members:**

- Victor Kong (`VictorKong94`),
- Michael Ma (`michaelma1210`),
- Sally Tran (`sallyzorr`), and
- Claudia Tse (`tseclaudia`)

**Demo Link:**

**Idea:** An application where users can post items that they want to sell and items that they are looking for. Users can communicate with other users about their posts by commenting on a messaging thread.

**Models and Descriptions:**

BuyPost
  - belongs to a User and has a name, user id, price, filled attribute to specify whether the item has been found yet, photo, time the post was created, and time that the post was updated
  - has one message but many comments

Comment
  - belongs to a User and a Message and has content, message id, user id, time that the comment was created, and time that the comment was updated

Message
  - belongs to a User and a SalePost or BuyPost, and has a title, description, time that the message was created, time that the message was updated, user id
  - has many comments

SalePost
  - belongs to a User and has a name, user id, price, sold attribute to specify whether the item has been sold, photo, time that the post was created, and time that the post was updated
  - has one message but many comments

User
 - has email, encrypted password, reset password token, time that the reset password token was sent, time when the 'Remember Me' option was checked, sign in count, time of current sign, time of last sign in, current sign in ip, last sign in ip, time that account was created, time that the account was updated, name, photo
 - has many buy posts, sale posts, messages, and comments

**Features:**

- Users can create accounts and log in and log out.
- Users can update their names, emails, passwords, and can cancel their accounts.
- Users can view, delete, and toggle the statuses of the sell and buy posts they've created.
- Users can create sale posts that describe the item's name, asking price and photo.
- Users can create buy posts that describe the item's name, bidding price, and photo.
- Users can view recent sale posts and buy posts that specify the items' names, asking or bidding price, photos, and time that the posts were last edited.
- Users can comment on sale and buy posts.

**Division of Labor:**

- Victor: 
- Michael:
- Sally: 
  - implementing message & comment model, views, controller
  - clickable & redirecting photos, and integrating message & commenting threads for correct sale/buy thread 
  - styling of home page, account settings, log in, sign up, comments

- Claudia: 
  - worked making the home page and user page for the sale and buy posts show up
  - worked on the buttons on the user's page that would toggle and delete the user's posts
  - added user's name to the registration and account settings
  - worked on buttons that would create posts
  - added photos to posts
  - worked on creating the message/comments section for sale and buy posts
  - worked on the README
