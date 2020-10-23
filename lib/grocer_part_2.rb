require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  i = 0
  coupons.each do |key|
  discount_item = find_item_by_name_in_collection(coupons[:item], cart)
  in_cart = !!discount_item
  valid_coupon = in_cart && coupons[:num] <= discount_item[:count]

    binding.pry
  end
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
