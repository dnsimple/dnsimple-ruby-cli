module Dnsimple
  module Commands
    class CertificateSubmit
      def execute(args, options = {})
        domain_name = args.shift
        certificate_id = args.shift
        approver_email = args.shift
        
        domain = Domain.find(domain_name)
        certificate = Certificate.find(domain, certificate_id)
        certificate.submit(approver_email)

        puts "Certificate submitted, authorization by email required"
      end
    end
  end
end
