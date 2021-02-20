class Item < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags
# before_commit :set_status, :set_price
end
