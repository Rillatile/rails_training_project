# Пример использования кастомного класса для валидации

class TestModelValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:field, 'field не может быть пустым!') if record.field.blank?
  end
end

class TestModel < ApplicationRecord
  validates_with TestModelValidator
end
