require File.expand_path('../../backlink', __FILE__)

module PageRankr
  class Backlinks
    class Alexa
      include Backlink
      
      def url
        "http://data.alexa.com/data"
      end

      def params
        {:cli => 10, :dat => "snbamz", :url => @site.to_s}
      end
      
      def xpath
        "//linksin/@num"
      end
    end
  end
end