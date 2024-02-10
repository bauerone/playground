class Car < ApplicationRecord
  belongs_to :owner

  enum :brand, [:audi, :bmw, :mercedes, :kia, :hyundai, :toyota, :lexus]
  enum :engine, [:petrol, :diesel, :electric]
  enum :transmission, [:mechanical, :automatic, :robotic]
end
