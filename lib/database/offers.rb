class Offers
  def self.get
    db = Sequel.connect("jdbc:mysql://localhost/jruby_adserver_development?user=root")
    db[:offers].to_a
  end
end

