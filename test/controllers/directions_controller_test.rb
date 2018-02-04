require 'test_helper'

class DirectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get presidencia" do
    get directions_presidencia_url
    assert_response :success
  end

  test "should get gp" do
    get directions_gp_url
    assert_response :success
  end

  test "should get financeiro" do
    get directions_financeiro_url
    assert_response :success
  end

  test "should get projetos" do
    get directions_projetos_url
    assert_response :success
  end

  test "should get marketing" do
    get directions_marketing_url
    assert_response :success
  end

end
