# テーブル設計

## usersテーブル

| Colmn             | Type        | Options                   |
|:------------------|------------:|:-------------------------:|
| nickname          | string      | null: false               |
| email             | string      | null: false, unique:true  |
| encrypted_password| string      | null: false               |

### Association

- has_many :memos

## memosテーブル

| Colmn             | Type        | Options                         |
|:------------------|------------:|:-------------------------------:|
| title             | string      | null: false                     |
| text              | text        |                                 |
| user              | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user