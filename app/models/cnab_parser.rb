class CNABParser

  def self.parse(file)
    f = file['datafile'].read
    f.each_line { |line|
      parse_line line
    }
  end

  private 

  def self.parse_line(line)
    store = StoreParser.parse line
    TransactionParser.parse line, store
  end

end