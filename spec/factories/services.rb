FactoryBot.define do
      factory :service do
        name "Service1"
        rate 100
        category "Category1"

        factory :invalid_service do
          name nil
          rate "invalid"
          category nil
        end

        factory :updated_service do
          # insert attributes
        end

        factory :second_service do
          name "Service2"
          rate 100
          category "Category2"
        end
      end
    end

