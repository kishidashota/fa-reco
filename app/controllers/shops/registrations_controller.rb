# frozen_string_literal: true

class Shops::RegistrationsController < Devise::RegistrationsController
  def after_update_path_for(resource)
    shop_path(id: current_shop.id)
  end
end