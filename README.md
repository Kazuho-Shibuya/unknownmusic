# *Unknown Music* 【Music listening app】
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

### **「Discover the music」**

*Unknown Music* is an app that allows you to easily discover, listen to and contribute to music.<br>
Developed a Music Listening App (2020/05 - 2020/11) using technology that was completely self-taught + all with no practical experience.

<img width="1440" alt="UnknownMusic" src="https://user-images.githubusercontent.com/54101854/98531981-6e09c300-22c4-11eb-922c-1a64fd10f071.png">

<img width="1440" alt="popular_posts" src="https://user-images.githubusercontent.com/54101854/98633595-11aab000-2365-11eb-97d0-91da74f0a0e7.png">

<img width="1440" alt="music_search" src="https://user-images.githubusercontent.com/54101854/98633872-a7463f80-2365-11eb-986a-0982543cc14c.png">

# Production background
In our daily exposure to music, I have heard the following comments.
- "I want information only about music, but social medias are noisy."
- "There are few opportunities to encounter new music."
- "It takes a lot of time to listen to the songs you are interested in."

Therefore, I thought that an application **for discovering and listening to music in a casual way, specialising only in music**, would solve the above problems and created this application.

# List of functions

## User
- New registration
- Login/Logout
- Test user login
- Admin user
- List of user
- Login retention
- Password reset
- User authentication

## Music （ Spotify API ）
- Search （ Artist, song title and album cover display. ）
- Audition （ One-tap listening. ）
- Post

## Post
- Submit, listen to and delete
- List of post
- Like
- Search

## Follow and Unfollow
- Follow and Unfollow user （ Asynchronous ）
- Display of the number of users being followed and the number of followers ( Asynchronous ）
- List of following users and followers.

## Others
- Responsive support
- Popular posts

# Strong points
- Cooperation （ issues、pull requests ）
- 独自（Spotify apiを使い、他に類を見ないテーマ）
- 視覚（背景画像、ホバー時のデザインなど細かいところまでこだわりを持って制作）
- 向上（常に問題を見つけ、継続的に開発）

# 課題、今後実装したい機能
- 音楽カテゴリ機能追加
  - 音楽検索時にカテゴリを表示
  - 同様のカテゴリの音楽をおすすめに表示
  - 投稿内容にカテゴリを追加
  - カテゴリで検索し、投稿内容を絞り込み

# 環境・使用技術

## バックエンド
- Ruby 2.5.0
- Rails 5.2.4.4

## フロントエンド
- HTML5/CSS3
- Bootstrap4
- JavaScript
- JQuery
- SCSS

## 開発環境
- Docker/Docker-compose
- MySQL 5.7

## 本番環境
- AWS(VPC、EC2、RDS、S3、Route53、ALB、IAM、ACM、SES)
- Nginx
- Unicorn

## テスト
- RSpec 83.51% covered

## その他使用技術
- Spotify api

## インフラ構成図

<img width="1440" alt="AWS_ architecture" src="https://user-images.githubusercontent.com/54101854/98677236-193b7a80-23a0-11eb-86b9-f46cc803b491.png">

最後までご覧いただき、ありがとうございました。

何かございましたら、下記までご連絡をいただけますと幸いです。

→ [Twitterはこちらになります](https://twitter.com/kazuho_web)
