require "bargai"
require "thor"

module Bargai
    class CLI < Thor
        desc "list [AREA]", "show list of shop where at AREA"
        def list(area)
            p area
        end
    end
end
