class Query < ActiveRecord::Base
  has_many :query_conditions

  enum operator: ['AND', 'OR']

  accepts_nested_attributes_for :query_conditions

  def result
    Contact.where(query_string)
  end

  def query_string
    self.query_conditions.map { |q| q.query_string }.join(" #{self.operator} ")
  end
end
