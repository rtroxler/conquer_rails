require 'rails_helper'

RSpec.describe "Mains", type: :request do
  let!(:course) { create(:course) }

  describe "GET /" do
    it "shows the price" do
      get '/'
      expect(response.body).to include(course.title)
    end
  end
end
