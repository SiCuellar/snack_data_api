class NutritionService
  def get_snack_data(snack_name)
    get_json("q=#{snack_name}&app_id=#{ENV["EDAMAM_APP_ID"]}&app_key=#{ENV["EDAMAM_API_KEY"]}")
  end

  private

  def get_json(path)
    response = conn.get(path)
    # binding.pry

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn = Faraday.new(url: "https://api.edamam.com/search?") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
