require 'rails_helper'


describe HotGlue::InstallGenerator do
  # include GeneratorsTestHelper

  def setup
    @path = File.expand_path("lib", Rails.root)
    $LOAD_PATH.unshift(@path)
  end

  def teardown
    $LOAD_PATH.delete(@path)
  end


  describe "ERROR RESPONESES" do
    it "with missing object name should give error" do

      response = Rails::Generators.invoke("hot_glue:install")
      expect(File.exist?("spec/dummy/app/views/layouts/_flash_notices.haml")).to be(true)
    end

    it "with no auth an no current user should give me error" do


    end

    it "with no auth no current user and no auth identifier" do

    end

    it "with xxx" do

    end
  end

  describe "GOOD RESPONSES" do
    # test good builds here
  end
end


