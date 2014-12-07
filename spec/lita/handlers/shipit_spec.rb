require "spec_helper"

describe Lita::Handlers::Shipit, lita_handler: true do

  it { is_expected.to route("shipit").to(:shipit) }
  it { is_expected.to route("ship it").to(:shipit) }
  it { is_expected.to route("YOU SHOULD PROBABLY JUST SHIP IT NOW").to(:shipit) }
end
