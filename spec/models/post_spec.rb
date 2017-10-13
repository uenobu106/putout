repuire 'rails_helper'

describe Post do
  #commentが入っていれば有効であること
  it "is valid with comment" do
    post = Post.new(
      comment:"こんにちは")
    expect(post).to be_valid
  end
end
