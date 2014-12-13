require 'spec_helper'
require 'dnsimple/certificate'
require 'dnsimple/commands/certificate_purchase'

describe Dnsimple::Commands::CertificatePurchase do
  let(:domain_name) { 'example.com' }
  let(:domain)      { stub('domain') }
  let(:contact)     { stub('contact') }

  context "with one argument" do
    before :each do
      Dnsimple::Domain.stubs(:find).returns(domain)
      Dnsimple::Contact.stubs(:find).returns(contact)
    end

    it "purchases the certificate" do
      Dnsimple::Certificate.expects(:purchase).
        with(domain, 'certname', contact).
        returns(stub("certificate", :fqdn => domain_name))

      Dnsimple::Commands::CertificatePurchase.new.
        execute([domain_name, 'certname', stub('contact id')])
    end
  end
end
