require_relative "lib/caesar_cipher"

describe CaesarCipher do # ~> NoMethodError: undefined method `describe' for main:Object
  describe '#total_shift' do
    # a = 97, z = 122, A = 65, Z = 90
    it 'shifts "a" correctly with a small shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(97, 1)
      expect(test).to eq(1) # => 
    end
    it 'shifts "A" correctly with a small shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(65, 1)
      expect(test).to eq(1)
    end
    it 'shifts "z" correctly with a small shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(122, 1)
      expect(test).to eq(-25)
    end
    it 'shifts "Z" correctly with a small shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(90, 1)
      expect(test).to eq(-25)
    end

    it 'shifts "a" correctly with a large shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(97, 53)
      expect(test).to eq(1) # => 
    end
    it 'shifts "A" correctly with a large shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(65, 53)
      expect(test).to eq(1)
    end
    it 'shifts "z" correctly with a large shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(122, 53)
      expect(test).to eq(-25)
    end
    it 'shifts "Z" correctly with a large shift factor' do
      caesar = CaesarCipher.new
      test = caesar.total_shift(90, 53)
      expect(test).to eq(-25)
    end

  end

  describe '#encrypt' do
    it 'encrypts with small shift' do
      caesar = CaesarCipher.new
      test = caesar.encrypt("Hello",1)
      expect(test).to eq("Ifmmp")
    end
    it 'encrypts with large shift' do
      caesar = CaesarCipher.new
      test = caesar.encrypt("Hello",100)
      expect(test).to eq("Dahhk")
    end
  end
end

# >> "azAZ"
# >> "zyZY"

# ~> NoMethodError
# ~> undefined method `describe' for main:Object
# ~>
# ~> caesar_cipher_spec.rb:3:in `<main>'