class Timer
  #write your code here
  @seconds 
  $minutes = 60
  $hours = 3600
  
  # Return toString format for timer
  def time_string 
    padded(@seconds/($hours)%60)   + ':' +
    padded(@seconds/($minutes)%60) + ':' +
    padded(@seconds%60)
  end

  def seconds
    @seconds = 0    
  end

  def seconds=(totlSeconds)
    @seconds = totlSeconds
  end

  # Return appropriate number of zeros for given time
  def padded(value)
    zero = '0'       
    sec = ''
    
    if (value < 10)
      sec += zero + value.to_s
    else 
      sec += value.to_s
    end   
    
    return sec
  end

end