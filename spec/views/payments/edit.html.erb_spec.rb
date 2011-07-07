require 'spec_helper'

describe "payments/edit.html.erb" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :product => "MyString",
      :price => "9.99",
      :product_type => 1
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path(@payment), :method => "post" do
      assert_select "input#payment_product", :name => "payment[product]"
      assert_select "input#payment_price", :name => "payment[price]"
      assert_select "input#payment_product_type", :name => "payment[product_type]"
    end
  end
end
