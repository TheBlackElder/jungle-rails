class Admin::DashboardController < ApplicationController
  def show
    @productsCount = Product.count

    @categoryCount = Category.count

  end
end

