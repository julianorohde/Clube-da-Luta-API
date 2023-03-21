require "rails_helper"

RSpec.describe VocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/vocations").to route_to("vocations#index")
    end

    it "routes to #show" do
      expect(get: "/vocations/1").to route_to("vocations#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/vocations").to route_to("vocations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/vocations/1").to route_to("vocations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/vocations/1").to route_to("vocations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/vocations/1").to route_to("vocations#destroy", id: "1")
    end
  end
end
