# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.new({
    :email => "admin@gmail.com",
    :is_admin => true,
    :password => "111111",
    :password_confirmation => "111111" 
}).save

5.times do |index|
    Category.create!(
        title: "صنف #{index}"
    )
end

20.times do |index|
    Product.create!(
        name: "المنتج #{index}",
        details: "تفاصيل المنتج #{index}",
        price: index * 50.0,
        image_url: "products/0#{1 + index%8 }.jpg",
        size: 1 + index%3,
        category_id: 1 + index%5
    )
end