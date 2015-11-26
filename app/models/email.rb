class Email < ActiveRecord::Base
  validates_format_of :name, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
