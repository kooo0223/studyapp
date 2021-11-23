# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :questions
- has_many :messages

## questions テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| question_text   | text       | null: false                    |
| answer_text     | text       | null: false                    |
| subject_id      | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to: user
- has_many: messages

## messages テーブル

| Column       | Type       | Options                        |
| -------------| ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| question     | references | null: false, foreign_key: true |

### Association
- belongs_to: user
- belongs_to: messages