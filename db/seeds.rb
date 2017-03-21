# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "demo_user", password: "password", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_2_f2rqdk.jpg")
User.create(username: "vinson", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/Tamarin_portrait_2_edit3_pbodko.jpg")

Guide.create(title: "guide1", body: "this is a test guide", author_id: 1, photo_url: 'http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/640px-Chocolate_Chip_Cookies_-_kimberlykv_mfvoeo.jpg')

Step.create(title: "step test", body: "this is step1", guide_id: 1, photo_url: 'http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_3_ti3l5k.jpg')
Step.create(title: "step test2", body: "this is step2", guide_id: 1, photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/download_iy40py.jpg")
