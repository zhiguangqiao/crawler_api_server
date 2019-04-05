require 'openssl'
require 'rsa_private_key'
require 'rsa_public_key'

class String
    def pri_encripto
        rsa_tool = OpenSSL::PKey::RSA.new my_pri_key
        rsa_tool.private_encrypt(self)
    end

    def pri_decripto
        rsa_tool = OpenSSL::PKey::RSA.new my_pri_key
        rsa_tool.private_decrypt(self)
    end

    def pub_encripto
        rsa_tool = OpenSSL::PKey::RSA.new my_pub_key
        rsa_tool.public_encrypt(self)
    end

    def pub_decripto
        rsa_tool = OpenSSL::PKey::RSA.new my_pub_key
        rsa_tool.public_decrypt(self)
    end
end
