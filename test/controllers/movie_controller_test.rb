# frozen_string_literal: true

require 'test_helper'
require 'database_cleaner'

class MovieControllerTest < ActionDispatch::IntegrationTest
  DatabaseCleaner.clean

  test 'should get index' do
    get movies_path
    assert_response :success
  end

  test 'should get new' do
    get new_movie_path
    assert_response :success
  end

  test 'should get show' do
    get movie_url(Movie.last.id)
    assert_response :success
  end

  test 'should get edit' do
    get edit_movie_url(Movie.last.id)
    assert_response :success
  end

  test 'should not save on invalid params' do
    assert_no_difference('Movie.count') do
      @movie = Movie.new
      @movie.title = 'ABC'
      @movie.language = 'HINDI'
      @movie.collection = 10_000
      post movies_url(movie: { title: @movie.title, language: @movie.language, collection: @movie.collection })
      expected = { release_date: ["can't be blank"], collection: ['must be an integer'], budget: ["can't be blank", 'is not a number'], title: [], language: [], poster: [] }
      assert_equal(expected,
                   flash[:message],
                   msg = { release_date: ["can't be blank"], collection: ['must be an integer'], budget: ["can't be blank", 'is not a number'] })
    end
  end

  test 'should not save invalid poster format' do
    assert_no_difference('Movie.count') do
      file = Rack::Test::UploadedFile.new(Rails.root.join('public', 'robots.txt'), 'text')
      post movies_url, params: { movie: { title: 'ABC', language: 'Hindi', collection: 1000, budget: 500, release_date: '2018-10-10', poster: file } }
      expected = { poster: [{ error: 'Needs to be an image' }] }
      assert_equal(expected, flash[:errors], msg = nil)
    end
  end

  test 'should have all params with increment' do
    assert_difference('Movie.count') do
      post movies_url(movie: { title: 'ABC', language: 'HINDI', collection: 10_000, budget: 5000, release_date: '2018-12-12' })
    end
  end
end
