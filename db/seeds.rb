# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
projects:
 - title: 'Семья'
   todos:
    - text: 'Купить молоко'
      isCompleted: false
    - text: 'Заменить масло в двигателе до 23 апреля'
      isCompleted: false
    - text: 'Отправить письмо бабушке'
      isCompleted: true
    - text: 'Заплатить за квартиру'
      isCompleted: false
    - text: 'Забрать обувь из ремонта'
      isCompleted: false
 - title: 'Работа'
   todos:
    - text: 'Позвонить заказчику'
      isCompleted: true
    - text: 'Отправить документы'
      isCompleted: true
    - text: 'Заполнить отчет'
      isCompleted: false
 - title: 'Прочее'
   todos:
    - text: 'Позвонить другу'
      isCompleted: false
    - text: 'Подготовиться к поездке'
      isCompleted: false
