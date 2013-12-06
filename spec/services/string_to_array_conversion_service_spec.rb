require 'spec_helper'

describe StringToArrayConversionService do
  it 'converts a specifically formatted text file into an array of comma separated values' do
    data = "purchaser name\titem description\titem price\tpurchase count\tmerchant address\tmerchant name\nSnake Plissken\t$10 off $20 of food\t10.0\t2\t987 Fake St\tBob's Pizza"

    data_normalization_array = StringToArrayConversionService.call(data)
    test_word_in_array_query_format = data_normalization_array[0][1]
    expect(test_word_in_array_query_format).to eq("$10 off $20 of food")
  end
end
