class User < ApplicationRecord
    acts_as_token_authenticatable
    has_secure_password
end
