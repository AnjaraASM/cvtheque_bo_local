class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'cv-theque@ASM-2023')
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            # header: { 'Authorization': 'Bearer <token>' }
            begin
                JWT.decode(token, 'cv-theque@ASM-2023', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end
    config.before_configuration do
     env_file = Rails.root.join('config', 'local_env.yml')
      YAML.safe_load(File.open(env_file)).each do |key, value|
      ENV[key.to_s] = value
     end if File.exists?(env_file)

    end
end
