require "spec_helper"

RSpec.describe BargaiCli do
  it "has a version number" do
    expect(BargaiCli::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
