require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

    describe 'GET #index' do
      it "populates an array of all products" do
        makeup1 = create(:product, product_name: "makeup1", description: "good", price: 10)
        makeup2 = create(:product, product_name: "makeup2", description: "fantastic", price: 11)
        get :index
        expect(assigns(:products)).to match_array([makeup1, makeup2])
      end
    end

  #     it "renders the :index template" do
  #       get :index
  #       expect(response).to render_template :index
  #     end
  #   end
  #
  #   describe 'GET #show' do
  #     it "assigns the requested product to @product" do
  #       product = create(:product)
  #       get :show, id: product
  #       expect(assigns(:product)).to eq product
  #     end
  #
  #     it "renders the :show template" do
  #       product = create(:product)
  #       get :show, id: product
  #       expect(response).to render_template :show
  #     end
  #   end
  #
  #   describe 'GET #new' do
  #     it "assigns a new product to @product" do
  #       get :new
  #       expect(assigns(:product)).to be_a_new(product)
  #     end
  #     it "renders the :new template" do
  #       get :new
  #       expect(response).to render_template :new
  #     end
  #   end
  #
  #   describe 'GET #edit' do
  #     it "assigns the requested product to @product" do
  #       product = create(:product)
  #       get :edit, id: product
  #       expect(assigns(:product)).to eq product
  #     end
  #
  #     it "renders the :edit template" do
  #       product = create(:product)
  #       get :edit, id: product
  #       expect(response).to render_template :edit
  #     end
  #   end
  #
  #   describe 'POST #create' do
  #     context "with valid attributes" do
  #       it "saves the new product in the database" do
  #         expect{
  #           post :create, product: attributes_for(:product)
  #         }.to change(product, :count).by(1)
  #       end
  #       it "redirects to countries#show" do
  #         post :create, product: attributes_for(:product)
  #         expect(response).to redirect_to product_path(assigns[:product])
  #       end
  #     end
  #
  #     context "with invalid attributes" do
  #       it "does not save the new product in the database" do
  #         post :create, product: attributes_for(:product, name: nil)
  #         expect(product.count).to eq(0)
  #       end
  #       it "re-renders the :new template" do
  #         post :create, product: attributes_for(:product, name: nil)
  #         expect(response).to render_template :new
  #       end
  #     end
  #   end
  #
  #   describe 'PATCH #update' do
  #     before :each do
  #       @product = create(:product, name: 'Germany', population: 80000000)
  #     end
  #
  #     context "with valid attributes" do
  #       it "locates the requested @product" do
  #         patch :update, id: @product, product: attributes_for(:product)
  #         expect(assigns(:product)).to eq(@product)
  #       end
  #       it "changes @product's attributes" do
  #         patch :update, id: @product,
  #         product: attributes_for(:product,
  #         name: 'Switzerland',
  #         population: 8000000)
  #         @product.reload
  #         expect(@product.name).to eq('Switzerland')
  #         expect(@product.population).to eq(8000000)
  #       end
  #       it "redirects to the updated product" do
  #         patch :update, id: @product,
  #         product: attributes_for(:product)
  #         expect(response).to redirect_to @product
  #       end
  #     end
  #
  #     context "with invalid attributes" do
  #       it "does not change the product's attributes" do
  #         patch :update, id: @product,
  #         product: attributes_for(:product,
  #         name: 'Swizterland',
  #         population: nil)
  #         @product.reload
  #         expect(@product.name).not_to eq('Swizterland')
  #         expect(@product.population).to eq(80000000)
  #       end
  #       it "re-renders the :edit template" do
  #         patch :update, id: @product,
  #         product: attributes_for(:product, name: nil)
  #         expect(response).to render_template :edit
  #       end
  #     end
  #   end
  #
  #   describe 'DELETE #destroy' do
  #     before :each do
  #       @product = create(:product)
  #     end
  #
  #     it "deletes the product from the database" do
  #       expect{
  #         delete :destroy, id: @product
  #       }.to change(product,:count).by(-1)
  #     end
  #
  #     it "redirects to countries#index" do
  #       delete :destroy, id: @product
  #       expect(response).to redirect_to countries_path
  #     end
  #   end
  # end

end
