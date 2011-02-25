require File.join(File.dirname(__FILE__), 'rails_app/spec/spec_helper')

describe "controller_generator" do
  describe "generators" do
    before do
      Rails.stub!(:env).and_return("development")
      @controller_name = 'styleguide'
      Styleguide::Generators::ControllerGenerator.start([@controller_name], :destination_root => File.expand_path(File.join("spec","rails_app")))
    end

    it "should generate the controller" do
       file = File.expand_path(File.join("spec","rails_app","app", "controllers", "styleguides_controller.rb"))
       File.exist?(file).should be(true)
    end
    it "should generate the view" do 
      file = File.expand_path(File.join("spec","rails_app","app", "views", "styleguides", "show.html.haml"))
       File.exist?(file).should be(true)
    end
    it "should generate the CSS" do
      file = File.expand_path(File.join("spec","rails_app","public", "stylesheets", "styleguides.css"))
       File.exist?(file).should be(true)
     end
   
# TODO  rspec for route
#   describe "ave", :type => :styleguides do
#     it "should recognize a specific styleguide route" do
#        params_from( :get, '/styleguide' ).should == {:controller => "styleguides", :action => "show"}
#     end
#   end

     
  end
end
