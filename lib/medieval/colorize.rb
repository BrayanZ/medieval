class Medieval::Colorize

  def self.colorize(text, color_code)
    "\033[#{color_code}m#{text}\033[0m"
  end

  def self.red(text)
    colorize(text, "31")
  end

  def self.green(text)
    colorize(text, "32")
  end

  def self.cyan text
    colorize text, "36"
  end
end
