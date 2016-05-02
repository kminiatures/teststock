module Splitbar
  class Knife
    # 1. 大きいものから切りだす
    # 1. 単体で割り切れるものを探す
    # 2. 組み合わせで割りきれるものを探す
    def cut(mm:, needs:)
      @needs = sort_needs(needs)
      p @needs
      box = Splitbar::Box.new(mm)

      search_and_pop(box, @needs)

      box.stock.sort{|a,b|
        a.parts[0] <=> b.parts[0]
      }
    end

    def search_and_pop(box, needs)
      needs.each do |part|
        while part[:number_of] > 0
          box.pop part[:mm]
          part[:number_of] -=1
        end
      end
    end

    def sort_needs(needs)
      needs.sort{|a,b| b[:mm] <=> a[:mm]}
    end
  end
end
