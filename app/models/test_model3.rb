class TestModel3 < ApplicationRecord
  # Проводим валидацию field1 при созданиии. При этом кидаем исключение, если не валиден
  validates :field1, presence: { on: :create, strict: true }
  # Проводим валидацию field2 при обновлении
  validates :field2, presence: true, on: :update
  # Проводим валидацию field3 при контексте :test_context (tm3.valid?(:test_context), например)
  validates :field3, presence: true, on: :test_context
end
