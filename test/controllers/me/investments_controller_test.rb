require 'test_helper'

class Me::InvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @me_investment = me_investments(:one)
  end

  test "should get index" do
    get me_investments_url
    assert_response :success
  end

  test "should get new" do
    get new_me_investment_url
    assert_response :success
  end

  test "should create me_investment" do
    assert_difference('Me::Investment.count') do
      post me_investments_url, params: { me_investment: { description: @me_investment.description, name: @me_investment.name, obsevation: @me_investment.obsevation } }
    end

    assert_redirected_to me_investment_url(Me::Investment.last)
  end

  test "should show me_investment" do
    get me_investment_url(@me_investment)
    assert_response :success
  end

  test "should get edit" do
    get edit_me_investment_url(@me_investment)
    assert_response :success
  end

  test "should update me_investment" do
    patch me_investment_url(@me_investment), params: { me_investment: { description: @me_investment.description, name: @me_investment.name, obsevation: @me_investment.obsevation } }
    assert_redirected_to me_investment_url(@me_investment)
  end

  test "should destroy me_investment" do
    assert_difference('Me::Investment.count', -1) do
      delete me_investment_url(@me_investment)
    end

    assert_redirected_to me_investments_url
  end
end
