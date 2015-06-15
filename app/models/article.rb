class Article < ActiveRecord::Base
	has_many :events
	has_many :users, through: :events
	default_scope {order ('created_at DESC')}
end
