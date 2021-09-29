# frozen_string_literal: true

author_seeds = Rails.root.join('db', 'seeds', 'authors.yml')
authors_config = YAML.load_file(author_seeds)
Author.create!(authors_config)

book_seeds = Rails.root.join('db', 'seeds', 'books.yml')
books_config = YAML.load_file(book_seeds)
Book.create!(books_config)
