require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  i = 0
  coupons.each do |coupon|
  discount_item = find_item_by_name_in_collection(coupon[:item], cart)
  in_cart = !!discount_item
  valid_coupon = in_cart && discount_item[:count] >= coupon[:num]
  if discount_item && valid_coupon
    cart << { item: "#{discount_item[:item]} W/COUPON",
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
  cart.map do |item|
    if item[:clearance]
      item[:price] *= 0.8
    end
    key
  end
end

def checkout(cart, coupons)
  consolidated_cart = apply_clearance(apply_coupons(consolidate_cart(cart), coupons))
end
