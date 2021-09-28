# frozen_string_literal: true

ap = Author.create(name: 'Александр', surname: 'Пушкин', birthday: Date.new(1799, 6, 6))
dg = Author.create(name: 'Дмитрий', surname: 'Глуховский', birthday: Date.new(1979, 6, 12))
sl = Author.create(name: 'Сергей', surname: 'Лукьяненко', birthday: Date.new(1968, 4, 11))

Book.create(title: 'Капитанская дочка', author: ap)
Book.create(title: 'Будущее', author: dg)
Book.create(title: 'Метро 2033', author: dg)
Book.create(title: 'Ночной дозор', author: sl)
Book.create(title: 'Дневной дозор', author: sl)
