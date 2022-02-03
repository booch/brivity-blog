require "rails_helper"

RSpec.describe "Comments", js: true do
  before do
    create(:post_with_comments)
  end

  context "when NOT logged in" do
    before do
      logout(:user)
    end

    it "does NOT allow commenting" do
      visit root_path
      click_link(Post.first.title)
      expect(page).to have_no_content("New comment")
    end
  end

  context "when logged in" do
    let(:user) { create(:user) }

    before do
      login_as(user, scope: :user)
    end

    it "allows commenting on a post" do
      visit root_path
      click_link(Post.first.title)
      click_on("New comment")
      fill_in "comment_body", with: "I'm commenting!"
      click_on "Create Comment"
      expect(page).to have_content("Comment was successfully created")
    end
  end
end
