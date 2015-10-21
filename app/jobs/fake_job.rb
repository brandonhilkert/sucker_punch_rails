class FakeJob
  include SuckerPunch::Job

  def perform
    sleep 2
    true
  end
end
