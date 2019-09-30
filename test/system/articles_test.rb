# frozen_string_literal: true

require "test_helper"
require "application_system_test_case"
require "open-uri"
require "byebug"

class ArticlesTest < ApplicationSystemTestCase
  def remove_uploaded_files
    FileUtils.rm_rf Rails.root.join("storage_test")
  end

  def after_teardown
    super
    remove_uploaded_files
  end

  test "creating an article" do
    Capybara.current_driver = :selenium_chrome_headless

    # Go to articles and create a new one
    visit "/admin/articles"
    assert_selector ".btn", text: "Create Article"
    click_link "Create Article"

    # Fill in title and attach demo image
    fill_in "Title", with: "Consectetuer adipiscing"
    attach_file("Image", Rails.root.join("..", "files", "johan.png"))
    click_button "Create Article"

    # Make sure the article was properly saved
    assert_equal Article.last.title, "Consectetuer adipiscing"

    # See if it can display the image
    visit articles_url
    src = all("img").last[:src].split("/").last
    assert_equal src, "johan.png"
  end
end
