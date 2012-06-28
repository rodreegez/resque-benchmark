module Resque
  module Plugins
    module Benchmark
      def after_enqueue_with_benchmarking(*args)
        job = self.name
        id = args[0]
        start_time_key = "benchmark:started:#{job}:#{id}"
        Resque.redis.set start_time_key, Time.now.to_i.to_s
        start_time = Resque.redis.get start_time_key
      end

      def after_perform_with_benchmarking(*args)
        job = self.name
        id = args[0]

        start_time_key = "benchmark:started:#{job}:#{id}"

        start_time = Resque.redis.get start_time_key
        finish_time = Time.now.to_i
        duration = finish_time.to_i - start_time.to_i

        key = "benchmark:aggregate:#{job}"
        Resque.redis.sadd key, duration.to_s
        Resque.redis.del start_time_key
      end
    end
  end
end
