require 'lol'

client = Lol::Client.new "a988c5b1-e9d6-41bb-b2a2-c4806af607d6", {region: "na"}
# => <Lol::Client:0x000000020c0b28 @api_key="my_api_key", @region="euw", @cached=false>

# NEW! You can cache requests using Redis now
# ttl defaults to 900
client = Lol::Client.new "my_api_key", {region: "euw", redis: "redis://localhost:6379", ttl: 900}

# Available Requests
client.champion
# => Lol::ChampionRequest
client.game
# => Lol::GameRequest
client.league
# => Lol::LeagueRequest
client.stats
# => Lol::StatsRequest
client.summoner
# => Lol::SummonerRequest
client.team
# => Lol::TeamRequest

# Available methods for each request type
client.champion.get
# => Lol::Champion

client.game.recent(summoner_id)
# => Lol::Game

client.league.get(summoner_id)
# => Lol::League

client.stats.summary(summoner_id)
# => Lol::SummaryStats
client.stats.ranked(summoner_id)
# => Lol::RankedStats

client.summoner.masteries(summoner_id)
# => [Lol::Masterypage]
client.summoner.runes(summoner_id)
# => [Lol::Runepage]
client.summoner.by_name(name)
# => Lol::Summoner
client.summoner.get(summoner_id)
# => Lol::Summoner
client.summoner.name(summoner_ids)
# => [Hash]

client.team.get(summoner_id)
# => Array
