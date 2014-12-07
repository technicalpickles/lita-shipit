require "spec_helper"

describe Lita::Handlers::Shipit, lita_handler: true do

  it { is_expected.to route("shipit").to(:shipit) }
  it { is_expected.to route("ship it").to(:shipit) }
  it { is_expected.to route("YOU SHOULD PROBABLY JUST SHIP IT NOW").to(:shipit) }

  it "ships a shipit squirrel" do
    send_message("le ship it")
    expect(Lita::Handlers::Shipit::SQUIRRELS).to include(replies.last)
  end
end
