# README
  <img width="1440" alt="topview" src="https://user-images.githubusercontent.com/67140111/91529519-66cd4d00-e944-11ea-9119-14370a4f6dcb.png">
  

## アプリ概要
  自分の知っているワードに纏わるバックボーン・裏話・プチ雑学などを投稿し、共有し合うアプリです。
  

## 制作背景
  そのワードに対するバックボーンや裏話を知ることによってより知識が深まり、好感や親近感が持てるのではないかと思い、制作しました。 
  また、当アプリは こういうアプリが存在してたら使うだろうな を軸にし、ターゲット層を設定しました。  
 - ターゲット層  
   - 気になったらすぐに調べる人  
   - 曖昧なまま理解しているのが嫌な人  
   - 自分の知っている知識や雑学を人に言いたい人  
   
 美味しいお店を調べたいから食べログを見ると同様に、この人・物のバックボーンが知りたいからBackboneで調べてみよう！みたいな感覚で使用して頂けたら幸いです。
  
## DEMO
  - 新規登録画面<img width="1440" alt="new" src="https://user-images.githubusercontent.com/67140111/91548465-5dea7480-e960-11ea-9c76-1885723a5894.png">

  - ログイン画面からゲストユーザーとしてログインして頂けます![guedtlog](https://user-images.githubusercontent.com/67140111/91547241-98eba880-e95e-11ea-8ae6-462e187badc6.gif) 
  
  - ユーザー一覧画面&新規投稿画面&投稿一覧画面![menu](https://user-images.githubusercontent.com/67140111/91550792-0ea64300-e964-11ea-921d-fc6b6619fbac.gif)
  
  - ユーザーマイページ&投稿削除機能![show delete](https://user-images.githubusercontent.com/67140111/91579390-7f5e5700-e986-11ea-9714-0bbae4ac274f.gif)
  
  - ユーザー編集機能![edit](https://user-images.githubusercontent.com/67140111/91583912-cea78600-e98c-11ea-8dc7-a8fa381bc05f.gif)
  
  - いいね機能![favorite](https://user-images.githubusercontent.com/67140111/91585006-740f2980-e98e-11ea-8e83-ac6d5865dbb5.gif)
 
## 工夫したポイント
  見やすさ・分かりやすさ・使いやすさの3点を重視して作成しました。  
  特に、マイページではプロフィール画像やプロフィールを設定できるようにして、普段使い慣れてるようなSNSアプリに近づけました。


## 使用技術
  Ruby/Ruby on Rails/MYSQL/Github/Visual Studio Code


## 今後実装したい機能
  - 検索機能  
  - フォロー機能


## DB設計
  ### usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|


#### Association
- has_many :tweets, dependent: :destroy
- has_many :favorites, dependent: :destroy



### tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|title|string|null: false|
|body|text|null: false|

#### Association
- belongs_to :user
- has_many :favorites, dependent: :destroy


### favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|tweet_id|integer|null: false|

#### Association
- belongs_to :user
- belongs_to :tweet