# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


contentTheGamerList = Content.first_or_create! :title => "The Gamer List", :slug => "the-gamer-list", :content => "Aliquam maximus tellus condimentum aliquet gravida. Quisque efficitur ligula a elementum gravida. Sed maximus sollicitudin tortor vitae lacinia. Nulla et tempus magna. Maecenas venenatis justo sagittis ipsum pharetra, vel tincidunt ligula tincidunt. Mauris euismod laoreet nisl, ullamcorper malesuada metus condimentum tempor. Suspendisse non enim elit. Sed pellentesque ut ligula a rhoncus. Nunc rhoncus purus a diam egestas molestie vitae quis purus. In hac habitasse platea dictumst. Nullam at bibendum enim, at consectetur justo. Mauris sed magna lacus. Ut non ligula in tortor luctus tincidunt. Quisque tempor viverra varius. Praesent hendrerit est sed diam malesuada, vel ullamcorper felis accumsan. Mauris a libero pellentesque, imperdiet magna quis, viverra orci. Nunc rhoncus purus a diam egestas molestie vitae quis purus. In hac habitasse platea dictumst. Nullam at bibendum enim, at consectetur justo. Mauris sed magna lacus. Ut non ligula in tortor luctus tincidunt. Quisque tempor viverra varius. Praesent hendrerit est sed diam malesuada, vel ullamcorper felis accumsan. Mauris a libero pellentesque, imperdiet magna quis, viverra orci.", :image => "image-not-avaiable.png"