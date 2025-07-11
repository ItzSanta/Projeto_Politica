class TextSummariesController < ApplicationController
  # Mostra o formulário (GET)
  def analise_form
    Rails.logger.info("🟢 Exibindo o formulário de resumo")
    @summary = nil
    @error = nil
  end

  # Processa o texto enviado (POST)
  def analise
    Rails.logger.info("📥 Recebendo requisição em analise")

    query = params[:query]
    Rails.logger.info("📝 Texto recebido do formulário: #{query.inspect}")

    if query.blank?
      Rails.logger.warn("⚠️ Nenhum texto enviado pelo usuário")
      @summary = nil
      @error = "Você precisa escrever algo para gerar o resumo."
      return render :analise_form
    end

    summary = MistralSummarizerService.new.generate_chat_response(query)

    if summary
      Rails.logger.info("✅ Resumo recebido com sucesso no controller")
      Rails.logger.info("📄 Resumo gerado pela IA:\n#{summary}")
      @summary = summary
      @original_text = query
      @error = nil
    else
      Rails.logger.warn("⚠️ Falha ao gerar o resumo no serviço")
      @summary = nil
      @original_text = query
      @error = "Erro ao gerar o resumo."
    end
    
    render :analise_form
  end
end