class JobsController < ApplicationController
  def fake
    num = params[:num] || 200
    num.to_i.times { FakeJob.perform_async }
    render text: "#{num} jobs created"
  end

  def log
    num = params[:num] || 200
    num.to_i.times { LogJob.perform_async }
    render text: "#{num} jobs created"
  end
end
