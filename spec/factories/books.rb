# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    description "MyText"
    isbn "MyString"
    thumbnail "MyString"
    slug "MyString"
    credits 1
    user nil
    category nil
  end
end
