class CartsController < ApplicationController
  def index
  end

  def show
    @cart = current_user.cart
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
