class FooController < ApplicationController
  def bar
    puts params
    fail unless params[:json_attribute].present?
    render json: {}, status: :ok
  end
end
