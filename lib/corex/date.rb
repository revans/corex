class Date

  class << self
   
    ##
    # To date class method
    #
    # @return [Object] a date object
    #
    def to_date
      self
    end
  
    ##
    # Tomorrow class method
    #
    # @return [Object] a date object
    #
    def tomorrow
      ::Date.today.tomorrow
    end
  
    ##
    # Yesterday class method
    #
    # @return [Object] a date object
    #
    def yesterday
      ::Date.today.yesterday
    end
    
        
    ##
    # A Week from Today
    #
    def week_from_today
      ::Date.today + 7
    end
    
    
    ##
    # Week from tomorrow
    #
    def week_from_tomorrow
      ::Date.week_from_today + 1
    end
   
  end
  
  def format_date
    self
  end
  
  ##
  # Tomorrow
  #
  # @return [Object] a date object
  #
  def tomorrow
    self + 1
  end
  
  
  ##
  # Yesterday
  #
  # @return [Object] a date object
  #
  def yesterday
    self - 1
  end
  
  
  ##
  # To Time
  #
  # @return [Time Object]
  #
  def to_time(local = :utc)
    ::Time.send(local, year, month, day)
  end
  
end