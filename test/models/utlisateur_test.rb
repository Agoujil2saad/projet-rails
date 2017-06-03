require 'test_helper'

class UtilisateurTest < ActiveSupport::TestCase
  def setup
    @utilisateur = Utlisateur.new(nom: "ExampleUser", email: "user@example.com",
password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @utilisateur.valid?
  end
  
  test "  nom doit etre presence" do
    @utilisateur.nom=""
    assert_not @utilisateur.valid?
end



test "email validation should reject invalid addresses" do
invalid_addresses = %w[user@example,comuser_at_foo.orguser.name@example. foo@bar_baz.com foo@bar+baz.com]
invalid_addresses.each do |invalid_address|
@utilisateur.email = invalid_address
assert_not @utilisateur.valid?, "#{invalid_address.inspect}should be invalid"
end 
end


test "email addresses should be unique" do
duplicate_user = @utilisateur.dup
@utilisateur.save
assert_not duplicate_user.valid?
end

  test "password should be present (nonblank)" do
@utilisateur.password = @utilisateur.password_confirmation = " " * 6
assert_not @utilisateur.valid?
end

test "password should have a minimum length" do
@utilisateur.password = @utilisateur.password_confirmation = "a" * 5
assert_not @utilisateur.valid?
end

end
