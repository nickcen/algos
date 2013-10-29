# encoding:utf-8

module Algos
  class StringAlgo
    def self.levenshtein_distance(str_1, str_2, len_1 = str_1.length, len_2 = str_2.length)
      return len_2 if len_1 == 0 
      return len_1 if len_2 == 0

      cost = str_1[len_1-1] == str_2[len_2-1] ? 0 : 1

      return [levenshtein_distance(str_1, str_2, len_1 - 1, len_2) + 1, 
        levenshtein_distance(str_1, str_2, len_1, len_2 - 1) + 1, 
        levenshtein_distance(str_1, str_2, len_1 - 1, len_2 - 1) + cost].min
    end
  end
end