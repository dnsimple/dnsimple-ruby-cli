require 'spec_helper'
require 'dnsimple/commands/certificate_submit'

describe Dnsimple::Commands::CertificateSubmit do
  let(:domain) { Dnsimple::Domain.new(:name => domain_name) }
  let(:domain_name) { 'example.com' }
  let(:name) { 'www' }
  let(:certificate) { Dnsimple::Certificate.new(:id => certificate_id, :domain => domain) }
  let(:certificate_id) { 1 }
  let(:approver_email) { 'admin@example.com' }

  it "submits the certificate" do
    Dnsimple::Domain.stubs(:find).with(domain_name).returns(domain)
    Dnsimple::Certificate.expects(:find).with(domain, certificate_id).returns(certificate)
    certificate.expects(:submit).with(approver_email)
    Dnsimple::Commands::CertificateSubmit.new.execute([domain_name, certificate_id, approver_email])
  end
end
