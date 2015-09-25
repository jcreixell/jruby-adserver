Cuba.use Rack::Session::Cookie, :secret => "__a_very_long_string__"
Cuba.use Rack::Protection

Cuba.define do
  on get do
    on "status" do
      response = status.to_json
      res.write response
      KafkaProducer.new.emit('status', response)
    end

    on "offers" do
      response = Offers.get.to_json
      res.write response
      KafkaProducer.new.emit('offers', response)
    end

    on root do
      res.redirect "/status"
    end
  end
end

def status
  {
    version: 1,
    result: 'ok'
  }
end

