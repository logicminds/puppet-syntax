require "puppet-syntax/version"
require "puppet-syntax/manifests"
require "puppet-syntax/templates"
require "puppet-syntax/hiera"

module PuppetSyntax
  class << self
    attr_accessor :exclude_paths, :future_parser, :hieradata_paths

    def exclude_paths
      @exclude_paths || []
    end

    def future_parser
      @future_parser || false
    end

    def hieradata_paths
      @hieradata_paths || ["**/data/**/*.yaml", "hieradata/**/*.yaml", "hiera*.yaml"]
    end
  end
end
