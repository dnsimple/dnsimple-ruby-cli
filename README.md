## Commands

The commands available are:

For help:

- dnsimple help

The following commands are available for domains:

- dnsimple list
- dnsimple describe domain.com
- dnsimple create domain.com
- dnsimple register domain.com registrant_id
- dnsimple transfer domain.com registrant_id [authinfo]
- dnsimple delete domain.com
- dnsimple apply domain.com template_short_name

Please note that domain registration and transfer can only be done through the API for domains that do not require extended attributes. A future version of the API will add support for extended attributes.

The following commands are available for records:

- dnsimple record:create [--prio=priority] domain.com name type content [ttl]
- dnsimple record:list domain.com
- dnsimple record:delete domain.com record_id

The following commands are available for custom templates:

- dnsimple template:list
- dnsimple template:create name short_name [description]
- dnsimple template:delete short_name
- dnsimple template:list_records short_name
- dnsimple template:add_record short_name name type content [ttl] [prio]
- dnsimple template:delete_record short_name template_record_id

The following commands are available for managing contacts:

- dnsimple contact:list
- dnsimple contact:describe id
- dnsimple contact:create [name:value name:value ...]
- dnsimple contact:update id [name:value name:value ...]
- dnsimple contact:delete id

The following commands are available for purchasing certificates:

- dnsimple certificate:purchase domain.com name contact_id
- dnsimple certificate:submit id

The contact name/value pairs are:

- first_name
- last_name
- organization_name (optional)
- job_title (required if organization name is specified)
- address1
- address2 (optional)
- city
- state_province (also aliased as state)
- postal_code
- country
- email
- phone
- phone_ext (optional)
- fax (optional)
