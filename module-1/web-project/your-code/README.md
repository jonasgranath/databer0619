1 ---

In the first cell I'm just improrting all the stuff that I'll need. 

2 ---

In the second cell I use an API from the API "archive at federal reserve, https://research.stlouisfed.org/docs/api/. I choosed the API that gives me the 
date and name of press-releases form the fed. Pretty straight forward and easy to use API, you need to create an account though."
The progam processes the api and returns a csv file, that can be located in the output folder. 

3 ---

In the last cell, there is som scraping going on. I choosed to try scraping Donald trump twitter feed. It worked quite well but there is something wrong
with the dates, I think it's due to twitters scrolling function. The information is transferred into a pandas dataframe displaying simplytext and date of the tweet. The program then saves the information into a csv file that can be found in the Output folder. 

----
