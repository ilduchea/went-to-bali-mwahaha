class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.create_users
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
  
  def create_users
    1.times do |index1|
      User.create!(
      name: 'Qwerty',
      email: 'qwerty@email.com',
      password: 'password',
      admin: true
      )
    end
  end
end


Seed.begin
