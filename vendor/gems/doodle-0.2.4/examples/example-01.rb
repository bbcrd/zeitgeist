$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'date'
require 'doodle'

class DateRange < Doodle 
  has :start_date do
    default { Date.today }
  end
  has :end_date do
    default { start_date }
  end
end

dr = DateRange.new
dr.start_date                   # => #<Date: 4909185/2,0,2299161>
dr.end_date                     # => #<Date: 4909185/2,0,2299161>

