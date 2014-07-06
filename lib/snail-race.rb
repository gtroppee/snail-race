require 'hitimes'
require 'hirb'
require 'ruby-progressbar'
require_relative 'snail-race/configuration'
require_relative 'snail-race/snail'
require_relative 'snail-race/announcements'
require_relative 'snail-race/details'
require_relative 'snail-race/report'

class SnailRace

  class << self
    attr_accessor :configuration
  end

  def self.go(*snails)
    repeats       = SnailRace.configuration.number_of_repeats
    progress_bar  = ProgressBar.create(total: snails.size * repeats)

    Announcements.start

    all_durations = snails.map do |snail|
      duration_samples = repeats.times.map do 
        progress_bar.increment
        Hitimes::Interval.measure { snail.crawl }
      end
      Details.new(snail, duration_samples).format_for_hirb
    end

    Report.display(all_durations)
    Announcements.end
  end

  ### CONFIGURATION
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end

SnailRace.configure do |config|
  config.number_of_repeats = 1
end
