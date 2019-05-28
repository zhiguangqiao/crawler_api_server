

desc "run_all_crawler"
task :run_all_crawler  => :environment do   
    Crawler.all.each do |crawler|
        crawler.pull_data
    end
end