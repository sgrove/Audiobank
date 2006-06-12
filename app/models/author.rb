class Author < User
	has_many :subscriptions
	has_many :subscribers, :through => :subscriptions, :select => "DISTINCT users.*"
	has_many :documents, :dependent => :destroy
end