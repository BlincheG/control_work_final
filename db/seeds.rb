# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: "User",
            email: 'user@mail.com',
            password: 'qweqwe',
            password_confirmation: 'qweqwe')

book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)
book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)
book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)
book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)
book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)
book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)
book1 = Book.create(title: "Книга", desc: "Описание", user_id: 1)


category1 = Category.create(title: "Драма")
category1 = Category.create(title: "Роман")
category1 = Category.create(title: "Боевик")

author = Author.create(name: "Пушкин", description: "Кот")