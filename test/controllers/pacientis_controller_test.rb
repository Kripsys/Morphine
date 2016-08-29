require 'test_helper'

class PacientisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacienti = pacientis(:one)
  end

  test "should get index" do
    get pacientis_url
    assert_response :success
  end

  test "should get new" do
    get new_pacienti_url
    assert_response :success
  end

  test "should create pacienti" do
    assert_difference('Pacienti.count') do
      post pacientis_url, params: { pacienti: { nume: @pacienti.nume, prenume: @pacienti.prenume, stare: @pacienti.stare, varsta: @pacienti.varsta } }
    end

    assert_redirected_to pacienti_url(Pacienti.last)
  end

  test "should show pacienti" do
    get pacienti_url(@pacienti)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacienti_url(@pacienti)
    assert_response :success
  end

  test "should update pacienti" do
    patch pacienti_url(@pacienti), params: { pacienti: { nume: @pacienti.nume, prenume: @pacienti.prenume, stare: @pacienti.stare, varsta: @pacienti.varsta } }
    assert_redirected_to pacienti_url(@pacienti)
  end

  test "should destroy pacienti" do
    assert_difference('Pacienti.count', -1) do
      delete pacienti_url(@pacienti)
    end

    assert_redirected_to pacientis_url
  end
end
