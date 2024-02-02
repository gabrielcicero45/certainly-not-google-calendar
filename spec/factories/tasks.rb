FactoryBot.define do
    factory :task do
      name { 'Sample Task' }
      start_date { Date.today }
      end_date { Date.today + 1.week }
    end
  end
  