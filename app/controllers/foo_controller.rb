class FooController < ApplicationController
  skip_before_action :verify_authenticity_token

  def bar
    puts params
    fail unless params[:json_attribute].present?
    render json: {}, status: :ok
  end
end
