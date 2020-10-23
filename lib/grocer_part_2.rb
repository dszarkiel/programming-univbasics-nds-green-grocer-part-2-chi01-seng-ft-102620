require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  i = 0
  coupons.each do |coupon|
  discount_item = find_item_by_name_in_collection(coupons[:item], cart)
  in_cart = !!discount_item
  valid_coupon = in_cart && discount_item[:count] >= coupon[:num]
  if discount_item && valid_coupon
    cart << { item: "#{coupons[:item]} W/ COUPON",
    price:  coupon[:cost]/coupon[:num],
    clearance: discount_item[:clearance],
    count: coupon[:num]
    }
    discount_item[:count] -= coupon[:num]
  end
  i += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
