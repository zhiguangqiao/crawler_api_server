json.partial! 'crawler', crawler: @crawler
json.counters @crawler.counters do |counter|
    json.date counter.updated_at.localtime.year.to_s + '/' + counter.updated_at.localtime.month.to_s + '/' + counter.updated_at.localtime.day.to_s
    json.count counter.count
end