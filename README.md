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
- has_many :wills
- has_many :will_addresses



## articles テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| content               | text       | null: false                    |
| category_id           | integer    | null: false,                   |
| condition_id          | integer    | null: false,                   |
| postage_id            | integer    | null: false,                   |
| area_id               | integer    | null: false,                   |
| scheduled_delivery_id | integer    | null: false,                   |
| price                 | integer    | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order





## comments テーブル

| Column          | Type       | Options                        |
| ---------       | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| item            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :address


## addresses テーブル

| Column          | Type       | Options                        |
| ---------       | ---------- | ------------------------------ |
| post_code       | string     | null: false                    |
| city_code       | string     | null: false                    |
| area_id         | integer    | null: false                    |
| post_number     | string     | null: false                    |
| building_name   | string     |                                | 
| phone_number    | string     | null: false                    |
| order           | references | null: false, foreign_key: true |


### Association

- belongs_to :order





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