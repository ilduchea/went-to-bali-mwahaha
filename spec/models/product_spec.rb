require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should have_many :order_items }

end