class Transaction < ApplicationRecord
  enum operation: [:add, :remove]
end
