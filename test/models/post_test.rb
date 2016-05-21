require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "post is invalid without title and content" do
    invalid_post = Post.new title: nil, content: nil
    assert_not invalid_post.valid?
  end

  test "post can be saved with title and content" do
    post = Post.new title: posts(:one).title, content: posts(:one).content  
    assert post.valid?
  end

end
