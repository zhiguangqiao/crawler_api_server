require 'json'
desc "update_all_crawler"
task :update_all_crawler  => :environment do   
    data = File.read(File.expand_path 'all_crawlers.json')
    json = JSON.parse data
    puts json
    json.each do |crawler_hash|
        crawler = Crawler.find_by shell_command: crawler_hash['shell_command']
        if crawler.blank?
            puts '未找到了'
            Crawler.create crawler_hash
        else
            puts '找到了'
            crawler.update crawler_hash
        end
    end
end