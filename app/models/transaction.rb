class Transaction < ApplicationRecord
  belongs_to :provider
  belongs_to :event
end
