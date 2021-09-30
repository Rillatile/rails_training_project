# Пример валидации при помощи класса, наследованного от ActiveModel::EachValidator и функций

class Field1Validator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, 'Не может быть пустым') if value.blank?
  end
end

class TestModel4 < ApplicationRecord
  validates :field1, field1: true
  validate :validate_field2

  def validate_field2
    errors.add(:field2, 'Не может быть пустым') if field2.blank?
  end
end
