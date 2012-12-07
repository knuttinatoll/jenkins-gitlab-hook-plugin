require 'jruby/core_ext'

java_import Java.jenkins.model.GlobalConfiguration

class GitlabWebHookConfiguration < Java.jenkins.model.GlobalConfiguration
#class GitlabWebHookConfiguration < Java.hudson.model.Descriptor
  include Jenkins::Model::DescribableNative

  LOGGER = Logger.getLogger(GitlabWebHookConfiguration.class.name)

  attr_accessor :conf_param

  def configure_all(*args)
    LOGGER.info "=============================="
    LOGGER.info args.inspect
    super(args)
  end

  #java_signature 'boolean configure(StaplerRequest, JSONObject)'
  def configure(req, json)
    LOGGER.info "1 =================================="
    LOGGER.info req.inspect
    LOGGER.info json.inspect
    LOGGER.info "2 =================================="
    req.bindJSON(this, json)
    LOGGER.info "3 =================================="
    save
    LOGGER.info "4 =================================="
    true
  end


  def self.getDisplayName()
    "Gitlab Web Hook Global Configuration"
  end
end

GitlabWebHookConfiguration.add_method_annotation("configure", java.lang.Override => {})
