class Config

  POLLING_INTERVAL = 120
  cattr_accessor :client

  def self.init
    # read this from env or something eventually #security
    self.client = Lol::Client.new "a988c5b1-e9d6-41bb-b2a2-c4806af607d6", {region: "na"}
  end
end
