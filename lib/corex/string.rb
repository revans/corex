class String
  ##
  # To Date
  #
  # Takes a string and creates a date object with it
  #
  def to_date
    return nil if self.blank?
    ::Date.new(*::Date._parse(self, false).values_at(:year, :mon, :mday))
  end
  
  
  ##
  # Format Date
  #
  def format_date
    self.to_date.to_s rescue ''
  end
end