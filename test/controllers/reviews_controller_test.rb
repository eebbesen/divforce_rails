require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review for employer" do
    assert_difference('Review.count') do
      post reviews_url, params: { review: { reviewee: @review.reviewee, reviewer: @review.reviewer, text: @review.text, reviewable_type: 'employer' } }
    end

    assert_redirected_to "#{employers_url}/#{@review.reviewee}"
  end

  test "should create review for recruiter" do
    assert_difference('Review.count') do
      post reviews_url, params: { review: { reviewee: @review.reviewee, reviewer: @review.reviewer, text: @review.text, reviewable_type: 'recruiter' } }
    end

    assert_redirected_to "#{recruiters_url}/#{@review.reviewee}"
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { reviewee: @review.reviewee, reviewer: @review.reviewer, text: @review.text } }
    assert_redirected_to "#{employers_url}/#{@review.reviewee}"
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
