class QueryCondition < ActiveRecord::Base
  belongs_to :query

  enum matcher: ['=', '>=', '<=', '<>']
  enum field: [:full_name, :email, :age, :state, :work_role]

  def query_string
    [self.field, self.matcher, "'#{self.condition}'"].join(" ")
  end
end
