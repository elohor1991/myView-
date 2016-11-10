require 'test_helper'

class MartistTest < ActiveSupport::TestCase
  def validateMakeupArtist
    @martist = Martist.new(lastname: "Joh" , firstname: "Akporehe", email: "elly@example.com", username: "lorelB", profilemesssage: "your beauty would be redefined")
  end 
  
  test "artist should be valid" do 
    
    assert @martist.valid?
    
  end
  
  test "lastname should be present" do
    @martist.lastname = " "
    
    assert_not @martist.valid?
  end
   
   test "last name length should not be too long" do
     
     @martist.lastname  = "a" * 20
     assert_not @martist.valid?
   end
  
test "last name length should not be too short" do
     
     @martist.lastname  = "aa"
     assert_not @martist.valid?
   end
  
   
   
    test "firstname should be present" do
    @martist.firstname = " "
    
    assert_not @martist.valid?
  end
   
   test "first name length should not be too long" do
     @martist.firstname  = "a" * 20
     assert_not @martist.valid?
   end
   
   
   test "firstbname length should not be too short" do
     @martist.firstname  = "aa" 
     assert_not @martist.valid?
     
   end
   
   test "email must be present" do
   end 

   
    test " profilemessage must be present" do
      @martist.profilemessage = " "
      assert_not @recipe.valid?
   end 
   
     test " profilemessage should not be too long" do
      @martist.profilemessage = "a" * 151
      assert_not @recipe.valid?
   end 
   
   test " profilemessage should not be too short" do
      @martist.profilemessage = "a" * 15
      assert_not @recipe.valid?
   end 
   
     
end 


