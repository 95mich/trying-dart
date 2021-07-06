void main(){
  var deck = new Deck();
  
  print(deck);
  print(deck.deal(5));
  print(deck);
}

class Deck{
  List<Card> cards = [];
  
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    
    for (var suit in suits){
      for (var rank in ranks){
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }
  
  toString(){
    return cards.toString();
  }
  
  shuffle(){
    cards.shuffle();
  }
  
  cardsWithSuit(String suit){
    
    /** ANOTHER WAY
    return cards.where((card) {
      return card.suit == suit;
    });
    **************/
    
    return cards.where((card) => card.suit == suit);
  }
  
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    
    return hand;
  }
}

class Card{
  String suit;
  String rank;
  
  Card(this.rank, this.suit);
  
  toString(){
    return '$rank of $suit';
  }
}
