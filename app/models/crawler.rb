
class Crawler < ApplicationRecord
    has_many :counters
    def pull_data
        result = `#{shell_command}`
        counters.create(count: result.to_i)
    end
end
