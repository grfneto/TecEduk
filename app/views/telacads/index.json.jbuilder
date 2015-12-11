json.array!(@telacads) do |telacad|
  json.extract! telacad, :id, :nome
  json.url telacad_url(telacad, format: :json)
end
