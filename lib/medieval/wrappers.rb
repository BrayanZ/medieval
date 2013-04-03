module Medieval
  class Wrappers

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

    def self.describe described_class
      print cyan described_class.to_s
      yield
    end

    def self.context text
      puts cyan text
      yield
    end

    def self.it text
      begin
        yield
        puts green text
      rescue MedievalException => e
        puts red text
        puts red e.message
      end
    end
  end
end
