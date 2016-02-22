class QueryCondition < ActiveRecord::Base
  belongs_to :query

  enum matcher: ['=', '>=', '<=', '<>']
  enum operator: ['AND', 'OR']
  enum field: [:name, :email, :age, :state, :work_role]
end
