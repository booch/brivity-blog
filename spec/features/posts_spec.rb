require "rails_helper"

RSpec.describe "Posts", js: true do
  context "when NOT logged in" do
    before do
      logout(:user)
    end

    it "does NOT allow posting" do
      visit root_path
      expect(page).to have_no_content("New post")
    end
  end

  context "when logged in" do
    let(:user) { create(:user) }

    before do
      login_as(user, scope: :user)
    end

    it "allows posting" do
      visit root_path
      click_on "New post"
      fill_in "Title", with: "First Post!"
      fill_in "Body", with: "Today is a good day!"
      click_on "Create Post"
      expect(page).to have_content("Post was successfully created")
    end
  end
end
