# *Unknown Music* 【音楽試聴アプリ】
<a href="https://github.com/Kazuho-Shibuya/unknownmusic/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/Kazuho-Shibuya/unknownmusic?style=plastic"></a>
<a href="https://github.com/Kazuho-Shibuya/unknownmusic/issues-closed"><img alt="GitHub issues" src="https://img.shields.io/github/issues-closed/Kazuho-Shibuya/unknownmusic?style=plastic"></a>
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/Kazuho-Shibuya/unknownmusic?style=plastic">
<img alt="GitHub closed pull requests" src="https://img.shields.io/github/issues-pr-closed/Kazuho-Shibuya/unknownmusic?style=plastic">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Kazuho-Shibuya/unknownmusic?style=plastic">
<a href="https://github.com/Kazuho-Shibuya/unknownmusic/languages/top"><img alt="GitHub issues" src="https://img.shields.io/github/languages/top/Kazuho-Shibuya/unknownmusic?style=plastic"></a>
<img src="https://img.shields.io/badge/-Rails-CC0000.svg?logo=rails&style=plastic">
<img src="https://img.shields.io/badge/-Amazon%20AWS-232F3E.svg?logo=amazon-aws&style=plastic">
<img src="https://img.shields.io/badge/-Docker-EEE.svg?logo=docker&style=plastic">
<img src="https://img.shields.io/badge/-Vim-019733.svg?logo=vim&style=plastic">

**「音楽を知る、きっかけを。」**

*Unknown Music* は、あなたがまだ知らない音楽と、出会うきっかけを作るアプリです。

<img width="1440" alt="UnknownMusic" src="https://user-images.githubusercontent.com/54101854/98531981-6e09c300-22c4-11eb-922c-1a64fd10f071.png">

<img width="1440" alt="popular_posts" src="https://user-images.githubusercontent.com/54101854/98633595-11aab000-2365-11eb-97d0-91da74f0a0e7.png">

<img width="1440" alt="music_search" src="https://user-images.githubusercontent.com/54101854/98633872-a7463f80-2365-11eb-986a-0982543cc14c.png">


# URL
[アプリはこちらからご覧になれます。](https://www.unknownmusic.net/)

# 使用方法

ログインページのかんたんログインよりどなたでもご覧になれます。

※始めるを押下→右上ヘッダー内のログインを押下→かんたんログイン（閲覧用）を押下

# 制作背景
日々音楽に触れる中で、下記のような声を耳にしました。
- 「音楽だけの情報が欲しいのに、SNSはノイズが多い。」
- 「気になった曲を聴くのに手間がかかる。」
- 「新しい音楽に出会うきっかけが少ない。」

そこで、**音楽だけに特化した、気軽に音楽を聴けて、共有可能な**アプリがあれば、上記の課題を解決できるのではないかと考え、このアプリを作成しました。

# 機能一覧

## ユーザ
- 新規登録機能
- ログイン・ログアウト機能
- テストユーザログイン機能
- 管理ユーザ機能（全ユーザの削除可能）
- 一覧表示機能
- ログイン保持機能
- パスワード再設定機能
- ユーザ認証機能

## 音楽検索（Spotify api）
- 音楽検索機能（アーティスト、曲名、アルバムジャケット表示）
- 試聴機能
- 投稿機能

## 投稿機能
- 曲の投稿、試聴、削除
- 一覧表示機能
- いいね機能（非同期）
- 検索機能

## フォロー機能
- ユーザのフォロー、フォロー解除（非同期）
- フォロー中のユーザーとフォロワーの一覧表示

## その他
- レスポンシブ対応

# 意識した点
- 協調（issues、pull requestsの活用）
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
- Rails 5.2.4.3

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
- AWS(VPC、EC2、RDS、S3、Route53、ALB、IAM、ACM)
- Nginx
- Unicorn

## テスト
- RSpec(100 examples)

## その他使用技術
- Spotify api

## インフラ構成図

<img width="1440" alt="AWS_ architecture" src="https://user-images.githubusercontent.com/54101854/98677236-193b7a80-23a0-11eb-86b9-f46cc803b491.png">

最後までご覧いただき、ありがとうございました。

何かございましたら、ご連絡いただければ幸いです。

[Twitter](https://twitter.com/kazuho_web)
