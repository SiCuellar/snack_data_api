require 'rails_helper'

describe NutritionService do
  it 'Gets JSON data' do
    service = NutritionService.new
    snack_data = service.get_snack_data("Doritos")

    expect(service).to be_an_instance_of(NutritionService)
    expect(snack_data).to be_a(Array)
  end
end
