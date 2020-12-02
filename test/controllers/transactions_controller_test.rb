require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  describe 'when a POST request is received at the webhook URL' do
    it 'should return a 200 OK response' do
      post default_webhook_transactions_url
      assert_response :ok
    end
  end
end
