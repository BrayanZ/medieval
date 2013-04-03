require 'medieval/core'
require 'medieval/wrappers'
require 'medieval/matchers'

Medieval::Wrappers.describe Array do
  Medieval::Wrappers.context "#lapucha" do
    Medieval::Wrappers.it "algo" do
      "s".should_eq "e"
    end
    Medieval::Wrappers.it "do something" do
      5.should_gt 3
    end
  end
end
