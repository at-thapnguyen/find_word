# require "find_noun/version"
require "engtagger"
require "pry"
require 'terminal-table'
require 'rainbow'
# require "find_noun/table.rb"

class Convert

  def initialize 
    @tagger = EngTagger.new
  #   @table = Terminal::Table.new :headings => ['Type', 'Length','Word']
  #   @table.align_column(0,:right)
  end

  def process(str)
    # Convert input to lowercase.
    sentence = []
    str = str.upcase

    # Extract nouns, prefixing each with one of the
    # above adjectives into sentences of 2 words.
    tagged_str = @tagger.add_tags(str)
    verbs = @tagger.get_verbs(tagged_str).keys
    nouns = @tagger.get_nouns(tagged_str).keys
    adjectives = @tagger.get_adjectives(tagged_str).keys

    nouns.join(' ')
    verbs.join(' ')
    adjectives.join(' ')
    # binding.pry
    # sentence << nouns
    # sentence << verbs
    data = {'Nouns': nouns, 'Verbs': verbs, 'Adjectives': adjectives}
    format(data)
  end

  def format(data)
    
    data.each do |key, value|
      if value.length == 0 
      puts "No #{key} in your sentence"
      else
      puts "Type : #{key}"
      puts "Count: #{value.length}"
      puts "Word : #{value.join(',')}"
      puts "--------------------"
          
      end
    end
  end
end
 a =Convert.new
 p a.process("My name is thap")


