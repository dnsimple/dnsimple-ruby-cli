require 'spec_helper'
require 'dnsimple/commands/record_list'

describe Dnsimple::Commands::RecordList do
  before do
    Dnsimple::Record.expects(:all).with(instance_of(Dnsimple::Domain)).returns(records)
  end

  let(:records) { [ record ] }
  let(:record) { stub(:ttl => ttl, :id => id, :record_type => record_type, :name => name, :domain => domain, :content => content) }

  let(:ttl) { 'ttl' }
  let(:id) { 'id' }
  let(:record_type) { 'A' }
  let(:name) { 'name' }
  let(:content) { 'content' }

  let(:args) { [ domain_name ] }
  let(:domain_name) { 'example.com' }
  let(:domain) { Dnsimple::Domain.new(:name => domain_name) }

end

