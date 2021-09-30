# Пример валидации при помощи validates_each

class TestModel2 < ApplicationRecord
  validates_each :field1, :field2 do |record, attr, value|
    record.errors.add(attr, 'Не может быть пустым') if value.blank?
  end
end
