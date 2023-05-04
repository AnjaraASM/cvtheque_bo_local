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
end
