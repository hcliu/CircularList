require 'spec_helper'

module CircularList
  describe List do
    context "when array is empty" do
      it "fetch_next should return nil" do
        List.new([]).fetch_next.should eq nil
      end

      it "fetch_previous should return nil" do
        List.new([]).fetch_previous.should eq nil
      end
    end

    context "when array is nil" do
      it "fetch_next should return nil" do
        List.new([]).fetch_next.should eq nil
      end

      it "fetch_previous should return nil" do
        List.new([]).fetch_previous.should eq nil
      end
    end

    context "when array is non-empty" do
      context "and no index specified" do
        it "fetch_next should return next element" do
          c = List.new([1,2,3,4])
          c.fetch_next.should eq 2
          c.fetch_next.should eq 3
          c.fetch_next.should eq 4
          c.fetch_next.should eq 1
          c.fetch_next.should eq 2
        end

        it "fetch_previous should return previous element" do
          c = List.new([1,2,3,4])
          c.fetch_previous.should eq 4
          c.fetch_previous.should eq 3
          c.fetch_previous.should eq 2
          c.fetch_previous.should eq 1
          c.fetch_previous.should eq 4
        end
      end

      context "when a valid index is specified" do
        it "fetch_next should return next element after index" do
          c = List.new(['a','b','c','d'])
          c.fetch_next(2).should eq 'd'

          c = List.new(['a','b','c','d'])
          c.fetch_previous(0).should eq 'd'
        end

        it "fetch_previous should return previous element before index" do
          c = List.new(['a','b','c','d'])
          c.fetch_previous(2).should eq 'b'

          c = List.new(['a','b','c','d'])
          c.fetch_previous(0).should eq 'd'
        end
      end

      context "when an invalid index is specified" do
        it "fetch_next should return nil" do
          c = List.new(['a','b','c','d'])
          c.fetch_next(12).should eq nil

          c = List.new(['a','b','c','d'])
          c.fetch_next(12).should eq nil
        end

        it "fetch_previous should return nil" do
          c = List.new(['a','b','c','d'])
          c.fetch_previous(12).should eq nil

          c = List.new(['a','b','c','d'])
          c.fetch_previous(12).should eq nil
        end
      end

      context "when a valid element is specified" do
        it "fetch_after should return next element after the given element" do
          c = List.new(['a','b','c','d'])
          c.fetch_after('c').should eq 'd'

          c = List.new(['a','b','c','d'])
          c.fetch_after('d').should eq 'a'
        end

        it "fetch_before should return previous element before the given element" do
          c = List.new(['a','b','c','d'])
          c.fetch_before('c').should eq 'b'

          c = List.new(['a','b','c','d'])
          c.fetch_before('a').should eq 'd'
        end
      end
      
      context "when an ivalid element is specified" do
        it "fetch_after should return nil" do
          c = List.new(['a','b','c','d'])
          c.fetch_after('z').should eq nil

          c = List.new(['a','b','c','d'])
          c.fetch_after('z').should eq nil
        end

        it "fetch_before should return nil" do
          c = List.new(['a','b','c','d'])
          c.fetch_before('z').should eq nil

          c = List.new(['a','b','c','d'])
          c.fetch_before('z').should eq nil
        end
      end
      
    end


  end
end
