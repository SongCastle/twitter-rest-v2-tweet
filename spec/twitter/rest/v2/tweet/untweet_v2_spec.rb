RSpec.describe Twitter::REST::V2::Tweet::UntweetV2 do
  describe '#untweet_v2' do
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
          deleted: true
        }
      }
    end

    before do
      stub_delete('/2/tweets/0123456789').to_return(
        body: mock_body.to_json,
        headers: { content_type: 'application/json; charset=UTF-8' }
      )
    end

    it 'delete a tweet by Twitter V2 API' do
      expect(client.untweet_v2('0123456789')).to eq(mock_body)
      expect(a_delete('/2/tweets/0123456789').with(body: {})).to have_been_made.once
    end
  end
end
