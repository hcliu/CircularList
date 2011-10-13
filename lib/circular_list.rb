require "circular_list/version"

module CircularList
  class List
    def initialize(array)
      @arr = array
    end

    def size
      @arr.size
    end

    def fetch_previous(index=0)
      index.nil? ? nil : @arr.unshift(@arr.pop)[index]
    end

    def fetch_next(index=0)
      index.nil? ? nil : @arr.push(@arr.shift)[index]
    end
    
    def fetch_after(e)
      fetch_next(@arr.index(e))
    end
    
    def fetch_before(e)
      fetch_previous(@arr.index(e))
    end
  end
end
