class GameStatus

  def init(summoner_name)
    @client = Config::client || Config.init
    @summoner = client.summoner.by_name(summoner_name).first # possible nil
  end

  def refresh

  end
end
