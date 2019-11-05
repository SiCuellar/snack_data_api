require 'rails_helper'

describe NutritionService do
  it 'Gets JSON data' do
    service = NutritionService.new
    snack_data = service.get_snack_data("Harvest Snaps")

    expect(service).to be_an_instance_of(NutritionService)
  end
end
