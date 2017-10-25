class Users::RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    hash[:uid] = User.create_unique_string
    super
  end
end

# 通常の登録をできるようにする。
# deviseコントーローラーを継承している。
