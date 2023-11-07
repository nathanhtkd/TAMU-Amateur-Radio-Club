require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/maintenance_items", type: :request do
  include Devise::Test::IntegrationHelpers

  let(:admin) do
    User.create!(
      fname: 'First',
      lname: 'Last',
      email: 'admin@gmail.com',
      password: 'password123',
      role: 'admin'
    )
  end

  before(:each) do
    sign_in admin
  end


  # This should return the minimal set of attributes required to create a valid
  # MaintenanceItem. As you add validations to MaintenanceItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      MaintenanceItem.create! valid_attributes
      get maintenance_items_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      maintenance_item = MaintenanceItem.create! valid_attributes
      get maintenance_item_url(maintenance_item)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_maintenance_item_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      maintenance_item = MaintenanceItem.create! valid_attributes
      get edit_maintenance_item_url(maintenance_item)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new MaintenanceItem" do
        expect {
          post maintenance_items_url, params: { maintenance_item: valid_attributes }
        }.to change(MaintenanceItem, :count).by(1)
      end

      it "redirects to the created maintenance_item" do
        post maintenance_items_url, params: { maintenance_item: valid_attributes }
        expect(response).to redirect_to(maintenance_item_url(MaintenanceItem.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new MaintenanceItem" do
        expect {
          post maintenance_items_url, params: { maintenance_item: invalid_attributes }
        }.to change(MaintenanceItem, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post maintenance_items_url, params: { maintenance_item: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested maintenance_item" do
        maintenance_item = MaintenanceItem.create! valid_attributes
        patch maintenance_item_url(maintenance_item), params: { maintenance_item: new_attributes }
        maintenance_item.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the maintenance_item" do
        maintenance_item = MaintenanceItem.create! valid_attributes
        patch maintenance_item_url(maintenance_item), params: { maintenance_item: new_attributes }
        maintenance_item.reload
        expect(response).to redirect_to(maintenance_item_url(maintenance_item))
      end
    end

    context "with invalid parameters" do

      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        maintenance_item = MaintenanceItem.create! valid_attributes
        patch maintenance_item_url(maintenance_item), params: { maintenance_item: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested maintenance_item" do
      maintenance_item = MaintenanceItem.create! valid_attributes
      expect {
        delete maintenance_item_url(maintenance_item)
      }.to change(MaintenanceItem, :count).by(-1)
    end

    it "redirects to the maintenance_items list" do
      maintenance_item = MaintenanceItem.create! valid_attributes
      delete maintenance_item_url(maintenance_item)
      expect(response).to redirect_to(maintenance_items_url)
    end
  end
end
