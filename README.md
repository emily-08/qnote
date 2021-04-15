# テーブル設計

## usersテーブル

| Colmn             | Type        | Options                   |
|:------------------|------------:|:-------------------------:|
| nickname          | string      | null: false               |
| email             | string      | null: false, unique:true  |
| encrypted_password| string      | null: false               |

### Association

- has_many :memos
- has_many :genres

## memosテーブル

| Colmn             | Type        | Options                         |
|:------------------|------------:|:-------------------------------:|
| title             | string      | null: false                     |
| text              | text        |                                 |
| user              | references  | null: false, foreign_key: true  |
| genre             | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :genre

## genresテーブル

| Colmn             | Type        | Options                         |
|:------------------|------------:|:-------------------------------:|
| name              | string      | null: false                     |
| memo              | references  | null: false, foreign_key: true  |

### Association

- has_many :memos
- belongs_to :user