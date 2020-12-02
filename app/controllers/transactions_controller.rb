class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:default_webhook]
  def default_webhook
    render status: :ok, json: @controller.to_json
  end
end
