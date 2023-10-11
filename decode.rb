# Method to decode a Morse code character to uppercase letter
def decode_char(morse_code)
  morse_to_alpha = {
    ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
    "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
    "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
    ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
    "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y",
    "--.." => "Z"
  }

  morse_to_alpha[morse_code] || " "  # Return space for unknown characters
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_word.split(" ").map { |morse_char| decode_char(morse_char) }.join
end

# Method to decode the entire message in Morse code
def decode(message)
  words = message.split("   ")
  decoded_words = words.map { |morse_word| decode_word(morse_word) }
  decoded_words.join(" ")
end
