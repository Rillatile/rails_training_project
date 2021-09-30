class ValidatingModel2 < ApplicationRecord
  has_many :validating_model1s

  # Проверяем, что объекты связанной модели валидны
  validates_associated :validating_model1s
end
