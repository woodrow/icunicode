# encoding: UTF-8
require File.dirname(__FILE__) + '/test_helper'

class UnicodeCollationTest < Test::Unit::TestCase
  should "sort using unicode collation" do
    assert_equal ["cafe", "café", "cafes"], ["cafe", "cafes", "café"].sort_by {|s| ICUnicode.unicode_sort_key(s)}
    assert_equal ["role", "Role", "rôle"],  ["rôle", "role", "Role"].sort_by {|s| ICUnicode.unicode_sort_key(s)}
    assert_equal ["cote", "coté", "côte", "côté"], ["côté", "coté", "cote", "côte"].sort_by {|s| ICUnicode.unicode_sort_key(s)}
  end

  should "transliterate" do
    assert_equal "ムクドナルデ'ス",       ICUnicode.transliterate("mcdonald's", 'Katakana')
    assert_equal "さむらい",              ICUnicode.transliterate("samurai", 'Hiragana')
    assert_equal "θε γρεατ γρεεκ",        ICUnicode.transliterate("the great greek", 'Greek')
    assert_equal "фром руссиа уитх лове", ICUnicode.transliterate("from russia with love", 'Cyrillic')
  end
end
