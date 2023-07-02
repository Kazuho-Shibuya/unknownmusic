# *Unknown Music*
<a href="https://github.com/Kazuho-Shibuya/unknownmusic/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/Kazuho-Shibuya/unknownmusic?style=plastic"></a>
<a href="https://github.com/Kazuho-Shibuya/unknownmusic/issues-closed"><img alt="GitHub issues" src="https://img.shields.io/github/issues-closed/Kazuho-Shibuya/unknownmusic?style=plastic"></a>
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/Kazuho-Shibuya/unknownmusic?style=plastic">
<img alt="GitHub closed pull requests" src="https://img.shields.io/github/issues-pr-closed/Kazuho-Shibuya/unknownmusic?style=plastic">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Kazuho-Shibuya/unknownmusic?style=plastic">
<a href="https://github.com/Kazuho-Shibuya/unknownmusic/languages/top"><img alt="GitHub issues" src="https://img.shields.io/github/languages/top/Kazuho-Shibuya/unknownmusic?style=plastic"></a>
<img src="https://img.shields.io/badge/-Rails-CC0000.svg?logo=ruby-on-rails&style=plastic">
<img src="https://img.shields.io/badge/-Amazon%20AWS-232F3E.svg?logo=amazon-aws&style=plastic">
<img src="https://img.shields.io/badge/-Docker-EEE.svg?logo=docker&style=plastic">

# Overview

### **Discover the music**

*Unknown Music* is an app that allows you to easily discover, listen to and contribute to music. Developed a Music Listening App between May and November 2020 using technology that was completely self-taught + all with no practical experience.

<img width="1440" alt="UnknownMusic" src="https://user-images.githubusercontent.com/54101854/98531981-6e09c300-22c4-11eb-922c-1a64fd10f071.png">

<img width="1440" alt="popular_posts" src="https://user-images.githubusercontent.com/54101854/98633595-11aab000-2365-11eb-97d0-91da74f0a0e7.png">

<img width="1440" alt="music_search" src="https://user-images.githubusercontent.com/54101854/98633872-a7463f80-2365-11eb-986a-0982543cc14c.png">

# Production background
In our daily exposure to music, I have heard the following comments.
- "I want information only about music, but social medias are noisy."
- "There are few opportunities to encounter new music."

Therefore, I thought that an application **for discovering and listening to music in a casual way, specialising only in music**, would solve the above problems and created this application.

# List of functions

## User
- New registration
- Login and Logout
- Test user login
- Admin user
- List of users
- Login retention
- Password reset
- User authentication

## Music
- Search using Spotify API
  - Artist, song title and album cover display
- One-tap listening
- Post

## Post
- Submit, listen to and delete
- List of posts
- Like
- Search

## Follow and Unfollow
- Asynchronous follow and unfollow user
- Asynchronous display of the number of users being followed and the number of followers
- List of following users and followers

## Others
- Responsive support
- Popular posts

# Strong points
- Cooperation
  - Issues, Pull requests
- Unique
  - using Spotify API and Unparalleled themes
- Design
  - Background image, Created with attention to detail, including the design when hovering
- improvement
  - Constant problem identification and continuous development

# Functions to be implemented in the future
- Additional music category functionality
  - Display categories when searching for music
  - Show music in similar categories in recommendations
  - Add categories to the content of your posts
  - Search by category and refine your posts

# Environment and technology

## Back end
- Ruby 2.5.0
- Rails 5.2.4.4

## Front end
- HTML5/CSS3
- Bootstrap4
- JavaScript
- JQuery
- SCSS

## Development
- Docker
- Docker-compose
- MySQL 5.7

## Production
- AWS
  - VPC, EC2, RDS, S3, Route53, ALB, IAM, ACM,SES
- Nginx
- Unicorn

## Test
- RSpec 83.51% covered

## Others
- Spotify api

## Infrastructure configuration diagram

<img width="1440" alt="AWS_ architecture" src="https://user-images.githubusercontent.com/54101854/98677236-193b7a80-23a0-11eb-86b9-f46cc803b491.png">

Thank you for watching until the end. If you have any questions, please contact me at businessfive25@gmail.com
