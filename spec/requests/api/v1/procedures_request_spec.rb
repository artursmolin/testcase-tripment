require "rails_helper"

RSpec.describe "Api::V1::Procedures", type: :request do
  before do
    FactoryBot.create_list(:procedure, 50)
    Api::V1::Procedure.reindex
  end

  describe "PUT /api/v1/procedures" do
    it "returns status code 200" do
      get "/api/v1/procedures"
      expect(response).to have_http_status(:success)
    end

    it "returns all procedures" do
      get "/api/v1/procedures"
      expect(JSON.parse(response.body)["data"].size).to eq(Api::V1::Procedure.all.count)
    end
  end

  describe "PUT /api/v1/procedures?name='*'" do
    it 'returns procedures mathes to "M"' do
      get "/api/v1/procedures?name=Ma"
      expect(JSON.parse(response.body)["data"].size).to eq(Api::V1::Procedure.search(
        "Ma",
        fields: [{ name: :text_middle, name: :word_start }],
        misspellings: false,
      ).results.count)
    end

    it 'returns procedures mathes to "B" and first word starts from B' do
      get "/api/v1/procedures?name=B"
      expect(JSON.parse(response.body)["data"].size).to eq(Api::V1::Procedure.search(
        "B",
        fields: [{ name: :text_middle, name: :word_start }],
        misspellings: false,
      ).results.count)
    end
  end
end
