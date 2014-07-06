class Report
  extend Hirb::Console

  HEADERS = { name: 'Name', min: 'Minimum', max: 'Maximum', sum: 'Total', avg: 'Average' }
  FIELDS  = [:name, :min, :max, :sum, :avg]

  def self.display(all_durations)
    table all_durations.sort_by{|hash| hash[:avg]}, headers: HEADERS, fields: FIELDS
  end
end