<h1>Resumo de Texto com IA</h1>

<%= form_with url: text_summaries_analise_path, method: :post, local: true do %>
  <div>
    <%= label_tag :query, "Digite ou cole seu texto abaixo:" %><br>
    <%= text_area_tag :query, @original_text, rows: 10, cols: 80, placeholder: "Cole aqui o texto que você quer resumir..." %>
  </div>

  <div style="margin-top: 20px;">
    <%= submit_tag "Analisar", class: "btn btn-primary" %>
  </div>
<% end %>

<!-- 🔍 Indicador de debug visual -->
<p><strong>[DEBUG]</strong> Summary present? <%= @summary.present? %> | Original present? <%= @original_text.present? %></p>

<% if @summary.present? %>
  <hr>
  <h2>Resumo Gerado:</h2>
  <div style="white-space: pre-wrap; background: white; padding: 10px; border-radius: 5px; border: 1px solid #ccc; color: black;">
    <%= simple_format(@summary) %>
  </div>

  <h3 style="margin-top: 30px;">📝 Texto Original:</h3>
  <div style="white-space: pre-wrap; background: #f0f0f0; padding: 10px; border-radius: 5px; border: 1px solid #ccc;">
    <%= simple_format(@original_text) %>
  </div>
<% elsif @error.present? %>
  <div style="color: red; margin-top: 20px;">
    <strong>Erro:</strong> <%= @error %>
  </div>
<% end %>
