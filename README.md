# Free & For Sale
## UC Berkeley Fall 2016 CS 198: Ruby on Rails DeCal

**Title:** Free and For Sale

**Team Members:** Victor Kong, Michael Ma, Sally Tran, Claudia Tse

**Demo Link:**

**Idea:** An application where users can post items that they want to sell and items that they are looking for. Users can communicate with other users about their posts via a messaging feature.

### Models and Description:
BuyPost
  - belongs to a User and has a name, user id, price, filled attribute to specify whether the item has been found yet, photo, time the post was created, and time that the post was updated

Comment
  - belongs to a User and a Message and has content, message id, user id, time that the post was created, and time that the post was updated

Message
  - belongs to a User and has a title, description, time that the post was created, time that the post was updated, user id, and many comments

SalePost
  - belongs to a User and has a name, user id, price, sold attribute to specify whether the item has been sold, photo, time that the post was created, and time that the post was updated

User
 - has email, encrypted password, reset password token, time that the reset password token was sent, time when the 'Remember Me' option was checked, sign in count, time of current sign, time of last sign in, current sign in ip, last sign in ip, time that account was created, time that the account was updated, name, photo, city, and many buy posts, sale posts, messages, and comments

### Features:
  - Users can create accounts and log in and log out.
  - Users can update their names, emails, passwords, and can cancel their accounts.
  - Users can view, delete, and toggle the statuses of the sell and buy posts they've created.
  - Users can create sell posts that describe the item's name, asking price and picture.
  - Users can create buy posts that describe the item's name, bidding price, and picture.
  - Users can view recent sell posts and buy posts that specify the items' names, asking or bidding price, and time that the posts were last edited.

### Division of Labor:
 - Victor: 
 - Michael:
 - Sally:
 - Claudia: 
