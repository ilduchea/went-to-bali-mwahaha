class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.create_users
  end

  def generate_products
    20.times do |i|
      i = rand(1..3)
      Product.create!(
        name: Faker::Lorem.word,
        price: rand(10...100),
        description: Faker::Lorem.sentence(5, false, 0).chop,
        image: File.new("app/assets/images/image#{i}.jpg")
      )
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
