class MorseCodeDecoder
  # Define a hash that maps Morse code to characters.
  MORSE_CODE = {
    ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D",
    "." => "E", "..-." => "F", "--." => "G", "...." => "H",
    ".." => "I", ".---" => "J", "-.-" => "K", ".-.." => "L",
    "--" => "M", "-." => "N", "---" => "O", ".--." => "P",
    "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
    "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X",
    "-.--" => "Y", "--.." => "Z"
  }

  # Method to decode a single Morse code character.
  def self.decode_char(morse_char)
    MORSE_CODE[morse_char]
  end

  # Method to decode an entire Morse code word.
  def self.decode_word(morse_word)
    morse_word.split(" ").map { |morse_char| decode_char(morse_char) }.join
  end

  # Method to decode an entire Morse code message.
  def self.decode(message)
    words = message.split("   ")
    decoded_words = words.map { |word| decode_word(word) }
    decoded_words.join(" ")
  end
end

# Example usage to decode the message from the old bottle:
message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = MorseCodeDecoder.decode(message)
puts decoded_message
