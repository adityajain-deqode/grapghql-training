require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(
      url: args[:url], description: args[:description]
    )
  end

  test 'create a new link with right params' do
    link = perform(
      url: 'http://example.com',
      description: 'description'
    )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
  end

  test 'create a new link with wrong params' do
    link = perform

    assert_equal link.valid?, false
    assert_nil link.description
    assert_nil link.url
    assert_equal link.errors.full_messages, ["Url can't be blank", "Description can't be blank"]
  end
end