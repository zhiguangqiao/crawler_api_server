json.extract! crawler, :id, :name, :shell_command, :desc
json.update crawler.updated_at.localtime.to_formatted_s(:db)  
