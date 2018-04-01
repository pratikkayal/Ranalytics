#Twitter 1 - Working using my Keys
library("curl")
library("twitteR")
library("ROAuth")

download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

#different for each account
consumerKey="5VYfXB1MCZOHPpCIpvyIkjDim"
consumerSecret="aD5k6PTBiw1iQvuWgD4GA2aXOh2nRTH0u011mc5CfyOGSWaCIk"
AccessToken="801867900961177600-FqUCHYzKGRJ35s7SBNsRavPNahnkJhV"
AccessTokenSecret="7RN9MlhNz3vnhOxwh7IuQvfx8BiD1KNRm3CPOotP9txYX"

#Commont for all accounts except the keys

cred <- OAuthFactory$new(consumerKey=consumerKey, consumerSecret=consumerSecret, requestURL='https://api.twitter.com/oauth/request_token', accessURL='https://api.twitter.com/oauth/access_token', authURL='https://api.twitter.com/oauth/authorize')



cred$handshake(cainfo="cacert.pem") # it will take browser
save(cred, file="twitter authentication.Rdata") # store this to avoid asking again


#Load saved authentication cert
load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)

setup_twitter_oauth(consumerKey, consumerSecret, AccessToken, AccessTokenSecret)

search.string <- "#facebook"
no.of.tweets <- 100

tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets
