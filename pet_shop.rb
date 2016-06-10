def pet_shop_name(info)
  info[:name]
end

def total_cash(cash)
  cash[:admin][:total_cash]
end

def add_or_remove_cash(cash, cash_change)
  cash[:admin][:total_cash] += cash_change
end

def pets_sold(sold)
  sold[:admin][:pets_sold]
end

def increase_pets_sold(sold, sold_increase)
  sold[:admin][:pets_sold] += sold_increase
end

def stock_count(stock)
  stock[:pets].length
end

def pets_by_breed(pet_shop, breed)
  breed_array = []

  for pet in pet_shop[:pets]
    breed_array << pet if pet_shop[:pets] ==  breed
end
end
