# frozen_string_literal: true

require 'test_helper'
require 'database_cleaner'

class TvControllerTest < ActionDispatch::IntegrationTest
	

	setup do
		user = create(:user)
   	sign_in user
	end

   test "should get index" do
   	get tvs_url
    assert_response :success
   end

   test "should get new" do
  	get new_tv_path
   	assert_response :success
   end

   test "should get show" do
   	create(:tv)
   	get tv_path(Tv.last.id)
   	assert_response :success
   end

   test "should get edit" do
   	create(:tv)
   	get edit_tv_path(Tv.last.id)
   	assert_response :success
   end

   test "should not save invalid params" do
   	assert_no_difference('Tv.count') do
	   	tv_attributes = FactoryBot.attributes_for(:tv)
	   	tv_attributes[:premire_date] = nil
	   	post tvs_url, params: { tv: tv_attributes }
	   	tv = @controller.instance_variable_get('@tv')
	    assert_equal(tv.errors.full_messages, ["Premire date can't be blank"])
	    assert_equal(0, Tv.count)
	  end
   end

   test 'should create tv shows' do
    assert_difference('Tv.count') do
	   	tv_attributes = FactoryBot.attributes_for(:tv)
      post tvs_url, params: { tv: tv_attributes }
      assert_equal(1, Tv.count)
    end
  end


  
end
