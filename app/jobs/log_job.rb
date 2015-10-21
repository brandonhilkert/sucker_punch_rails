class LogJob
  include SuckerPunch::Job

  def perform
    sleep 1
    true
  end
end

