# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#user = User.create!(email: 'admin@rails-pac.com', password: '123456789', password_confirmation: '123456789')

[:super_admin, :member].each do |role|
  Role.create({ name: role })
end

category = Category.new
category.name = 'Mango'
category.save

product = Product.new
product.category_id = category.id
product.name = 'First Name'
product.description = 'Description'
product.price = 'Price'
product.is_published = true
product.save