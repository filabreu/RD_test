FactoryGirl.define do
  factory :contact do
    full_name "John Doe"
    email "johndoe@example.com"
    age '21'
    state 'SC'
    work_role "Diretor de Marketing"

    factory :contact_jane_doe do
      full_name "Jane Doe"
      email "janedoe@example.com"
      age '32'
      state 'SC'
      work_role "CEO"
    end

    factory :contact_john_smith do
      full_name "John Smith"
      email "johnsmith@example.com"
      age '50'
      state 'SP'
      work_role "Investor"
    end
  end

end
