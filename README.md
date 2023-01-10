# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| name               | string   | null: false               |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true | 
| encrypted_password | string   | null: false               |
| day_of_birth       | date     | null: false               |
| secret_key         | string   | null: false               |

### Association

- has_many :articles
- has_many :comments
- has_many :wills
- has_many :will_addresses



## articles テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| title                 | string     | null: false                    |
| content               | text       | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments





## comments テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| content         | text       | null: false                    |
| user            | references | null: false, foreign_key: true |
| article         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :articles



## wills テーブル

| Column          | Type       | Options                        |
| ---------       | ---------- | ------------------------------ |
| content         | string     | null: false                    |
| user           | references | null: false, foreign_key: true |
| will_address   | references | null: false, foreign_key: true |


### Association

- belongs_to :order
- belongs_to :will_addresses


## will_addresses テーブル

| Column          | Type       | Options                        |
| ---------       | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| user            | references | null: false, foreign_key: true |



### Association

- belongs_to :user
- belongs_to :will





#ユニーク制約  unique: trueテーブル内に、同じ情報のレコードの保存を制限するための制約。
              emailアドレスを被らせないように実装したいときに使う


#一軒家の場合、建物名はない。空でも登録できようにする。


モデル
* どのようなデータを保存する必要があるか。
    * カラムの名称はどうすることが適切か
    * →tittle
    * →content
    * →name
    * カラムのデータ型はどう設定するのが適切か
    * →tittle(string)
    * →content(text)
    * →name(string)
* モデルの名称はどうするのが適切か
* →user
* →prototype
* →comment
コントローラー
* コントローラーの名称はどうするのが適切か
* →prototypes
* コントローラー内でどのアクションを実装すべきか
* →index
* →new
* →create
* →edit
* →update
* →show
* →destroy
ルーティング
* →questions
* →new
* →
* →
* →
* →