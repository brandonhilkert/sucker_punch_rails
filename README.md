# Demo Rails application using Sucker Punch

This Rails application is used to serve as a demo for setting up [Sucker
Punch](https://github.com/brandonhilkert/sucker_punch).

## Web UI

The web UI can be found by running the local server (`rails s`) and browsing
to:

```
http://localhost:3000/sucker_punch
```

## Enqueue Jobs

Two types of jobs can be enqueued via Rails controllers: `FakeJob` and
`LogJob`.

```ruby
class FakeJob
  include SuckerPunch::Job

  def perform
    sleep 2
    true
  end
end
```

```ruby
class LogJob
  include SuckerPunch::Job

  def perform
    sleep 1
    true
  end
end
```

To enqueue them, browse to:

```
http://localhost:3000/jobs/fake?num=100
```

The query string `num` being the number of jobs of that type you'd like to
enqueue.

Likewise, to enqueue a `LogJob`, browse to:

```
http://localhost:3000/jobs/fake?num=100
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
