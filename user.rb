#chapter 1-2 Userクラスにメソッドを定義
class User
  attr_accessor :name, :address, :email

  def profile
    "#{name} (#{address})"
  end
end

#条件分岐
#ifは評価結果を返す。
number = 100
massage = if number > 50
  "numberは50より大きいです"
else
  "numberは50以下です"
end
#当てはまらない場合に分岐するunless
age = 16
unless age >=20
  puts "未成年者には酒類を提供できません"
else
  puts "おすすめのワインがあります"
end

#配列(Array)
a = [1,2,3]

a.each do |element|
  puts element
end

#ハッシュ

#シンボルをキーに
{ :tokyo => 11111, :niigata => 22222}
#文字列をキーに
{ "tokyo" => 11111, "niigata" => 22222}
#コロンを使っている(一般的な書き方)
{ tokyo: 11111, niigata: 22222}
#数字をキーに
{ 1 => 11111, 2 => 22222}

#メソッドの呼び出しに制限をかけるprivateメソッド

class Person
  def initialize(money)
    @money = money
  end

  def millionaire?
    money >= 10000000000
  end

  private 
  
  def money
    @money
  end
end

#継承

class PricedObject
  def total_price
    price * tax.rate
  end

  def price
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor : unit_price, :volum

  def price
    unit_price * volum
  end
end

#オーバーライド　親クラスのメソッドを子クラスのメソッドで上書きすること

class Book
  def title
    '本のタイトル'
  end
end

class Magazinge > Book
  def title
    '雑誌のタイトル'
  end
end

#モジュールによる共通化（Mix-in)
#お喋り能力
module Chatting
  def Chat
    "hello"
  end
end
#includeメソッドを使用する。
class Dog
  include Chatting
end
# dog = Dog.new
# poti.chat 
# => hello

#クラスメソッド メソッド名の前にselfをつける。
class tax
  def self.rate
    1.08
  end
end

#例外補足

begin
  (例外が発生するかもしれないコード)
rescue
  （例外に対応するコード）
ensure
  （例外がしてもしなくても必ず実行したいコード）
end


def メソッド
  (メソッドのコード)
rescue
  （例外に対応するコード）
ensure
  （例外がしてもしなくても必ず実行したいコード）
end

begin
  do_something
rescue SomeSpecialErorr => e
  puts"#{e.class}(#{e.message})が発生しました。処理を続行します。"
puts

end
# rescue SomeSpecialErorr => eは　rescue => e　で省略できる。

#nillガード
number || = 10
number || (number =10)

#ぼっち演算
ifや単純な分岐を短く簡潔に表現できる
object&.name

#%記法

全ての配列が文字列であれば
%w(apple banana)
['apple', 'banana']と一緒。
全ての配列がシンボルであれば
%i(apple banana)
[:apple, :banana]と一緒。
