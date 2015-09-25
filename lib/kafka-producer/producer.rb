java_import 'kafka.producer.ProducerConfig'
java_import 'kafka.producer.KeyedMessage'
java_import 'kafka.javaapi.producer.Producer'
java_import 'kafka.producer.Partitioner'
java_import 'kafka.utils.VerifiableProperties'

class KafkaProducer
  def initialize
    props = java.util.Properties.new
    props.put("metadata.broker.list", "localhost:9092")
    props.put("serializer.class", "kafka.serializer.StringEncoder")

    config = ProducerConfig.new(props)

    @emitter = Producer.new(config)
  end

  def emit(key, message)
    data = KeyedMessage.new("test", key, message)
    @emitter.send(data)
  end

  def close
    @emitter.close
  end
end
