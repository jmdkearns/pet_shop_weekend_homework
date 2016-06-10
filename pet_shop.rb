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


def pets_by_breed(pet_shop, expected_breed)
  breed_array = []

  for pet in pet_shop[:pets]
    breed_array << pet if pet[:breed] ==  expected_breed
  end
  return breed_array
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end


def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
   pet_shop[:pets].delete(pet) if pet[:name] == name
  end 
end


def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end


def customer_pet_count(customers)
  customers[:pets].length
end


def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end 


def customer_can_afford_pet(customer, new_pet)
  return true if customer[:cash] >= new_pet[:price]
  else return false
end
 