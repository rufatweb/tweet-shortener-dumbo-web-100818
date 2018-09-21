# Write your code here.
def dictionary

dictionary_hash = {
"hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
"be" => "b",
"you" => "u",
"at" => "@",
"and" => "&"}
end


def word_substituter(string_of_tweet)

array_of_string  = []
string_of_tweet.split(" ").each do |word|
    if dictionary.keys.include?(word.downcase)
      array_of_string << word = dictionary.values_at(word.downcase).join
    else
      array_of_string << word
    end
end
array_of_string.join(" ")
end



def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end



def shortened_tweet_truncator(tweet)
   if selective_tweet_shortener(tweet).length < 140
     tweet
   else
     tweet[0..136] + "..."
   end
end
