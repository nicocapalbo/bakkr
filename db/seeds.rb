# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Ingredients
puts 'Creating ingredients...'
Ingredient.create([
                    { name: 'harina', quantity: 1, unit: 'gr' },
                    { name: 'leche condensada', quantity: 1, unit: 'gr' },
                    { name: 'coco', quantity: 1, unit: 'gr' },
                    { name: 'azucar', quantity: 1, unit: 'gr' },
                    { name: 'sal', quantity: 1, unit: 'gr' }
                  ])

#Products
puts 'Creating products...'
Product.create([
                 { name: 'brigadeiro', product_type: 1 },
                 { name: 'beijinho', product_type: 1 },
                 { name: 'zanahoria', product_type: 0, layers: 1, filling: 'brigadeiro' },
                 { name: 'prestigio', product_type: 0, layers: 2, filling: 'beijinho' }
               ])
#Customers
puts 'Creating customers...'
Customer.create([
                  { name: 'Nicolas Capalbo', email: 'capalbo.nicolas@gmail.com', phone: '678141173' },
                  { name: 'Melanie Yorston', email: 'yorston.melanie@gmail.com', phone: '673284473' },
                  { name: 'Bryn Williams', email: 'williams.bryn@gmail.com', phone: '621948532' }
                ])
