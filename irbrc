IRB.conf[:PROMPT_MODE] = :SIMPLE

# @return [Array<String>]
def gem_paths
  Gem.path.flat_map { |path| Dir.glob("#{path}/gems/*") }
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
def constant_source_location(constant)
  method_name = constant.instance_methods(false).first
  constant.instance_method(method_name).source_location.first
end
