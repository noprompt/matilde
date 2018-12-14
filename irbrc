require "pp"

def inside_emacs?
  !!ENV["INSIDE_EMACS"]
end

TERMINAL_COLORS = {
  # Basic colors
  :black => "\e[0;30m",
  :blue => "\e[0;34m",
  :cyan => "\e[0;36m",
  :green => "\e[0;32m",
  :purple => "\e[0;35m",
  :red => "\e[0;31m",
  :white => "\e[0;37m",
  :yellow => "\e[0;33m",

  # Bold colors
  :bold_black => "\e[1;30m",
  :bold_blue => "\e[1;34m",
  :bold_cyan => "\e[1;36m",
  :bold_green => "\e[1;32m",
  :bold_purple => "\e[1;35m",
  :bold_red => "\e[1;31m",
  :bold_white => "\e[1;37m",
  :bold_yellow => "\e[1;33m",

  # Bnderlined colors
  :underline_black => "\e[4;30m",
  :underline_blue => "\e[4;34m",
  :underline_cyan => "\e[4;36m",
  :underline_green => "\e[4;32m",
  :underline_purple => "\e[4;35m",
  :underline_red => "\e[4;31m",
  :underline_white => "\e[4;37m",
  :underline_yellow => "\e[4;33m",

  # Background colors
  :background_black => "\e[40m",
  :background_blue => "\e[44m",
  :background_cyan => "\e[46m",
  :background_green => "\e[42m",
  :background_purple => "\e[45m",
  :background_red => "\e[41m",
  :background_white => "\e[47m",
  :background_yellow => "\e[43m",

  # Control colors
  :reset_color => "\e[0m",
  :inverted => "\e[7m",
}

IRB.conf[:PROMPT][:MARKDOWN_1] = {
  :PROMPT_I => "```\n",
  :PROMPT_S => "",
  :PROMPT_C => "",
  :RETURN => "```\n\n%s\n\n"
}

IRB.conf[:PROMPT][:MARKDOWN_2] = {
  :PROMPT_I => "```\n# INPUT \n",
  :PROMPT_C => "",
  :PROMPT_N => "",
  :RETURN => "```\n\n```\n# OUTPUT\n%s\n```\n\n",
}

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = false

# @return [Array<String>]
def gem_paths
  Gem.path.flat_map do |path|
    Dir.glob("#{path}/gems/*")
  end
end

# @param [String] gem_name
# @return [Boolean]
# @raise [LoadError]
def require_gem(gem_name)
  if defined?(::Bundler)
    gem_pattern = Regexp.new(gem_name) 
    matching_paths = gem_paths.grep(gem_pattern)
    
    if matching_paths.any?
      matching_paths.each do |gem_path|
        $LOAD_PATH.push "#{gem_path}/lib"
      end

      begin
        require(gem_name)
      rescue LoadError => error
        # Attempt to load an transitive dependencies.
        require_gem(error.path)
        require_gem(gem_name)
      end
    else
      fail LoadError, "Gem #{gem_name} not found."
    end
  else
    require(gem_name)
  end
end

# @param [Module,Class] constant
# @return [String]
# @return [nil]
def constant_source_location(constant)
  method_name = constant.instance_methods(false).first
  if method_name
    location = constant.instance_method(method_name).source_location
    if location
      file_path, _ = location
      file_path
    end
  end
end

# Return an instance of `Proc` which when called evaluates `block` and
# pretty prints and returns it's value.
#
# @return [Proc]
def lambda_pp(&block)
  lambda do
    value = yield
    PP.pp value
    value
  end
end

module Noprompt
  module Refinements
    module String
      def word_wrap(s, width=78)
        s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
      end
    end
  end
end
