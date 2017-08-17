require "bargai"
require "thor"
require "open-uri"
require "nokogiri"

module Bargai
    class CLI < Thor
        desc "list [AREA]", "show list of shop where at AREA"
        def list(area)
            # 予めスクレイピングするxpathをjsonか何かで集めておいて、それを基にスクレイピングする
            # {
            #   "area": "hakodate",
            #   "list": "//div[@class='info']",
            #   "next": "paged"
            # }

            url = "http://www.bar-gai.com/?cat=18"
            charset = nil
            html = open(url) do |f|
                charset = f.charset
                f.read
            end
            doc = Nokogiri::HTML.parse(html, nil, charset)

            doc.xpath("//div[@class='info']").each do |info|
                p info.css("h4").inner_text
            end
            # 再帰的に次のページを読みに行く？
        end
    end
end
