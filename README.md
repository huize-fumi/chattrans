# Trans-chat

## アプリの概要
複数人でチャットができるアプリです。ページの言語切り替えもできます。また、チャット内容を自動で翻訳できるので海外の方とチャットすることができます。

## 制作背景
仕事で海外とやりとりが増えている中で、英語圏以外のやりとりの需要が高くなってきています。現場作業により常にPCでメールを確認することができないため、メール機能よりもチャットの方が連絡が取りやすくなります。翻訳機能を付けることで毎回通訳への依頼や翻訳サイトでの翻訳確認の手間を省くことができると考え、制作しました

## URL

## テスト用アカウント
<dt>メールアドレス：test@com,  パスワード：1q2w3e</dt>
<dt>メールアドレス：test1@com, パスワード：2w3e4r</dt>
<dt>メールアドレス：test2@com, パスワード：3e4r5t</dt>
<dt>２人以上でのチャットが可能となるため、３つのアカウントがあります。</dt>

## 利用方法
チャットをするためにユーザーの新規登録を行います。メール・パスワードの他に名前と部署名を記入してください。ログインができたらチャットしたい相手を選択し、チャットルームを作成します。チャット内容を記入し、言語を選択し送信することで自分が記入した内容と翻訳内容が同時に送信されます。必要に応じて画像も一緒に送信します。やりとりが終了したらチャットルームを削除することができます。

## 目指した課題解決
このアプリのペルソナは海外拠点とメールのやりとりをしている人をターゲットにしました。働き方改革で仕事の業務効率化をするため無駄な時間を削減する必要があります。翻訳サイトで行っていた翻訳作業を自動化することで作業時間を削減を目標に制作をしました。以上のことから課題解決に向け、チャットでの時間短縮ができるような実装をしました。

## 洗い出した要件
### ・ユーザー登録
<dl>
<dt>目的：誰とチャットをしているかわかるようにするために、ユーザー登録をしてからチャットできるようにする</dt>
<dt>詳細：使用するために必要な情報を登録し、チャットを行う</dt>
<dt>ストーリー：最初にユーザー登録もしくはログインページで必要情報を入力する</dt>

### ・サイトの表示言語の選択
<dt>目的：登録時に言語切り替えで記載内容をわかるようにする</dt>
<dt>詳細：日本語、英語、中国語の３つの言語の切り替えでページの言語を切り替えができるようにする</dt>
<dt>ストーリー：サイト使用時に言語を選択肢、表示内容の言語を選択する</dt>

### ・複数人でチャット実施
<dt>目的：複数人でチャットをするために、名前を複数登録できるようにする</dt>
<dt>詳細：チャットルーム作成時にプラスボタンを押して登録人数を増やす</dt>
<dt>ストーリー：チャットルーム作成時に人数を増やす</dt>

### ・翻訳言語の選択
<dt>目的：相手の使用言語に合わせることでチャットをスムーズに進める</dt>
<dt>詳細：チャット内容を記述し、翻訳したい言語を選択する</dt>
<dt>ストーリー：内容を記述後、言語を選択し送信を押す</dt>

### ・自動翻訳機能
<dt>目的：海外の人とチャットをするために自動翻訳でチャットをスムーズにする</dt>
<dt>詳細：チャット送信時のコメントを自動で翻訳をする</dt>
<dt>ストーリー：チャット内容を記述し、送信を押すだけで翻訳内容も合わせて表記する</dt>

# 実装した機能についての画像やGIFおよび説明

## 1.新規登録、ログイン機能
[![Image from Gyazo](https://i.gyazo.com/20c7b7ba0a12848b628ed3c1dce0e640.gif)](https://gyazo.com/20c7b7ba0a12848b628ed3c1dce0e640)
今回はログイン画面です。背景は紙吹雪が舞う動きになります。

## 2.言語切り替え
[![Image from Gyazo](https://i.gyazo.com/c47486cde50ec96ad11d50342d362b63.gif)](https://gyazo.com/c47486cde50ec96ad11d50342d362b63)
ユーザー登録時の画面です。日本語、英語、中国語の３つの言語の切り替えができるように実装しました。

## 3.チャットルームの作成
[![Image from Gyazo](https://i.gyazo.com/181619b169517db8e22e94702ddc3ac0.gif)](https://gyazo.com/181619b169517db8e22e94702ddc3ac0)
チャットルーム作成する時に人数を増やせるようにしました。

## 4.自動翻訳機能
[![Image from Gyazo](https://i.gyazo.com/d9a1d3de5e59fd506ce8ca9699bf7708.gif)](https://gyazo.com/d9a1d3de5e59fd506ce8ca9699bf7708)
チャットと同時に自動でチャット内容が翻訳されます。チャット内容の言語は自動で何語かを判別するため、翻訳したい言語を選択することで翻訳をができるようになります。

## 5.画像投稿機能
[![Image from Gyazo](https://i.gyazo.com/a8a9fde702f2dbc5222244ed99c9e636.gif)](https://gyazo.com/a8a9fde702f2dbc5222244ed99c9e636)
画像でのやりとりもあるため、画像投稿できるように実装しました。

## 工夫した点
<dt>・チャットのみでは動きがないため、背景に動きを持たせてストレスを感じさせないように意識したこと</dt>
<dt>・海外の人とやりとりができるように多言語が表示できるようにしたこと</dt>

## 今後追加したい機能について
仕事で使う場合は納期があり、期日を入れて日程が近づくとチャットルームの表示や色が変化する機能を追加することで、すぐに対応すべきかの判断がつくため、
技術をつけて実装をしていきたいです。

## 開発環境
Ruby / Ruby on Rails / MySQL / GitHub / AWS / Visual Studio Code

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| post     | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     |                                |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user