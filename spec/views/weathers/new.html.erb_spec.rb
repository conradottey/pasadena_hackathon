require 'spec_helper'

describe "weathers/new" do
  before(:each) do
    assign(:weather, stub_model(Weather,
      :weather_date => "MyString",
      :condition => "MyString"
    ).as_new_record)
  end

  it "renders new weather form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weathers_path, "post" do
      assert_select "input#weather_weather_date[name=?]", "weather[weather_date]"
      assert_select "input#weather_condition[name=?]", "weather[condition]"
    end
  end
end
