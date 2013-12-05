module DataNormalizationService

  def self.call file_contents
    checkouts = []
    checkout = file_contents.split(/\r?\n/)[1..-1]
    checkout.each do |entry|
      data = entry.split("\t")
      checkouts << data
    end
    checkouts
  end
end
