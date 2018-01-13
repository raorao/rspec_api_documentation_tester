require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Foo" do
  header "Content-Type", "application/json"
  parameter :json_attribute

  let(:json_attribute) { "some value" }
  let(:raw_post) { params.to_json }

  post "/foo" do
    example "should succeed" do
      do_request
      expect(status).to eq 200
    end
  end

  delete "/foo" do
    example "should succeed" do
      do_request
      expect(status).to eq 200
    end
  end

  patch "/foo" do
    example "should succeed" do
      do_request
      expect(status).to eq 200
    end
  end

  get "/foo" do
    example "should succeed" do
      do_request
      expect(status).to eq 200
    end
  end
end
