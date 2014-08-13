require "openid"
require 'openid/extensions/sreg'
require 'openid/extensions/pape'
require 'openid/store/filesystem'




class WelcomeController < ApplicationController
  def index
  	openid_cusumber = OpenID::Consumer.new(session,OpenID::Store::Filesystem.new("#{ENV['HOME']}/tmp/openid"))
  	#logger.info openid_cusumber.inspect
  	r = openid_cusumber.begin "http://gnuhub.pip.verisignlabs.com/"
  	logger.info r.inspect
  	#logger.info r.status
  end

end
