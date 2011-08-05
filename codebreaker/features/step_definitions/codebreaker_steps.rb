class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  CodeBreaker::Game.new.start
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end
