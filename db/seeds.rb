# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Category.create([{ name: 'Bueno_1' }, { name: 'Regular_2' }, { name: 'Malo_3' }])

#Product.create([{ name: 'Product_1', price: 100, category_id: 1 }, { name: 'Product_2', price: 200, category_id: 1 }, { name: 'Product_3', price: 50, category_id: 2 }, { name: 'Product_4', price: 60, category_id: 2 }, { name: 'Product_5', price: 5, category_id: 3 }, { name: 'Product_6', price: 10, category_id: 3 }])

category = Category.find_by(name:'Bueno_3')

category.product.build(name: 'Product_8', price: 1).save

Category.last.destroy.save

Product.last.update.(premium:true)

Category.each do |c|

	c.name.upcase.save

	end
