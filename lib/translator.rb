# require modules here
require 'yaml'

def load_library(file_path)
  result = {}
  dictionary = YAML.load_file(file_path)
  result[:get_meaning] = {}
  result[:get_emoticon] = {}
  dictionary.each {|key, value_array|
    result[:get_meaning][value_array[1]] = key;
    result[:get_emoticon][value_array[0]] = value_array[1]
  }
pp result
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end