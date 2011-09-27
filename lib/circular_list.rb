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
      @arr.unshift(@arr.pop)[index]
    end

    def fetch_next(index=0)
      @arr.push(@arr.shift)[index]
    end
  end
end
