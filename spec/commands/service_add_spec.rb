require 'spec_helper'
require 'dnsimple/commands/service_add'

describe Dnsimple::Commands::ServiceAdd do
  let(:domain_name) { 'example.com' }
  let(:short_name) { 'service-name' }

  let(:domain) { Dnsimple::Domain.new(:name => domain_name) }
  let(:service) { stub("service", :name => "Service") }

  before do
    Dnsimple::Domain.expects(:find).with(domain_name).returns(domain)
    Dnsimple::Service.expects(:find).with(short_name).returns(service)
  end

  it "adds a service to a domain" do
    domain.expects(:add_service).with(short_name)
    Dnsimple::Commands::ServiceAdd.new.execute([domain_name, short_name])
  end
end
