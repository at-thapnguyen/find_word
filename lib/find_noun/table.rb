require 'terminal-table'
require 'rainbow'
module FinNoun
  class Table
    def initialize
      @table = Terminal::Table.new headings: %w(STT Noun Verb Adj)
      @table.align_column(0,:right)
    end

    def format(result)
      row = []
      row << Rainbow("#{a}").color(:green)
      row << Rainbow("#{nouns}").color(:blue)
      row <<""
      row << Rainbow(result['homepage_uri']).color(:blue)
      @table << row
    end

    def after
      puts @table.to_s
    end
  end
end