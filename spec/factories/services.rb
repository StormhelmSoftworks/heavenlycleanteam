FactoryBot.define do
      factory :service do
        name "Service1"
        rate 100

        factory :invalid_service do
          name nil
          rate "invalid"
        end

        factory :updated_service do
          # insert attributes
        end

        factory :second_service do
          name "Service2"
          rate 100
        end
      end
    end

