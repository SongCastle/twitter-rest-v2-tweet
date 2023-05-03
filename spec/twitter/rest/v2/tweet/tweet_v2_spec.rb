RSpec.describe Twitter::REST::V2::Tweet::TweetV2 do
  describe '#tweet_v2' do
    let(:client) do
      Twitter::REST::Client.new(
        consumer_key: '*****',
        consumer_secret: '*****',
        access_token: '*****',
        access_token_secret: '*****'
      )
    end
    let(:mock_body) do
      {
        data: {
          edit_history_tweet_ids: ['0123456789'],
          id: '0123456789',
          text: 'Yeah!'
        }
      }
    end

    before do
      stub_post('/2/tweets').to_return(
        body: mock_body.to_json,
        headers: { content_type: 'application/json; charset=UTF-8' }
      )
    end

    it 'post a tweet by Twitter V2 API' do
      expect(client.tweet_v2('Yeah!')).to eq(mock_body)
      expect(a_post('/2/tweets').with(body: { text: 'Yeah!' })).to have_been_made.once
    end
  end
end
