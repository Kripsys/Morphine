json.extract! pacienti, :id, :nume, :prenume, :varsta, :stare, :created_at, :updated_at
json.url pacienti_url(pacienti, format: :json)