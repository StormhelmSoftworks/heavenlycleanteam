FactoryBot.define do
      factory :service do
        name "MyString"
        rate 1

        factory :invalid_service do
          name nil
          rate "invalid"
        end

        factory :updated_service do
          # insert attributes
        end

        factory :second_service do
          # insert attributes
        end
      end
    end

