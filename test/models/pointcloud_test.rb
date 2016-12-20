require 'test_helper'

class PointcloudTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  def setup
  	@pc = Pointcloud.new(name:"Test", attachment:"123456Tt!")
  end
  # end
end
