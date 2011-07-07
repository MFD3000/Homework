require 'spec_helper'

describe "payments/show.html.erb" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :product => "Product",
      :price => "9.99",
      :product_type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Product/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
