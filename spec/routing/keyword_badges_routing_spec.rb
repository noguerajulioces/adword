require "rails_helper"

RSpec.describe KeywordBadgesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/keyword_badges").to route_to("keyword_badges#index")
    end

    it "routes to #new" do
      expect(get: "/keyword_badges/new").to route_to("keyword_badges#new")
    end

    it "routes to #show" do
      expect(get: "/keyword_badges/1").to route_to("keyword_badges#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/keyword_badges/1/edit").to route_to("keyword_badges#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/keyword_badges").to route_to("keyword_badges#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/keyword_badges/1").to route_to("keyword_badges#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/keyword_badges/1").to route_to("keyword_badges#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/keyword_badges/1").to route_to("keyword_badges#destroy", id: "1")
    end
  end
end
