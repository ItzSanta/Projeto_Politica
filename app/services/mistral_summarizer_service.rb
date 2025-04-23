require 'http'
require 'json'

class MistralSummarizerService
  MISTRAL_API_URL = "https://api.mistral.ai/v1/chat/completions"

  def initialize(api_key = ENV['MISTRAL_API_KEY'])
    @api_key = api_key
  end

  def generate_chat_response(query)
    response = HTTP.auth("Bearer #{@api_key}")
                   .post(MISTRAL_API_URL, json: {
                     model: "mistral-large-latest",
                     messages: [
                       { role: 'user', content: query }
                     ]
                   })

    data = JSON.parse(response.body.to_s)

    if response.status.success?
      data.dig("choices", 0, "message", "content")
    else
      Rails.logger.error("❌ Erro na API Mistral: #{response.status} - #{response.body.to_s}")
      nil
    end
  end
end
