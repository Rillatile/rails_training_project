# frozen_string_literal: true

author_seeds = Rails.root.join('db', 'seeds', 'authors.yml')
authors_config = YAML.load_file(author_seeds)

authors_config.each { |attributes| Author.find_or_create_by(attributes) }

book_seeds = Rails.root.join('db', 'seeds', 'books.yml')
books_config = YAML.load_file(book_seeds)

books_config.each do |attributes|
  Book.find_or_create_by(attributes) do |book|
    case book.title
    when 'Капитанская дочка'
      book.author = Author.find_by(surname: 'Пушкин')
    when 'Будущее', 'Метро 2033'
      book.author = Author.find_by(surname: 'Глуховский')
    when 'Ночной дозор', 'Дневной дозор'
      book.author = Author.find_by(surname: 'Лукьяненко')
    end
  end
end
