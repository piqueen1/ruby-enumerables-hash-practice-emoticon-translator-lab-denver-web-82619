require "yaml"
require "pry"

def load_library(path)
  emoticons = YAML.load_file(path)
  lookup = {}
  lookup[:get_meaning] = {}
  lookup[:get_emoticon] = {}
  
  emoticons.each do |word, pairs|
      japanese = pairs[1]
      american = pairs[0]
      
      lookup[:get_meaning][japanese] = american
      lookup[:get_emoticon][american] = japanese
    binding.pry
  end
  
  lookup
  #binding.pry
end

=begin
  emoticons
=> {"angel"=>["O:)", "☜(⌒▽⌒)☞"],
 "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
 "bored"=>[":O", "(ΘεΘ;)"],
 "confused"=>["%)", "(゜.゜)"],
 "embarrased"=>[":$", "(#^.^#)"],
 "fish"=>["><>", ">゜))))彡"],
 "glasses"=>["8D", "(^0_0^)"],
 "grinning"=>["=D", "(￣ー￣)"],
 "happy"=>[":)", "(＾ｖ＾)"],
 "kiss"=>[":*", "(*^3^)/~☆"],
 "sad"=>[":'(", "(Ｔ▽Ｔ)"],
 "surprised"=>[":o", "o_O"],
 "wink"=>[";)", "(^_-)"]}
=end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end