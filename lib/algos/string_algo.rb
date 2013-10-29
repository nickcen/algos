# encoding:utf-8

module Algos
  class StringAlgo
    def levenshtein_distance(str_1, str_2)
      _levenshtein_distance(str_1, str_1.length, str_2, str_2.length)
    end

    private
    def _levenshtein_distance(str_1, len_1, str_2, len_2)
      return len_2 if len_1 == 0 
      return len_1 if len_2 == 0

      cost = str_1[len_1-1] == str_2[len_2-1] ? 0 : 1

      return [_levenshtein_distance(str_1, len_1 - 1, str_2, len_2) + 1, 
        _levenshtein_distance(str_1, len_1    , str_2, len_2 - 1) + 1, 
        _levenshtein_distance(str_1, len_1 - 1, str_2, len_2 - 1) + cost].min
    end
  end
end