require 'rails_helper'

<<<<<<< HEAD
RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        username: "Username"
      ),
      User.create!(
        username: "Username"
      )
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Username".to_s), count: 2
  end
=======
RSpec.describe "users/index.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
>>>>>>> editTest
end
