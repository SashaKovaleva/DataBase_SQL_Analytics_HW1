'''
Задача 1: 
Создание сущности с мобильными телефонами
Создайте таблицу (сущность) с мобильными телефонами mobile_phones. При создании необходимо использовать DDL-команды.
Перечень полей (атрибутов):
id – числовой тип, автоинкремент, первичный ключ;
product_name – строковый тип, обязательный к заполнению;
manufacturer – строковый тип, обязательный к заполнению;
product_count – числовой тип, беззнаковый;
price – числовой тип, беззнаковый.
Используя CRUD-операцию INSERT, наполните сущность mobile_phones данными:

product_name	manufacturer	product_count	price
iPhone X	Apple	156	76000
iPhone 8	Apple	180	51000
Galaxy S9	Samsung	21	56000
Galaxy S8	Samsung	124	41000
P20 Pro	Huawei	341	36000
Важно: Чтобы проверка прошла успешно, перед нажатием кнопки Проверить студент должен написать запрос и нажать кнопку Выполнить.
'''

-- Вы работаете с PostgreSQL
-- Введите свой код ниже
DROP TABLE IF EXISTS itresume4145317.mobile_phones;

CREATE TABLE itresume4145317.mobile_phones(
  id SERIAL PRIMARY KEY,
  product_name VARCHAR(45) NOT NULL,
  manufacturer VARCHAR(45) NOT NULL,
  product_count BIGINT,
  price BIGINT
);

INSERT INTO itresume4145317.mobile_phones (product_name, manufacturer, product_count, price)
VALUES 
  ('iPhone X', 'Apple', 156, 76000),
  ('iPhone 8', 'Apple', 180, 51000),
  ('Galaxy S9', 'Samsung', 21, 56000),
  ('Galaxy S8', 'Samsung', 124, 41000),
  ('P20 Pro', 'Huawei', 341, 36000);