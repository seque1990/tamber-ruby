require File.expand_path('../test_helper', __FILE__)

module Tamber
  class EventTest < Test::Unit::TestCase
    should "be trackable" do
      begin
        e = Tamber::Event.track(
          :user => 'user_jctzgisbru',
          :item =>  'item_i5gq90scc1',
          :behavior => 'mention',
          :hit => true,
          :context => ['recommended', 'detail-view'],
          :get_recs => {}
        )
        puts e
      end
    end

    should "be retrievable" do
      begin
        e = Tamber::Event.retrieve(
          :user => 'user_jctzgisbru',
        )
        puts e
      end
    end

    should "be batchable" do
      begin
        e = Tamber::Event.batch(
          :events => [
            {
              :user => 'user_y7u9sv6we0',
              :item => 'item_u9nlytt3w5',
              :behavior => 'mention'
            },
            {
              :user => 'user_y7u9sv6we0',
              :item => 'item_i5gq90scc1',
              :behavior => 'mention'
            }
          ]
        )
        puts e
      end
    end

  end
end
