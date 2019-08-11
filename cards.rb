class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
      @cards = []
      @cards << Card.new("A",:spades)
      @cards << Card.new("K",:spades)
      @cards << Card.new("Q",:spades)
      @cards << Card.new("J",:spades)
      @cards << Card.new("10",:spades)
      @cards << Card.new("9",:spades)
      @cards << Card.new("8",:spades)
      @cards << Card.new("7",:spades)
      @cards << Card.new("6",:spades)
      @cards << Card.new("5",:spades)
      @cards << Card.new("4",:spades)
      @cards << Card.new("3",:spades)
      @cards << Card.new("2",:spades)
      @cards << Card.new("A",:diamonds)
      @cards << Card.new("K", :diamonds)
      @cards << Card.new("Q", :diamonds)
      @cards << Card.new("J", :diamonds)
      @cards << Card.new("10", :diamonds)
      @cards << Card.new("9", :diamonds)
      @cards << Card.new("8", :diamonds)
      @cards << Card.new("7", :diamonds)
      @cards << Card.new("6", :diamonds)
      @cards << Card.new("5", :diamonds)
      @cards << Card.new("4", :diamonds)
      @cards << Card.new("3", :diamonds)
      @cards << Card.new("2", :diamonds)
      @cards << Card.new("A", :hearts)
      @cards << Card.new("K", :hearts)
      @cards << Card.new("Q", :hearts)
      @cards << Card.new("J", :hearts)
      @cards << Card.new("10", :hearts)
      @cards << Card.new("9", :hearts)
      @cards << Card.new("8", :hearts)
      @cards << Card.new("7", :hearts)
      @cards << Card.new("6", :hearts)
      @cards << Card.new("5", :hearts)
      @cards << Card.new("4", :hearts)
      @cards << Card.new("3", :hearts)
      @cards << Card.new("2", :hearts)
      @cards << Card.new("A", :cloves)
      @cards << Card.new("K", :cloves)
      @cards << Card.new("Q", :cloves)
      @cards << Card.new("J", :cloves)
      @cards << Card.new("10", :cloves)
      @cards << Card.new("9", :cloves)
      @cards << Card.new("8", :cloves)
      @cards << Card.new("7", :cloves)
      @cards << Card.new("6", :cloves)
      @cards << Card.new("5", :cloves)
      @cards << Card.new("4", :cloves)
      @cards << Card.new("3", :cloves)
      @cards << Card.new("2", :cloves)
  end

  def shuffle
      @cards.shuffle! 
  end

  def output
    #numbers = [1, 3, 5, 7]
    @cards.each { |card| card.output_card }
  end

  def deal
    # x = [4,5,6]
    # x => [4,5,6]                                                          
    # x.shift 
    # x  => [5, 6]

     # 1) Get first card inside of the deck 
     # 2) puts card info to console
     # 3) Now actually remove from the @cards deck
     puts "-----------------------"
     puts "Removing the following card"
     puts @cards[0].output_card
     @cards.shift
     puts "Removing card done"
     puts "-----------------------"
  end 

 # def Rankarr = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
  #    Suitarr = [:spades,:hearts,:cloves,:diamonds]
   #   return Rankarr.shift "of" Suitarr.shift
end

deck = Deck.new
deck.shuffle
puts " "
puts " "
puts " "
deck.output
deck.deal
puts " "
puts " ===================== After Removed Card ========================="
deck.output
deck.deal
puts " "
puts " ===================== After Second Removed Card ========================="
deck.output
