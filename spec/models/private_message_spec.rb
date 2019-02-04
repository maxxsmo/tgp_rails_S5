require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do
  before(:each) do
    @pm = PrivateMessage.create(content: "aaaaaalllllllloooo")
  end
end
