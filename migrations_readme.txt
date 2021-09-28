# Генерируем модель Author

rails g model Author name:string surname:string birthday:date

# Запускаем миграции (далее об этом писать не буду, и так подразумевается)

rails db:migrate

# Генерируем миграцию на создание таблицы books

rails g migration CreateBooks title:string

# Генерируем миграцию на добавление fk в books

rails g migration AddAuthorRefToBooks author:references

# Генерируем миграцию на добавление столбца с местом рождения в authors

rails g migration AddBirthplaceToAuthors birthplace:string

# Заказчик передумал насчёт места рождения, откатываем последнюю миграцию

rails db:rollback

# Заказчик решил всё же добавить место рождения. Запускаем миграцию снова

# Для удобства создадим модель Book. Для этого напишем класс модели вручную, указав при этом атрибут 'table_name'

# Отредактируем db/seeds.rb, добавив в него генерацию стартовых данных

rails db:seed

# Сгенерируем миграцию на добавление столбца price в books

rails g migration AddPriceToBooks price:string

# Сгенерируем миграцию на изменение типа price - из string в int. Используем методы up и down

rails g migration ChangePriceTypeForBooks

# Далее редактируем созданный файл

# Добавим индекс на фамилию автора

rails g migration AddSurnameIndexToAuthors

# Далее редактируем созданный файл

# Место рождения всё же не нужно. Удаляем его. И заодно уберём из seeds

rails g migration RemoveBirthplaceFromAuthors birthplace:string

# Сгенерируем миграцию на join authors и books

rails g migration CreateJoinTableAuthorsBooks author book

# А теперь пример использования reversible. Генерируем миграцию ReversibleExample и редактируем созданный файл

# Откатимся на три миграции назад

rails db:rollback STEP=3

# Снова запустим миграции и выполним пересоздание БД

rails db:migrate
rails db:reset

