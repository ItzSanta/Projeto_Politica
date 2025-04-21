require "test_helper"

class TextSummariesControllerTest < ActionDispatch::IntegrationTest
  test "should get analise" do
    get text_summaries_analise_url
    assert_response :success
  end
end
