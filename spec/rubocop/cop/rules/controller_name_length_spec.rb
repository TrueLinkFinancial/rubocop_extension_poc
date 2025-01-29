# frozen_string_literal: true

RSpec.describe RuboCop::Cop::TrueLinkRules::ControllerNameLength, :config do
  subject(:cop) { described_class.new(config) }
  let(:config) { RuboCop::Config.new }

  it "registers an offense for long controller names" do
    expect_offense(<<~RUBY)
      class SuperExtraVeryLongControllerNameThatExceedsLimitController
            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ TrueLinkRules/ControllerNameLength: #{described_class::MSG}
      end
    RUBY
  end

  it "does not register an offense for short controller names" do
    expect_no_offenses(<<~RUBY)
      class UsersController
      end
    RUBY
  end
end
