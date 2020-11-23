# README

## items

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| price              | string | null: false |

### Association

- has_many :order
- has_one_attached :image

## menu

|  Column             | Type   | Options     |
| ------------------- | ------ | ----------- |
| drink               | string |             |
| pancake             | string |             |
| parfait             | string |             |
| cream               | string |             |
| plate               | string |             |
| monaka              | string |             |
| price               | string | null: false |

## image

| Column       | Type          | Options           |
| ------------ | ------------- | ----------------- |
| menu_id      | integer       | null: false       |
| image        | text          | null: false       |

## users

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| lname              | string | null: false |
| fname              | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :orders

## orders

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| user         | references | foreign_key: true |
| item         | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| postal_cord    | string     | null: false       |
| prefectures_id | integer    | null: false       |
| municipality   | string     | null: false       |
| house_number   | string     | null: false       |
| building       | string     |                   |
| phone_number   | string     | null: false       |
| order          | references | foreign_key: true |

### Association

- belongs_to :order