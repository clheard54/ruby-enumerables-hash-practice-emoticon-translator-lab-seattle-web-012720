# require modules here
require 'yaml'

def load_library(file_path)
  hash = {
    :get_meaning => {
      "☜(⌒▽⌒)☞" => "angel",
      "ヽ(ｏ`皿′ｏ)ﾉ" => "angry",
      "(ΘεΘ;)" => "bored",
      
      
confused:
  - "%)"
  - "(゜.゜)"
embarrased:
  - ":$" 
  - "(#^.^#)"
fish:
  - "><>"
  - ">゜))))彡"
glasses:
  - "8D"
  - "(^0_0^)"
grinning:
  - "=D"
  - "(￣ー￣)"
happy:
  - ":)"
  - "(＾ｖ＾)"
kiss:
  - ":*"
  - "(*^3^)/~☆"
sad:
  - ":'("
  - "(Ｔ▽Ｔ)"
surprised:
  - ":o"
  - "o_O"
wink:
  - ";)"
  - "(^_-)"
    },
    :get_emoticon => {}
  }


    it "the keys inside the 'get_meaning' hash are the Japanese emoticons" do
      emoticons = ["☜(⌒▽⌒)☞", "(ΘεΘ;)", "(￣ー￣)", "o_O", "(^_-)"]
      emoticons.each do |japanese_emoticon|
        if result['get_meaning'] then
          expect(result['get_meaning'].keys).to include(japanese_emoticon)
        else
          expect(result[:get_meaning].keys).to include(japanese_emoticon)
        end
      end
    end

    it "the emoticon keys inside the 'get_meaning' hash point to their meanings" do
      emoticons = {
        "☜(⌒▽⌒)☞" => "angel",
        "(ΘεΘ;)" => "bored",
        "o_O" => "surprised", 
        "(^_-)" => "wink"
      }
      emoticons.each do |japanese_emoticon,meaning|
        if result['get_meaning'] then
          expect(result['get_meaning'][japanese_emoticon]).to eq(meaning)
        else
          expect(result[:get_meaning][japanese_emoticon]).to eq(meaning)
        end
      end
    end

    it "the keys inside the 'get_emoticon' hash are the English emoticons" do
      emoticons = ["O:)", ":'(", ";)", ":$"]
      emoticons.each do |english_emoticon|
        if result['get_emoticon'] then
          expect(result['get_emoticon'].keys).to include(english_emoticon)
        else
          expect(result[:get_emoticon].keys).to include(english_emoticon)
        end
      end
    end

    it "the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents" do
      emoticons = {"O:)" => "☜(⌒▽⌒)☞", ":'(" => "(Ｔ▽Ｔ)", ";)" => "(^_-)"}
      emoticons.each do |english_emoticon,japanese_emoticon|
        if result['get_emoticon'] then
          expect(result['get_emoticon'][english_emoticon]).to eq(japanese_emoticon)
        else
          expect(result[:get_emoticon][english_emoticon]).to eq(japanese_emoticon)
        end
      end
    end

  end

end
  # code goes here
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end