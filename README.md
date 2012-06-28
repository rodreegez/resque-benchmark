# Resque::Benchmark

Benchmark your Resque jobs. Monitor how long they take from queuing to completion.

## Installation

Add this line to your application's Gemfile:

    gem 'resque-benchmark'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resque-benchmark

## Usage

    class MyJob
      extend Resque::Plugins::Benchmark

      def perform(id)
        # do something with id
      end

    end

This will diff the enqueue/finish times and store them in a Redis set named `benchmark:aggregate:MyJob`. TODO: provide some kind of interface to this data.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
