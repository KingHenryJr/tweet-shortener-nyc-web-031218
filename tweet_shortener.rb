def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => '&'
  }
end

def word_substituter(tweet)
    tweet.split.collect do |word|
      if dictionary.keys.include?(word.downcase) 
        word = dictionary[word.downcase]
      else word
    end  
  end
  .join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect {|word| puts word_substituter(word)}
end  

def selective_tweet_shortener(tweet)
  array = tweet.split
    if tweet.length > 140
      word_substituter(tweet)
    else return tweet
  end
end  
  
def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
  if tweet.length > 140 
    tweet[0..136] + "..."
  else
    tweet
  end  
end  
  