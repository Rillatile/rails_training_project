class ValidatingModel1 < ApplicationRecord
  belongs_to :validating_model2

  # Проверяем, что title не пустой
  validates :title, presence: true
  # Проверяем, что string_number - целое число и больше 7
  validates :string_number, numericality: { only_integer: true, greater_than: 7 }
  # Проверяем, что для одинаковых string_number должны быть разные uniq_string. И при этом передаём кастомное сообщение через опцию message
  validates :uniq_string, uniqueness: { scope: :string_number, message: 'Для одинаковых string_number должны быть разные uniq_string' }
  # Проверяем, что first_value не включён в указанный набор значений
  validates :first_value, exclusion: { in: %w[Hello World] }
  # Проверяем, что second_value включён в указанный набор значений
  validates :second_value, inclusion: { in: %w[Good Buy SUPER] }
  # Проверяем, что first_value содержит только буквы
  validates :first_value, format: { with: /\A[a-zA-Z]+\z/, message: 'Разрешены только буквы' }
  # Проверяем, что длина second_value от 3 до 4 символов
  validates :second_value, length: { in: 3..4 }
  # Проверяем, что just_number отсутствует
  validates :just_number, absence: true
end
