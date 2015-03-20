http.get SCOREBOARD, :new_wins

SCOREBOARD = "http://data.ncaa.com/jsonp/scoreboard/basketball-men/d1/2015/03/19/scoreboard.html?callback=ncaaScoreboard.dispScoreboard"

def new_wins(request, response)
  response.body
end
