require 'spec_helper'

describe "weathers/edit" do
  before(:each) do
    @weather = assign(:weather, stub_model(Weather,
      :weather_date => "MyString",
      :condition => "MyString"
    ))
  end

  it "renders the edit weather form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weather_path(@weather), "post" do
      assert_select "input#weather_weather_date[name=?]", "weather[weather_date]"
      assert_select "input#weather_condition[name=?]", "weather[condition]"
    end
  end
end
