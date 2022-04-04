# テーブル設計

## customersテーブル
| Column                | Type      | Options                        |
| --------------------- | --------- | ------------------------------ |
| name                  | string    | null: false                    |
| postal_code           | string    | null: false                    |
| prefecture_id         | integer   | null: false                    |
| city                  | string    | null: false                    |
| block                 | string    | null: false                    |
| city                  | string    | null: false                    |
| building              | string    |                                |
| phone_number          | string    | null: false                    |
| payment_condition     | string    | null: false                    |
| due_date              | string    | null: false                    |

### Association
- has_many :quotations


## placesテーブル
| Column                | Type       | Options                        | 
| --------------------- | ---------- | ------------------------------ | 
| name                  | string     | null: false                    | 
| postal_code           | string     | null: false                    |
| prefecture_id         | integer    | null: false                    |
| city                  | string     | null: false                    |
| block                 | string     | null: false                    |
| city                  | string     | null: false                    |
| building              | string     |                                |

### Association
- has_many :quotations


## quotationsテーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| attention             | string     | null: false                    |
| title                 | string     | null: false                    |
| created_date          | date       | null: false                    |
| updated_date          | date       | null: false                    |
| expiry                | string     | null: false                    |
| tax_late              | decimal    | null: false                    |
| submitted             | integer    | null: false                    |
| remark                | string     |                                |
| user                  | references | null: false, foreign_key: true |
| place                 | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :place
- has_many :quotation_details


## quotation_detailsテーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| item_name             | string     | null: false                    |
| quantity              | integer    | null: false                    |
| unit_price            | integer    | null: false                    |
| quotation             | references | null: false, foreign_key: true |

### Association
- belongs_to :quotation
