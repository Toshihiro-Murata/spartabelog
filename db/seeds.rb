# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
  name: "スパルタ亭",
  tel: "03-0000-0000",
  address: "東京都新宿区スパルタ亭１−１",
  url: "http://spartatei.tei"
)

Restaurant.create(
  name: "西新宿ラーメン",
  tel: "03-0000-0001",
  address: "東京都新宿区ラーメン町１−１",
  url: "http://west-ramen.shinjuku"
)

Restaurant.create(
  name: "都会焼肉",
  tel: "03-0000-0002",
  address: "東京都新宿区都会１−１",
  url: "http://yakiniku.tokai"
)
