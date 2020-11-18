require 'rails_helper'

RSpec.describe Post, type: :model do
  it('will return the messages from the database') do
    expect(Post.view_all).to be_a PG::Result
  end

  


end
