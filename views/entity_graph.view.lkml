view: entity_graph {
  sql_table_name: `@{ENTITY_GRAPH}`
  ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: additional__fields {
    hidden: yes
    sql: ${TABLE}.additional.fields ;;
    group_label: "Additional"
    group_item_label: "Fields"
  }

  dimension: entity__administrative_domain {
    type: string
    sql: ${TABLE}.entity.administrative_domain ;;
    group_label: "Entity"
    group_item_label: "Administrative Domain"
  }

  dimension: entity__application {
    type: string
    sql: ${TABLE}.entity.application ;;
    group_label: "Entity"
    group_item_label: "Application"
  }

  dimension: entity__artifact__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.first_seen_time.nanos ;;
    group_label: "Entity Artifact First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.first_seen_time.seconds ;;
    group_label: "Entity Artifact First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__ip {
    type: string
    sql: ${TABLE}.entity.artifact.ip ;;
    group_label: "Entity Artifact"
    group_item_label: "IP"
  }

  dimension: entity__artifact__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.last_seen_time.nanos ;;
    group_label: "Entity Artifact Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.last_seen_time.seconds ;;
    group_label: "Entity Artifact Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__location__city {
    type: string
    sql: ${TABLE}.entity.artifact.location.city ;;
    group_label: "Entity Artifact Location"
    group_item_label: "City"
  }

  dimension: entity__artifact__location__country_or_region {
    type: string
    sql: ${TABLE}.entity.artifact.location.country_or_region ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Country or Region"
  }

  dimension: entity__artifact__location__desk_name {
    type: string
    sql: ${TABLE}.entity.artifact.location.desk_name ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Desk Name"
  }

  dimension: entity__artifact__location__floor_name {
    type: string
    sql: ${TABLE}.entity.artifact.location.floor_name ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Floor Name"
  }

  dimension: entity__artifact__location__name {
    type: string
    sql: ${TABLE}.entity.artifact.location.name ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Name"
  }

  dimension: entity__artifact__location__region_latitude {
    type: number
    sql: ${TABLE}.entity.artifact.location.region_latitude ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Region Latitude"
  }

  dimension: entity__artifact__location__region_longitude {
    type: number
    sql: ${TABLE}.entity.artifact.location.region_longitude ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Region Longitude"
  }

  dimension: entity__artifact__location__state {
    type: string
    sql: ${TABLE}.entity.artifact.location.state ;;
    group_label: "Entity Artifact Location"
    group_item_label: "State"
  }

  dimension: entity__artifact__network__application_protocol {
    type: number
    sql: ${TABLE}.entity.artifact.network.application_protocol ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Application Protocol"
  }

  dimension: entity__artifact__network__application_protocol_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.application_protocol_version ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Application Protocol Version"
  }

  dimension: entity__artifact__network__asn {
    type: string
    sql: ${TABLE}.entity.artifact.network.asn ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Asn"
  }

  dimension: entity__artifact__network__carrier_name {
    type: string
    sql: ${TABLE}.entity.artifact.network.carrier_name ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Carrier Name"
  }

  dimension: entity__artifact__network__community_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.community_id ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Community ID"
  }

  dimension: entity__artifact__network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.chaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: entity__artifact__network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.ciaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: entity__artifact__network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.client_hostname ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: entity__artifact__network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.client_identifier ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: entity__artifact__network__dhcp__file {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.file ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "File"
  }

  dimension: entity__artifact__network__dhcp__flags {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.flags ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: entity__artifact__network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.giaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: entity__artifact__network__dhcp__hlen {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.hlen ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: entity__artifact__network__dhcp__hops {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.hops ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: entity__artifact__network__dhcp__htype {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.htype ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: entity__artifact__network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.lease_time_seconds ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: entity__artifact__network__dhcp__opcode {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.opcode ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: entity__artifact__network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dhcp.options ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Options"
  }

  dimension: entity__artifact__network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.requested_address ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: entity__artifact__network__dhcp__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.seconds ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.siaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: entity__artifact__network__dhcp__sname {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.sname ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: entity__artifact__network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.transaction_id ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: entity__artifact__network__dhcp__type {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.type ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Type"
  }

  dimension: entity__artifact__network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.yiaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: entity__artifact__network__direction {
    type: number
    sql: ${TABLE}.entity.artifact.network.direction ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Direction"
  }

  dimension: entity__artifact__network__dns__additional {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.additional ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Additional"
  }

  dimension: entity__artifact__network__dns__answers {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.answers ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Answers"
  }

  dimension: entity__artifact__network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.authoritative ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: entity__artifact__network__dns__authority {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.authority ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Authority"
  }

  dimension: entity__artifact__network__dns__id {
    type: number
    sql: ${TABLE}.entity.artifact.network.dns.id ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "ID"
  }

  dimension: entity__artifact__network__dns__opcode {
    type: number
    sql: ${TABLE}.entity.artifact.network.dns.opcode ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Opcode"
  }

  dimension: entity__artifact__network__dns__questions {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.questions ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Questions"
  }

  dimension: entity__artifact__network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.recursion_available ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: entity__artifact__network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.recursion_desired ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: entity__artifact__network__dns__response {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.response ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Response"
  }

  dimension: entity__artifact__network__dns__response_code {
    type: number
    sql: ${TABLE}.entity.artifact.network.dns.response_code ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Response Code"
  }

  dimension: entity__artifact__network__dns__truncated {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.truncated ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Truncated"
  }

  dimension: entity__artifact__network__dns_domain {
    type: string
    sql: ${TABLE}.entity.artifact.network.dns_domain ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Dns Domain"
  }

  dimension: entity__artifact__network__email__bcc {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.bcc ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Bcc"
  }

  dimension: entity__artifact__network__email__bounce_address {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.bounce_address ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Bounce Address"
  }

  dimension: entity__artifact__network__email__cc {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.cc ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Cc"
  }

  dimension: entity__artifact__network__email__from {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.`from` ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "From"
  }

  dimension: entity__artifact__network__email__mail_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.mail_id ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Mail ID"
  }

  dimension: entity__artifact__network__email__reply_to {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.reply_to ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Reply To"
  }

  dimension: entity__artifact__network__email__subject {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.subject ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Subject"
  }

  dimension: entity__artifact__network__email__to {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.`to` ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "To"
  }

  dimension: entity__artifact__network__ftp__command {
    type: string
    sql: ${TABLE}.entity.artifact.network.ftp.command ;;
    group_label: "Entity Artifact Network Ftp"
    group_item_label: "Command"
  }

  dimension: entity__artifact__network__http__method {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.method ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "Method"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__annotation {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.annotation ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Annotation"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__browser {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.browser ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__browser_engine_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.browser_engine_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser Engine Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__browser_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.browser_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__carrier {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.carrier ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Carrier"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__device {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.device ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Device"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__device_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.device_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Device Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__family {
    type: number
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.family ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Family"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__google_toolbar_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.google_toolbar_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Google Toolbar Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_configuration {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_configuration ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_configuration_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_configuration_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_profile {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_profile ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Profile"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_profile_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_profile_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Profile Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__locale {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.locale ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Locale"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__messaging {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.messaging ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Messaging"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__messaging_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.messaging_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Messaging Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__os {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.os ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "OS"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__os_variant {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.os_variant ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "OS Variant"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__platform {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.platform ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Platform"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__security {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.security ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Security"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__sub_family {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.sub_family ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Sub Family"
  }

  dimension: entity__artifact__network__http__referral_url {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.referral_url ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: entity__artifact__network__http__response_code {
    type: number
    sql: ${TABLE}.entity.artifact.network.http.response_code ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: entity__artifact__network__http__user_agent {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.user_agent ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: entity__artifact__network__ip_protocol {
    type: number
    sql: ${TABLE}.entity.artifact.network.ip_protocol ;;
    group_label: "Entity Artifact Network"
    group_item_label: "IP Protocol"
  }

  dimension: entity__artifact__network__organization_name {
    type: string
    sql: ${TABLE}.entity.artifact.network.organization_name ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Organization Name"
  }

  dimension: entity__artifact__network__parent_session_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.parent_session_id ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Parent Session ID"
  }

  dimension: entity__artifact__network__received_bytes {
    type: number
    sql: ${TABLE}.entity.artifact.network.received_bytes ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Received Bytes"
  }

  dimension: entity__artifact__network__received_packets {
    type: number
    sql: ${TABLE}.entity.artifact.network.received_packets ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Received Packets"
  }

  dimension: entity__artifact__network__sent_bytes {
    type: number
    sql: ${TABLE}.entity.artifact.network.sent_bytes ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Sent Bytes"
  }

  dimension: entity__artifact__network__sent_packets {
    type: number
    sql: ${TABLE}.entity.artifact.network.sent_packets ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Sent Packets"
  }

  dimension: entity__artifact__network__session_duration__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.session_duration.nanos ;;
    group_label: "Entity Artifact Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__session_duration__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.session_duration.seconds ;;
    group_label: "Entity Artifact Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__session_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.session_id ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Session ID"
  }

  dimension: entity__artifact__network__smtp__helo {
    type: string
    sql: ${TABLE}.entity.artifact.network.smtp.helo ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Helo"
  }

  dimension: entity__artifact__network__smtp__is_tls {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.smtp.is_tls ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Is Tls"
  }

  dimension: entity__artifact__network__smtp__is_webmail {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.smtp.is_webmail ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Is Webmail"
  }

  dimension: entity__artifact__network__smtp__mail_from {
    type: string
    sql: ${TABLE}.entity.artifact.network.smtp.mail_from ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Mail From"
  }

  dimension: entity__artifact__network__smtp__message_path {
    type: string
    sql: ${TABLE}.entity.artifact.network.smtp.message_path ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Message Path"
  }

  dimension: entity__artifact__network__smtp__rcpt_to {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.smtp.rcpt_to ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Rcpt To"
  }

  dimension: entity__artifact__network__smtp__server_response {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.smtp.server_response ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Server Response"
  }

  dimension: entity__artifact__network__tls__cipher {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.cipher ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Cipher"
  }

  dimension: entity__artifact__network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.issuer ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: entity__artifact__network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.md5 ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_after.nanos ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_after.seconds ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_before.nanos ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_before.seconds ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.serial ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: entity__artifact__network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.sha1 ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: entity__artifact__network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.sha256 ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: entity__artifact__network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.subject ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: entity__artifact__network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.version ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: entity__artifact__network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.ja3 ;;
    group_label: "Entity Artifact Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: entity__artifact__network__tls__client__server_name {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.server_name ;;
    group_label: "Entity Artifact Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: entity__artifact__network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.tls.client.supported_ciphers ;;
    group_label: "Entity Artifact Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: entity__artifact__network__tls__curve {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.curve ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Curve"
  }

  dimension: entity__artifact__network__tls__established {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.tls.established ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Established"
  }

  dimension: entity__artifact__network__tls__next_protocol {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.next_protocol ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: entity__artifact__network__tls__resumed {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.tls.resumed ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Resumed"
  }

  dimension: entity__artifact__network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.issuer ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: entity__artifact__network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.md5 ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_after.nanos ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_after.seconds ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_before.nanos ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_before.seconds ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.serial ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: entity__artifact__network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.sha1 ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: entity__artifact__network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.sha256 ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: entity__artifact__network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.subject ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: entity__artifact__network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.version ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: entity__artifact__network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.ja3s ;;
    group_label: "Entity Artifact Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: entity__artifact__network__tls__version {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.version ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Version"
  }

  dimension: entity__artifact__network__tls__version_protocol {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.version_protocol ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: entity__artifact__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.day_count ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__artifact__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.day_max ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__artifact__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.day_max_sub_domains ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__artifact__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.rolling_max ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__artifact__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__asset__asset_id {
    type: string
    sql: ${TABLE}.entity.asset.asset_id ;;
    group_label: "Entity Asset"
    group_item_label: "Asset ID"
  }

  dimension: entity__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.availability_zone ;;
    group_label: "Entity Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.asset.attribute.cloud.environment ;;
    group_label: "Entity Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.id ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.name ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.parent ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.asset.attribute.cloud.project.resource_type ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.type ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.id ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.name ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.parent ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.type ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.attribute.creation_time.nanos ;;
    group_label: "Entity Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.attribute.creation_time.seconds ;;
    group_label: "Entity Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.asset.attribute.labels ;;
    group_label: "Entity Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.attribute.last_update_time.nanos ;;
    group_label: "Entity Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.attribute.last_update_time.seconds ;;
    group_label: "Entity Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.asset.attribute.permissions ;;
    group_label: "Entity Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.asset.attribute.roles ;;
    group_label: "Entity Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__asset__category {
    type: string
    sql: ${TABLE}.entity.asset.category ;;
    group_label: "Entity Asset"
    group_item_label: "Category"
  }

  dimension: entity__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.creation_time.nanos ;;
    group_label: "Entity Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.creation_time.seconds ;;
    group_label: "Entity Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__deployment_status {
    type: number
    sql: ${TABLE}.entity.asset.deployment_status ;;
    group_label: "Entity Asset"
    group_item_label: "Deployment Status"
  }

  dimension: entity__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.first_discover_time.nanos ;;
    group_label: "Entity Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.first_discover_time.seconds ;;
    group_label: "Entity Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.first_seen_time.nanos ;;
    group_label: "Entity Asset First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.first_seen_time.seconds ;;
    group_label: "Entity Asset First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__hardware {
    hidden: yes
    sql: ${TABLE}.entity.asset.hardware ;;
    group_label: "Entity Asset"
    group_item_label: "Hardware"
  }

  dimension: entity__asset__hostname {
    type: string
    sql: ${TABLE}.entity.asset.hostname ;;
    group_label: "Entity Asset"
    group_item_label: "Hostname"
  }

  dimension: entity__asset__ip {
    hidden: yes
    sql: ${TABLE}.entity.asset.ip ;;
    group_label: "Entity Asset"
    group_item_label: "IP"
  }

  dimension: entity__asset__labels {
    hidden: yes
    sql: ${TABLE}.entity.asset.labels ;;
    group_label: "Entity Asset"
    group_item_label: "Labels"
  }

  dimension: entity__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.last_boot_time.nanos ;;
    group_label: "Entity Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.last_boot_time.seconds ;;
    group_label: "Entity Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.last_discover_time.nanos ;;
    group_label: "Entity Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.last_discover_time.seconds ;;
    group_label: "Entity Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__location__city {
    type: string
    sql: ${TABLE}.entity.asset.location.city ;;
    group_label: "Entity Asset Location"
    group_item_label: "City"
  }

  dimension: entity__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.entity.asset.location.country_or_region ;;
    group_label: "Entity Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: entity__asset__location__desk_name {
    type: string
    sql: ${TABLE}.entity.asset.location.desk_name ;;
    group_label: "Entity Asset Location"
    group_item_label: "Desk Name"
  }

  dimension: entity__asset__location__floor_name {
    type: string
    sql: ${TABLE}.entity.asset.location.floor_name ;;
    group_label: "Entity Asset Location"
    group_item_label: "Floor Name"
  }

  dimension: entity__asset__location__name {
    type: string
    sql: ${TABLE}.entity.asset.location.name ;;
    group_label: "Entity Asset Location"
    group_item_label: "Name"
  }

  dimension: entity__asset__location__region_latitude {
    type: number
    sql: ${TABLE}.entity.asset.location.region_latitude ;;
    group_label: "Entity Asset Location"
    group_item_label: "Region Latitude"
  }

  dimension: entity__asset__location__region_longitude {
    type: number
    sql: ${TABLE}.entity.asset.location.region_longitude ;;
    group_label: "Entity Asset Location"
    group_item_label: "Region Longitude"
  }

  dimension: entity__asset__location__state {
    type: string
    sql: ${TABLE}.entity.asset.location.state ;;
    group_label: "Entity Asset Location"
    group_item_label: "State"
  }

  dimension: entity__asset__mac {
    hidden: yes
    sql: ${TABLE}.entity.asset.mac ;;
    group_label: "Entity Asset"
    group_item_label: "Mac"
  }

  dimension: entity__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.entity.asset.nat_ip ;;
    group_label: "Entity Asset"
    group_item_label: "Nat IP"
  }

  dimension: entity__asset__network_domain {
    type: string
    sql: ${TABLE}.entity.asset.network_domain ;;
    group_label: "Entity Asset"
    group_item_label: "Network Domain"
  }

  dimension: entity__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.entity.asset.platform_software.platform ;;
    group_label: "Entity Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: entity__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.entity.asset.platform_software.platform_patch_level ;;
    group_label: "Entity Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: entity__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.entity.asset.platform_software.platform_version ;;
    group_label: "Entity Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: entity__asset__product_object_id {
    type: string
    sql: ${TABLE}.entity.asset.product_object_id ;;
    group_label: "Entity Asset"
    group_item_label: "Product Object ID"
  }

  dimension: entity__asset__software {
    hidden: yes
    sql: ${TABLE}.entity.asset.software ;;
    group_label: "Entity Asset"
    group_item_label: "Software"
  }

  dimension: entity__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.system_last_update_time.nanos ;;
    group_label: "Entity Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.system_last_update_time.seconds ;;
    group_label: "Entity Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__type {
    type: number
    sql: ${TABLE}.entity.asset.type ;;
    group_label: "Entity Asset"
    group_item_label: "Type"
  }

  dimension: entity__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.entity.asset.vulnerabilities ;;
    group_label: "Entity Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: entity__asset_id {
    type: string
    sql: ${TABLE}.entity.asset_id ;;
    group_label: "Entity"
    group_item_label: "Asset ID"
  }

  dimension: entity__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.cloud.availability_zone ;;
    group_label: "Entity Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__cloud__environment {
    type: number
    sql: ${TABLE}.entity.cloud.environment ;;
    group_label: "Entity Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Entity Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Entity Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.cloud.project.attribute.labels ;;
    group_label: "Entity Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Entity Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Entity Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.cloud.project.attribute.permissions ;;
    group_label: "Entity Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.cloud.project.attribute.roles ;;
    group_label: "Entity Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.cloud.project.id ;;
    group_label: "Entity Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.cloud.project.name ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.cloud.project.parent ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.cloud.project.product_object_id ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.cloud.project.resource_subtype ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.cloud.project.resource_type ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.cloud.project.type ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Entity Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Entity Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.cloud.vpc.attribute.labels ;;
    group_label: "Entity Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Entity Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Entity Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.cloud.vpc.attribute.permissions ;;
    group_label: "Entity Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.cloud.vpc.attribute.roles ;;
    group_label: "Entity Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.id ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.name ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.parent ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.product_object_id ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.resource_subtype ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.resource_type ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.type ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__admin__account_type {
    type: number
    sql: ${TABLE}.entity.domain.admin.account_type ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__admin__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Admin Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__admin__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.environment ;;
    group_label: "Entity Domain Admin Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__admin__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.id ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__admin__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.name ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__admin__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__admin__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__admin__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__admin__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.type ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__admin__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Admin Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Admin Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.attribute.labels ;;
    group_label: "Entity Domain Admin Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__admin__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Admin Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Admin Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.attribute.permissions ;;
    group_label: "Entity Domain Admin Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__admin__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.attribute.roles ;;
    group_label: "Entity Domain Admin Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__admin__company_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.company_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__admin__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.department ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Department"
  }

  dimension: entity__domain__admin__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.email_addresses ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__admin__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.employee_id ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__admin__first_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.first_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "First Name"
  }

  dimension: entity__domain__admin__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.first_seen_time.nanos ;;
    group_label: "Entity Domain Admin First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.first_seen_time.seconds ;;
    group_label: "Entity Domain Admin First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.group_identifiers ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__admin__groupid {
    type: string
    sql: ${TABLE}.entity.domain.admin.groupid ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__admin__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.hire_date.nanos ;;
    group_label: "Entity Domain Admin Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.hire_date.seconds ;;
    group_label: "Entity Domain Admin Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__last_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.last_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__admin__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.middle_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__admin__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.city ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__admin__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.country_or_region ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__admin__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.desk_name ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__admin__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.floor_name ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__admin__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.name ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.office_address.region_latitude ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__admin__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.office_address.region_longitude ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__admin__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.state ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__admin__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.city ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__admin__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.country_or_region ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__admin__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.desk_name ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__admin__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.floor_name ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__admin__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.name ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.personal_address.region_latitude ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__admin__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.personal_address.region_longitude ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__admin__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.state ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__admin__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.phone_numbers ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__admin__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.product_object_id ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__admin__role_description {
    type: string
    sql: ${TABLE}.entity.domain.admin.role_description ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__admin__role_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.role_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__admin__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.termination_date.nanos ;;
    group_label: "Entity Domain Admin Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.termination_date.seconds ;;
    group_label: "Entity Domain Admin Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.time_off ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__admin__title {
    type: string
    sql: ${TABLE}.entity.domain.admin.title ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Title"
  }

  dimension: entity__domain__admin__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.admin.user_authentication_status ;;
    group_label: "Entity Domain Admin"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__admin__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.user_display_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__admin__user_role {
    type: number
    sql: ${TABLE}.entity.domain.admin.user_role ;;
    group_label: "Entity Domain Admin"
    group_item_label: "User Role"
  }

  dimension: entity__domain__admin__userid {
    type: string
    sql: ${TABLE}.entity.domain.admin.userid ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Userid"
  }

  dimension: entity__domain__admin__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.admin.windows_sid ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__audit_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.audit_update_time.nanos ;;
    group_label: "Entity Domain Audit Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__audit_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.audit_update_time.seconds ;;
    group_label: "Entity Domain Audit Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__account_type {
    type: number
    sql: ${TABLE}.entity.domain.billing.account_type ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__billing__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Billing Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__billing__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.environment ;;
    group_label: "Entity Domain Billing Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__billing__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.id ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__billing__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.name ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__billing__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__billing__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__billing__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__billing__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.type ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__billing__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Billing Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Billing Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.attribute.labels ;;
    group_label: "Entity Domain Billing Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__billing__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Billing Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Billing Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.attribute.permissions ;;
    group_label: "Entity Domain Billing Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__billing__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.attribute.roles ;;
    group_label: "Entity Domain Billing Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__billing__company_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.company_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__billing__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.department ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Department"
  }

  dimension: entity__domain__billing__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.email_addresses ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__billing__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.employee_id ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__billing__first_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.first_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "First Name"
  }

  dimension: entity__domain__billing__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.first_seen_time.nanos ;;
    group_label: "Entity Domain Billing First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.first_seen_time.seconds ;;
    group_label: "Entity Domain Billing First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.group_identifiers ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__billing__groupid {
    type: string
    sql: ${TABLE}.entity.domain.billing.groupid ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__billing__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.hire_date.nanos ;;
    group_label: "Entity Domain Billing Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.hire_date.seconds ;;
    group_label: "Entity Domain Billing Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__last_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.last_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__billing__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.middle_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__billing__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.city ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__billing__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.country_or_region ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__billing__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.desk_name ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__billing__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.floor_name ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__billing__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.name ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.office_address.region_latitude ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__billing__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.office_address.region_longitude ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__billing__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.state ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__billing__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.city ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__billing__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.country_or_region ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__billing__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.desk_name ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__billing__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.floor_name ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__billing__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.name ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.personal_address.region_latitude ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__billing__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.personal_address.region_longitude ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__billing__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.state ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__billing__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.phone_numbers ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__billing__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.product_object_id ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__billing__role_description {
    type: string
    sql: ${TABLE}.entity.domain.billing.role_description ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__billing__role_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.role_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__billing__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.termination_date.nanos ;;
    group_label: "Entity Domain Billing Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.termination_date.seconds ;;
    group_label: "Entity Domain Billing Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.time_off ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__billing__title {
    type: string
    sql: ${TABLE}.entity.domain.billing.title ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Title"
  }

  dimension: entity__domain__billing__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.billing.user_authentication_status ;;
    group_label: "Entity Domain Billing"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__billing__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.user_display_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__billing__user_role {
    type: number
    sql: ${TABLE}.entity.domain.billing.user_role ;;
    group_label: "Entity Domain Billing"
    group_item_label: "User Role"
  }

  dimension: entity__domain__billing__userid {
    type: string
    sql: ${TABLE}.entity.domain.billing.userid ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Userid"
  }

  dimension: entity__domain__billing__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.billing.windows_sid ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__contact_email {
    type: string
    sql: ${TABLE}.entity.domain.contact_email ;;
    group_label: "Entity Domain"
    group_item_label: "Contact Email"
  }

  dimension: entity__domain__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.creation_time.nanos ;;
    group_label: "Entity Domain Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.creation_time.seconds ;;
    group_label: "Entity Domain Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__expiration_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.expiration_time.nanos ;;
    group_label: "Entity Domain Expiration Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__expiration_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.expiration_time.seconds ;;
    group_label: "Entity Domain Expiration Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.first_seen_time.nanos ;;
    group_label: "Entity Domain First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.first_seen_time.seconds ;;
    group_label: "Entity Domain First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__iana_registrar_id {
    type: number
    sql: ${TABLE}.entity.domain.iana_registrar_id ;;
    group_label: "Entity Domain"
    group_item_label: "Iana Registrar ID"
  }

  dimension: entity__domain__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.last_seen_time.nanos ;;
    group_label: "Entity Domain Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.last_seen_time.seconds ;;
    group_label: "Entity Domain Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__name {
    type: string
    sql: ${TABLE}.entity.domain.name ;;
    group_label: "Entity Domain"
    group_item_label: "Name"
  }

  dimension: entity__domain__name_server {
    hidden: yes
    sql: ${TABLE}.entity.domain.name_server ;;
    group_label: "Entity Domain"
    group_item_label: "Name Server"
  }

  dimension: entity__domain__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.day_count ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__domain__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.day_max ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__domain__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.day_max_sub_domains ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__domain__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.rolling_max ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__domain__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__domain__private_registration {
    type: yesno
    sql: ${TABLE}.entity.domain.private_registration ;;
    group_label: "Entity Domain"
    group_item_label: "Private Registration"
  }

  dimension: entity__domain__registrant__account_type {
    type: number
    sql: ${TABLE}.entity.domain.registrant.account_type ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Registrant Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__registrant__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.environment ;;
    group_label: "Entity Domain Registrant Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.name ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__registrant__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Registrant Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Registrant Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.attribute.labels ;;
    group_label: "Entity Domain Registrant Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__registrant__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Registrant Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Registrant Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.attribute.permissions ;;
    group_label: "Entity Domain Registrant Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__registrant__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.attribute.roles ;;
    group_label: "Entity Domain Registrant Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__registrant__company_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.company_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__registrant__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.department ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Department"
  }

  dimension: entity__domain__registrant__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.email_addresses ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__registrant__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.employee_id ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__registrant__first_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.first_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "First Name"
  }

  dimension: entity__domain__registrant__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.first_seen_time.nanos ;;
    group_label: "Entity Domain Registrant First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.first_seen_time.seconds ;;
    group_label: "Entity Domain Registrant First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.group_identifiers ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__registrant__groupid {
    type: string
    sql: ${TABLE}.entity.domain.registrant.groupid ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__registrant__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.hire_date.nanos ;;
    group_label: "Entity Domain Registrant Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.hire_date.seconds ;;
    group_label: "Entity Domain Registrant Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__last_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.last_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__registrant__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.middle_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__registrant__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.city ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__registrant__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.country_or_region ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__registrant__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.desk_name ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__registrant__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.floor_name ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__registrant__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.name ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.office_address.region_latitude ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__registrant__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.office_address.region_longitude ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__registrant__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.state ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__registrant__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.city ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__registrant__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.country_or_region ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__registrant__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.desk_name ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__registrant__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.floor_name ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__registrant__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.name ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.personal_address.region_latitude ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__registrant__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.personal_address.region_longitude ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__registrant__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.state ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__registrant__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.phone_numbers ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__registrant__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.product_object_id ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__registrant__role_description {
    type: string
    sql: ${TABLE}.entity.domain.registrant.role_description ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__registrant__role_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.role_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__registrant__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.termination_date.nanos ;;
    group_label: "Entity Domain Registrant Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.termination_date.seconds ;;
    group_label: "Entity Domain Registrant Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.time_off ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__registrant__title {
    type: string
    sql: ${TABLE}.entity.domain.registrant.title ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Title"
  }

  dimension: entity__domain__registrant__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.registrant.user_authentication_status ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__registrant__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.user_display_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__registrant__user_role {
    type: number
    sql: ${TABLE}.entity.domain.registrant.user_role ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "User Role"
  }

  dimension: entity__domain__registrant__userid {
    type: string
    sql: ${TABLE}.entity.domain.registrant.userid ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Userid"
  }

  dimension: entity__domain__registrant__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.registrant.windows_sid ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__registrar {
    type: string
    sql: ${TABLE}.entity.domain.registrar ;;
    group_label: "Entity Domain"
    group_item_label: "Registrar"
  }

  dimension: entity__domain__registry_data_raw_text {
    type: string
    sql: ${TABLE}.entity.domain.registry_data_raw_text ;;
    group_label: "Entity Domain"
    group_item_label: "Registry Data Raw Text"
  }

  dimension: entity__domain__status {
    type: string
    sql: ${TABLE}.entity.domain.status ;;
    group_label: "Entity Domain"
    group_item_label: "Status"
  }

  dimension: entity__domain__tech__account_type {
    type: number
    sql: ${TABLE}.entity.domain.tech.account_type ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__tech__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Tech Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__tech__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.environment ;;
    group_label: "Entity Domain Tech Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__tech__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.id ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__tech__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.name ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__tech__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__tech__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__tech__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__tech__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.type ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__tech__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Tech Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Tech Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.attribute.labels ;;
    group_label: "Entity Domain Tech Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__tech__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Tech Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Tech Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.attribute.permissions ;;
    group_label: "Entity Domain Tech Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__tech__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.attribute.roles ;;
    group_label: "Entity Domain Tech Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__tech__company_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.company_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__tech__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.department ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Department"
  }

  dimension: entity__domain__tech__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.email_addresses ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__tech__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.employee_id ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__tech__first_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.first_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "First Name"
  }

  dimension: entity__domain__tech__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.first_seen_time.nanos ;;
    group_label: "Entity Domain Tech First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.first_seen_time.seconds ;;
    group_label: "Entity Domain Tech First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.group_identifiers ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__tech__groupid {
    type: string
    sql: ${TABLE}.entity.domain.tech.groupid ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__tech__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.hire_date.nanos ;;
    group_label: "Entity Domain Tech Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.hire_date.seconds ;;
    group_label: "Entity Domain Tech Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__last_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.last_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__tech__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.middle_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__tech__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.city ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__tech__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.country_or_region ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__tech__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.desk_name ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__tech__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.floor_name ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__tech__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.name ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.office_address.region_latitude ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__tech__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.office_address.region_longitude ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__tech__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.state ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__tech__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.city ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__tech__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.country_or_region ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__tech__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.desk_name ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__tech__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.floor_name ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__tech__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.name ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.personal_address.region_latitude ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__tech__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.personal_address.region_longitude ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__tech__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.state ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__tech__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.phone_numbers ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__tech__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.product_object_id ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__tech__role_description {
    type: string
    sql: ${TABLE}.entity.domain.tech.role_description ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__tech__role_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.role_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__tech__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.termination_date.nanos ;;
    group_label: "Entity Domain Tech Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.termination_date.seconds ;;
    group_label: "Entity Domain Tech Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.time_off ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__tech__title {
    type: string
    sql: ${TABLE}.entity.domain.tech.title ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Title"
  }

  dimension: entity__domain__tech__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.tech.user_authentication_status ;;
    group_label: "Entity Domain Tech"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__tech__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.user_display_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__tech__user_role {
    type: number
    sql: ${TABLE}.entity.domain.tech.user_role ;;
    group_label: "Entity Domain Tech"
    group_item_label: "User Role"
  }

  dimension: entity__domain__tech__userid {
    type: string
    sql: ${TABLE}.entity.domain.tech.userid ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Userid"
  }

  dimension: entity__domain__tech__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.tech.windows_sid ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.update_time.nanos ;;
    group_label: "Entity Domain Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.update_time.seconds ;;
    group_label: "Entity Domain Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__whois_record_raw_text {
    type: string
    sql: ${TABLE}.entity.domain.whois_record_raw_text ;;
    group_label: "Entity Domain"
    group_item_label: "Whois Record Raw Text"
  }

  dimension: entity__domain__whois_server {
    type: string
    sql: ${TABLE}.entity.domain.whois_server ;;
    group_label: "Entity Domain"
    group_item_label: "Whois Server"
  }

  dimension: entity__domain__zone__account_type {
    type: number
    sql: ${TABLE}.entity.domain.zone.account_type ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__zone__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Zone Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__zone__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.environment ;;
    group_label: "Entity Domain Zone Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__zone__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.id ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__zone__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.name ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__zone__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__zone__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__zone__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__zone__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.type ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__zone__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Zone Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Zone Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.attribute.labels ;;
    group_label: "Entity Domain Zone Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__zone__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Zone Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Zone Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.attribute.permissions ;;
    group_label: "Entity Domain Zone Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__zone__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.attribute.roles ;;
    group_label: "Entity Domain Zone Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__zone__company_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.company_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__zone__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.department ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Department"
  }

  dimension: entity__domain__zone__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.email_addresses ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__zone__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.employee_id ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__zone__first_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.first_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "First Name"
  }

  dimension: entity__domain__zone__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.first_seen_time.nanos ;;
    group_label: "Entity Domain Zone First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.first_seen_time.seconds ;;
    group_label: "Entity Domain Zone First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.group_identifiers ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__zone__groupid {
    type: string
    sql: ${TABLE}.entity.domain.zone.groupid ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__zone__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.hire_date.nanos ;;
    group_label: "Entity Domain Zone Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.hire_date.seconds ;;
    group_label: "Entity Domain Zone Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__last_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.last_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__zone__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.middle_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__zone__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.city ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__zone__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.country_or_region ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__zone__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.desk_name ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__zone__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.floor_name ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__zone__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.name ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.office_address.region_latitude ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__zone__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.office_address.region_longitude ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__zone__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.state ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__zone__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.city ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__zone__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.country_or_region ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__zone__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.desk_name ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__zone__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.floor_name ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__zone__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.name ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.personal_address.region_latitude ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__zone__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.personal_address.region_longitude ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__zone__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.state ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__zone__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.phone_numbers ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__zone__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.product_object_id ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__zone__role_description {
    type: string
    sql: ${TABLE}.entity.domain.zone.role_description ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__zone__role_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.role_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__zone__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.termination_date.nanos ;;
    group_label: "Entity Domain Zone Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.termination_date.seconds ;;
    group_label: "Entity Domain Zone Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.time_off ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__zone__title {
    type: string
    sql: ${TABLE}.entity.domain.zone.title ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Title"
  }

  dimension: entity__domain__zone__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.zone.user_authentication_status ;;
    group_label: "Entity Domain Zone"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__zone__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.user_display_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__zone__user_role {
    type: number
    sql: ${TABLE}.entity.domain.zone.user_role ;;
    group_label: "Entity Domain Zone"
    group_item_label: "User Role"
  }

  dimension: entity__domain__zone__userid {
    type: string
    sql: ${TABLE}.entity.domain.zone.userid ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Userid"
  }

  dimension: entity__domain__zone__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.zone.windows_sid ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Windows Sid"
  }

  dimension: entity__email {
    type: string
    sql: ${TABLE}.entity.email ;;
    group_label: "Entity"
    group_item_label: "Email"
  }

  dimension: entity__file__ahash {
    type: string
    sql: ${TABLE}.entity.file.ahash ;;
    group_label: "Entity File"
    group_item_label: "Ahash"
  }

  dimension: entity__file__authentihash {
    type: string
    sql: ${TABLE}.entity.file.authentihash ;;
    group_label: "Entity File"
    group_item_label: "Authentihash"
  }

  dimension: entity__file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.entity.file.capabilities_tags ;;
    group_label: "Entity File"
    group_item_label: "Capabilities Tags"
  }

  dimension: entity__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.entity.file.file_metadata.pe.import_hash ;;
    group_label: "Entity File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: entity__file__file_type {
    type: number
    sql: ${TABLE}.entity.file.file_type ;;
    group_label: "Entity File"
    group_item_label: "File Type"
  }

  dimension: entity__file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.first_seen_time.nanos ;;
    group_label: "Entity File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.first_seen_time.seconds ;;
    group_label: "Entity File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__full_path {
    type: string
    sql: ${TABLE}.entity.file.full_path ;;
    group_label: "Entity File"
    group_item_label: "Full Path"
  }

  dimension: entity__file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.last_modification_time.nanos ;;
    group_label: "Entity File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.last_modification_time.seconds ;;
    group_label: "Entity File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.last_seen_time.nanos ;;
    group_label: "Entity File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.last_seen_time.seconds ;;
    group_label: "Entity File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__md5 {
    type: string
    sql: ${TABLE}.entity.file.md5 ;;
    group_label: "Entity File"
    group_item_label: "Md5"
  }

  dimension: entity__file__mime_type {
    type: string
    sql: ${TABLE}.entity.file.mime_type ;;
    group_label: "Entity File"
    group_item_label: "Mime Type"
  }

  dimension: entity__file__names {
    hidden: yes
    sql: ${TABLE}.entity.file.names ;;
    group_label: "Entity File"
    group_item_label: "Names"
  }

  dimension: entity__file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "Entity File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "Entity File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_time.nanos ;;
    group_label: "Entity File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_time.seconds ;;
    group_label: "Entity File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.entity.file.pe_file.entry_point ;;
    group_label: "Entity File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: entity__file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.entity.file.pe_file.entry_point_exiftool ;;
    group_label: "Entity File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: entity__file__pe_file__imphash {
    type: string
    sql: ${TABLE}.entity.file.pe_file.imphash ;;
    group_label: "Entity File Pe File"
    group_item_label: "Imphash"
  }

  dimension: entity__file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.imports ;;
    group_label: "Entity File Pe File"
    group_item_label: "Imports"
  }

  dimension: entity__file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resource ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resource"
  }

  dimension: entity__file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_language_count ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: entity__file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_language_count_str ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: entity__file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_type_count ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: entity__file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_type_count_str ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: entity__file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.section ;;
    group_label: "Entity File Pe File"
    group_item_label: "Section"
  }

  dimension: entity__file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.signature_info.signer ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: entity__file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.signature_info.signers ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: entity__file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.entity.file.pe_file.signature_info.verification_message ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: entity__file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.entity.file.pe_file.signature_info.verified ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: entity__file__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.file.prevalence.day_count ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__file__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.file.prevalence.day_max ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.file.prevalence.day_max_sub_domains ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.file.prevalence.rolling_max ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.file.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__file__sha1 {
    type: string
    sql: ${TABLE}.entity.file.sha1 ;;
    group_label: "Entity File"
    group_item_label: "Sha1"
  }

  dimension: entity__file__sha256 {
    type: string
    sql: ${TABLE}.entity.file.sha256 ;;
    group_label: "Entity File"
    group_item_label: "Sha256"
  }

  dimension: entity__file__size {
    type: number
    sql: ${TABLE}.entity.file.size ;;
    group_label: "Entity File"
    group_item_label: "Size"
  }

  dimension: entity__file__ssdeep {
    type: string
    sql: ${TABLE}.entity.file.ssdeep ;;
    group_label: "Entity File"
    group_item_label: "Ssdeep"
  }

  dimension: entity__file__vhash {
    type: string
    sql: ${TABLE}.entity.file.vhash ;;
    group_label: "Entity File"
    group_item_label: "Vhash"
  }

  dimension: entity__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.availability_zone ;;
    group_label: "Entity Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.cloud.environment ;;
    group_label: "Entity Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.id ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.name ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.parent ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.type ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.id ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.name ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.type ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.creation_time.nanos ;;
    group_label: "Entity Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.creation_time.seconds ;;
    group_label: "Entity Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.group.attribute.labels ;;
    group_label: "Entity Group Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.last_update_time.nanos ;;
    group_label: "Entity Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.last_update_time.seconds ;;
    group_label: "Entity Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.group.attribute.permissions ;;
    group_label: "Entity Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.group.attribute.roles ;;
    group_label: "Entity Group Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.`group`.creation_time.nanos ;;
    group_label: "Entity Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.`group`.creation_time.seconds ;;
    group_label: "Entity Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.group.email_addresses ;;
    group_label: "Entity Group"
    group_item_label: "Email Addresses"
  }

  dimension: entity__group__group_display_name {
    type: string
    sql: ${TABLE}.entity.`group`.group_display_name ;;
    group_label: "Entity Group"
    group_item_label: "Group Display Name"
  }

  dimension: entity__group__product_object_id {
    type: string
    sql: ${TABLE}.entity.`group`.product_object_id ;;
    group_label: "Entity Group"
    group_item_label: "Product Object ID"
  }

  dimension: entity__group__windows_sid {
    type: string
    sql: ${TABLE}.entity.`group`.windows_sid ;;
    group_label: "Entity Group"
    group_item_label: "Windows Sid"
  }

  dimension: entity__hostname {
    type: string
    sql: ${TABLE}.entity.hostname ;;
    group_label: "Entity"
    group_item_label: "Hostname"
  }

  dimension: entity__investigation__comments {
    hidden: yes
    sql: ${TABLE}.entity.investigation.comments ;;
    group_label: "Entity Investigation"
    group_item_label: "Comments"
  }

  dimension: entity__investigation__priority {
    type: number
    sql: ${TABLE}.entity.investigation.priority ;;
    group_label: "Entity Investigation"
    group_item_label: "Priority"
  }

  dimension: entity__investigation__reason {
    type: number
    sql: ${TABLE}.entity.investigation.reason ;;
    group_label: "Entity Investigation"
    group_item_label: "Reason"
  }

  dimension: entity__investigation__reputation {
    type: number
    sql: ${TABLE}.entity.investigation.reputation ;;
    group_label: "Entity Investigation"
    group_item_label: "Reputation"
  }

  dimension: entity__investigation__risk_score {
    type: number
    sql: ${TABLE}.entity.investigation.risk_score ;;
    group_label: "Entity Investigation"
    group_item_label: "Risk Score"
  }

  dimension: entity__investigation__root_cause {
    type: string
    sql: ${TABLE}.entity.investigation.root_cause ;;
    group_label: "Entity Investigation"
    group_item_label: "Root Cause"
  }

  dimension: entity__investigation__severity_score {
    type: number
    sql: ${TABLE}.entity.investigation.severity_score ;;
    group_label: "Entity Investigation"
    group_item_label: "Severity Score"
  }

  dimension: entity__investigation__status {
    type: number
    sql: ${TABLE}.entity.investigation.status ;;
    group_label: "Entity Investigation"
    group_item_label: "Status"
  }

  dimension: entity__investigation__verdict {
    type: number
    sql: ${TABLE}.entity.investigation.verdict ;;
    group_label: "Entity Investigation"
    group_item_label: "Verdict"
  }

  dimension: entity__ip {
    hidden: yes
    sql: ${TABLE}.entity.ip ;;
    group_label: "Entity"
    group_item_label: "IP"
  }

  dimension: entity__ip_geo_artifact {
    hidden: yes
    sql: ${TABLE}.entity.ip_geo_artifact ;;
    group_label: "Entity"
    group_item_label: "IP Geo Artifact"
  }

  dimension: entity__ip_location {
    hidden: yes
    sql: ${TABLE}.entity.ip_location ;;
    group_label: "Entity"
    group_item_label: "IP Location"
  }

  dimension: entity__labels {
    hidden: yes
    sql: ${TABLE}.entity.labels ;;
    group_label: "Entity"
    group_item_label: "Labels"
  }

  dimension: entity__location__city {
    type: string
    sql: ${TABLE}.entity.location.city ;;
    group_label: "Entity Location"
    group_item_label: "City"
  }

  dimension: entity__location__country_or_region {
    type: string
    sql: ${TABLE}.entity.location.country_or_region ;;
    group_label: "Entity Location"
    group_item_label: "Country or Region"
  }

  dimension: entity__location__desk_name {
    type: string
    sql: ${TABLE}.entity.location.desk_name ;;
    group_label: "Entity Location"
    group_item_label: "Desk Name"
  }

  dimension: entity__location__floor_name {
    type: string
    sql: ${TABLE}.entity.location.floor_name ;;
    group_label: "Entity Location"
    group_item_label: "Floor Name"
  }

  dimension: entity__location__name {
    type: string
    sql: ${TABLE}.entity.location.name ;;
    group_label: "Entity Location"
    group_item_label: "Name"
  }

  dimension: entity__location__region_latitude {
    type: number
    sql: ${TABLE}.entity.location.region_latitude ;;
    group_label: "Entity Location"
    group_item_label: "Region Latitude"
  }

  dimension: entity__location__region_longitude {
    type: number
    sql: ${TABLE}.entity.location.region_longitude ;;
    group_label: "Entity Location"
    group_item_label: "Region Longitude"
  }

  dimension: entity__location__state {
    type: string
    sql: ${TABLE}.entity.location.state ;;
    group_label: "Entity Location"
    group_item_label: "State"
  }

  dimension: entity__mac {
    hidden: yes
    sql: ${TABLE}.entity.mac ;;
    group_label: "Entity"
    group_item_label: "Mac"
  }

  dimension: entity__namespace {
    type: string
    sql: ${TABLE}.entity.namespace ;;
    group_label: "Entity"
    group_item_label: "Namespace"
  }

  dimension: entity__nat_ip {
    hidden: yes
    sql: ${TABLE}.entity.nat_ip ;;
    group_label: "Entity"
    group_item_label: "Nat IP"
  }

  dimension: entity__nat_port {
    type: number
    sql: ${TABLE}.entity.nat_port ;;
    group_label: "Entity"
    group_item_label: "Nat Port"
  }

  dimension: entity__object_reference__id {
    type: string
    sql: ${TABLE}.entity.object_reference.id ;;
    group_label: "Entity Object Reference"
    group_item_label: "ID"
  }

  dimension: entity__object_reference__namespace {
    type: number
    sql: ${TABLE}.entity.object_reference.namespace ;;
    group_label: "Entity Object Reference"
    group_item_label: "Namespace"
  }

  dimension: entity__platform {
    type: number
    sql: ${TABLE}.entity.platform ;;
    group_label: "Entity"
    group_item_label: "Platform"
  }

  dimension: entity__platform_patch_level {
    type: string
    sql: ${TABLE}.entity.platform_patch_level ;;
    group_label: "Entity"
    group_item_label: "Platform Patch Level"
  }

  dimension: entity__platform_version {
    type: string
    sql: ${TABLE}.entity.platform_version ;;
    group_label: "Entity"
    group_item_label: "Platform Version"
  }

  dimension: entity__port {
    type: number
    sql: ${TABLE}.entity.port ;;
    group_label: "Entity"
    group_item_label: "Port"
  }

  dimension: entity__process__access_mask {
    type: number
    sql: ${TABLE}.entity.process.access_mask ;;
    group_label: "Entity Process"
    group_item_label: "Access Mask"
  }

  dimension: entity__process__command_line {
    type: string
    sql: ${TABLE}.entity.process.command_line ;;
    group_label: "Entity Process"
    group_item_label: "Command Line"
  }

  dimension: entity__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.entity.process.command_line_history ;;
    group_label: "Entity Process"
    group_item_label: "Command Line History"
  }

  dimension: entity__process__file__ahash {
    type: string
    sql: ${TABLE}.entity.process.file.ahash ;;
    group_label: "Entity Process File"
    group_item_label: "Ahash"
  }

  dimension: entity__process__file__authentihash {
    type: string
    sql: ${TABLE}.entity.process.file.authentihash ;;
    group_label: "Entity Process File"
    group_item_label: "Authentihash"
  }

  dimension: entity__process__file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.entity.process.file.capabilities_tags ;;
    group_label: "Entity Process File"
    group_item_label: "Capabilities Tags"
  }

  dimension: entity__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.entity.process.file.file_metadata.pe.import_hash ;;
    group_label: "Entity Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: entity__process__file__file_type {
    type: number
    sql: ${TABLE}.entity.process.file.file_type ;;
    group_label: "Entity Process File"
    group_item_label: "File Type"
  }

  dimension: entity__process__file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.first_seen_time.nanos ;;
    group_label: "Entity Process File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.first_seen_time.seconds ;;
    group_label: "Entity Process File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__full_path {
    type: string
    sql: ${TABLE}.entity.process.file.full_path ;;
    group_label: "Entity Process File"
    group_item_label: "Full Path"
  }

  dimension: entity__process__file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.last_modification_time.nanos ;;
    group_label: "Entity Process File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.last_modification_time.seconds ;;
    group_label: "Entity Process File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.last_seen_time.nanos ;;
    group_label: "Entity Process File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.last_seen_time.seconds ;;
    group_label: "Entity Process File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__md5 {
    type: string
    sql: ${TABLE}.entity.process.file.md5 ;;
    group_label: "Entity Process File"
    group_item_label: "Md5"
  }

  dimension: entity__process__file__mime_type {
    type: string
    sql: ${TABLE}.entity.process.file.mime_type ;;
    group_label: "Entity Process File"
    group_item_label: "Mime Type"
  }

  dimension: entity__process__file__names {
    hidden: yes
    sql: ${TABLE}.entity.process.file.names ;;
    group_label: "Entity Process File"
    group_item_label: "Names"
  }

  dimension: entity__process__file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "Entity Process File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "Entity Process File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_time.nanos ;;
    group_label: "Entity Process File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_time.seconds ;;
    group_label: "Entity Process File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.entry_point ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: entity__process__file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.entry_point_exiftool ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: entity__process__file__pe_file__imphash {
    type: string
    sql: ${TABLE}.entity.process.file.pe_file.imphash ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Imphash"
  }

  dimension: entity__process__file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.imports ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Imports"
  }

  dimension: entity__process__file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resource ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resource"
  }

  dimension: entity__process__file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_language_count ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: entity__process__file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_language_count_str ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: entity__process__file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_type_count ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: entity__process__file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_type_count_str ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: entity__process__file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.section ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Section"
  }

  dimension: entity__process__file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.signer ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: entity__process__file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.signers ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: entity__process__file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.verification_message ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: entity__process__file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.verified ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: entity__process__file__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.day_count ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__process__file__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.day_max ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__process__file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.day_max_sub_domains ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__process__file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.rolling_max ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__process__file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__process__file__sha1 {
    type: string
    sql: ${TABLE}.entity.process.file.sha1 ;;
    group_label: "Entity Process File"
    group_item_label: "Sha1"
  }

  dimension: entity__process__file__sha256 {
    type: string
    sql: ${TABLE}.entity.process.file.sha256 ;;
    group_label: "Entity Process File"
    group_item_label: "Sha256"
  }

  dimension: entity__process__file__size {
    type: number
    sql: ${TABLE}.entity.process.file.size ;;
    group_label: "Entity Process File"
    group_item_label: "Size"
  }

  dimension: entity__process__file__ssdeep {
    type: string
    sql: ${TABLE}.entity.process.file.ssdeep ;;
    group_label: "Entity Process File"
    group_item_label: "Ssdeep"
  }

  dimension: entity__process__file__vhash {
    type: string
    sql: ${TABLE}.entity.process.file.vhash ;;
    group_label: "Entity Process File"
    group_item_label: "Vhash"
  }

  dimension: entity__process__parent_pid {
    type: string
    sql: ${TABLE}.entity.process.parent_pid ;;
    group_label: "Entity Process"
    group_item_label: "Parent Pid"
  }

  dimension: entity__process__pid {
    type: string
    sql: ${TABLE}.entity.process.pid ;;
    group_label: "Entity Process"
    group_item_label: "Pid"
  }

  dimension: entity__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.entity.process.product_specific_parent_process_id ;;
    group_label: "Entity Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: entity__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.entity.process.product_specific_process_id ;;
    group_label: "Entity Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: entity__process_ancestors {
    hidden: yes
    sql: ${TABLE}.entity.process_ancestors ;;
    group_label: "Entity"
    group_item_label: "Process Ancestors"
  }

  dimension: entity__registry__registry_key {
    type: string
    sql: ${TABLE}.entity.registry.registry_key ;;
    group_label: "Entity Registry"
    group_item_label: "Registry Key"
  }

  dimension: entity__registry__registry_value_data {
    type: string
    sql: ${TABLE}.entity.registry.registry_value_data ;;
    group_label: "Entity Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: entity__registry__registry_value_name {
    type: string
    sql: ${TABLE}.entity.registry.registry_value_name ;;
    group_label: "Entity Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: entity__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.resource.attribute.cloud.availability_zone ;;
    group_label: "Entity Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.resource.attribute.cloud.environment ;;
    group_label: "Entity Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.resource.attribute.creation_time.nanos ;;
    group_label: "Entity Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.resource.attribute.creation_time.seconds ;;
    group_label: "Entity Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.resource.attribute.labels ;;
    group_label: "Entity Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.resource.attribute.last_update_time.nanos ;;
    group_label: "Entity Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.resource.attribute.last_update_time.seconds ;;
    group_label: "Entity Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.resource.attribute.permissions ;;
    group_label: "Entity Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.resource.attribute.roles ;;
    group_label: "Entity Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__resource__id {
    type: string
    sql: ${TABLE}.entity.resource.id ;;
    group_label: "Entity Resource"
    group_item_label: "ID"
  }

  dimension: entity__resource__name {
    type: string
    sql: ${TABLE}.entity.resource.name ;;
    group_label: "Entity Resource"
    group_item_label: "Name"
  }

  dimension: entity__resource__parent {
    type: string
    sql: ${TABLE}.entity.resource.parent ;;
    group_label: "Entity Resource"
    group_item_label: "Parent"
  }

  dimension: entity__resource__product_object_id {
    type: string
    sql: ${TABLE}.entity.resource.product_object_id ;;
    group_label: "Entity Resource"
    group_item_label: "Product Object ID"
  }

  dimension: entity__resource__resource_subtype {
    type: string
    sql: ${TABLE}.entity.resource.resource_subtype ;;
    group_label: "Entity Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__resource__resource_type {
    type: number
    sql: ${TABLE}.entity.resource.resource_type ;;
    group_label: "Entity Resource"
    group_item_label: "Resource Type"
  }

  dimension: entity__resource__type {
    type: string
    sql: ${TABLE}.entity.resource.type ;;
    group_label: "Entity Resource"
    group_item_label: "Type"
  }

  dimension: entity__resource_ancestors {
    hidden: yes
    sql: ${TABLE}.entity.resource_ancestors ;;
    group_label: "Entity"
    group_item_label: "Resource Ancestors"
  }

  dimension: entity__url {
    type: string
    sql: ${TABLE}.entity.url ;;
    group_label: "Entity"
    group_item_label: "URL"
  }

  dimension: entity__user__account_type {
    type: number
    sql: ${TABLE}.entity.user.account_type ;;
    group_label: "Entity User"
    group_item_label: "Account Type"
  }

  dimension: entity__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.availability_zone ;;
    group_label: "Entity User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.user.attribute.cloud.environment ;;
    group_label: "Entity User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.id ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.name ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.parent ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.product_object_id ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.user.attribute.cloud.project.resource_type ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.type ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.id ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.name ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.parent ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.type ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.user.attribute.creation_time.nanos ;;
    group_label: "Entity User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.user.attribute.creation_time.seconds ;;
    group_label: "Entity User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.user.attribute.labels ;;
    group_label: "Entity User Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.user.attribute.last_update_time.nanos ;;
    group_label: "Entity User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.user.attribute.last_update_time.seconds ;;
    group_label: "Entity User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.user.attribute.permissions ;;
    group_label: "Entity User Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.user.attribute.roles ;;
    group_label: "Entity User Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__user__company_name {
    type: string
    sql: ${TABLE}.entity.user.company_name ;;
    group_label: "Entity User"
    group_item_label: "Company Name"
  }

  dimension: entity__user__department {
    hidden: yes
    sql: ${TABLE}.entity.user.department ;;
    group_label: "Entity User"
    group_item_label: "Department"
  }

  dimension: entity__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.user.email_addresses ;;
    group_label: "Entity User"
    group_item_label: "Email Addresses"
  }

  dimension: entity__user__employee_id {
    type: string
    sql: ${TABLE}.entity.user.employee_id ;;
    group_label: "Entity User"
    group_item_label: "Employee ID"
  }

  dimension: entity__user__first_name {
    type: string
    sql: ${TABLE}.entity.user.first_name ;;
    group_label: "Entity User"
    group_item_label: "First Name"
  }

  dimension: entity__user__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.user.first_seen_time.nanos ;;
    group_label: "Entity User First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__user__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.user.first_seen_time.seconds ;;
    group_label: "Entity User First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.user.group_identifiers ;;
    group_label: "Entity User"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__user__groupid {
    type: string
    sql: ${TABLE}.entity.user.groupid ;;
    group_label: "Entity User"
    group_item_label: "Groupid"
  }

  dimension: entity__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.user.hire_date.nanos ;;
    group_label: "Entity User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.user.hire_date.seconds ;;
    group_label: "Entity User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__user__last_name {
    type: string
    sql: ${TABLE}.entity.user.last_name ;;
    group_label: "Entity User"
    group_item_label: "Last Name"
  }

  dimension: entity__user__middle_name {
    type: string
    sql: ${TABLE}.entity.user.middle_name ;;
    group_label: "Entity User"
    group_item_label: "Middle Name"
  }

  dimension: entity__user__office_address__city {
    type: string
    sql: ${TABLE}.entity.user.office_address.city ;;
    group_label: "Entity User Office Address"
    group_item_label: "City"
  }

  dimension: entity__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.user.office_address.country_or_region ;;
    group_label: "Entity User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__user__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.user.office_address.desk_name ;;
    group_label: "Entity User Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__user__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.user.office_address.floor_name ;;
    group_label: "Entity User Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__user__office_address__name {
    type: string
    sql: ${TABLE}.entity.user.office_address.name ;;
    group_label: "Entity User Office Address"
    group_item_label: "Name"
  }

  dimension: entity__user__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.user.office_address.region_latitude ;;
    group_label: "Entity User Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__user__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.user.office_address.region_longitude ;;
    group_label: "Entity User Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__user__office_address__state {
    type: string
    sql: ${TABLE}.entity.user.office_address.state ;;
    group_label: "Entity User Office Address"
    group_item_label: "State"
  }

  dimension: entity__user__personal_address__city {
    type: string
    sql: ${TABLE}.entity.user.personal_address.city ;;
    group_label: "Entity User Personal Address"
    group_item_label: "City"
  }

  dimension: entity__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.user.personal_address.country_or_region ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__user__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.user.personal_address.desk_name ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__user__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.user.personal_address.floor_name ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__user__personal_address__name {
    type: string
    sql: ${TABLE}.entity.user.personal_address.name ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__user__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.user.personal_address.region_latitude ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__user__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.user.personal_address.region_longitude ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__user__personal_address__state {
    type: string
    sql: ${TABLE}.entity.user.personal_address.state ;;
    group_label: "Entity User Personal Address"
    group_item_label: "State"
  }

  dimension: entity__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.user.phone_numbers ;;
    group_label: "Entity User"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__user__product_object_id {
    type: string
    sql: ${TABLE}.entity.user.product_object_id ;;
    group_label: "Entity User"
    group_item_label: "Product Object ID"
  }

  dimension: entity__user__role_description {
    type: string
    sql: ${TABLE}.entity.user.role_description ;;
    group_label: "Entity User"
    group_item_label: "Role Description"
  }

  dimension: entity__user__role_name {
    type: string
    sql: ${TABLE}.entity.user.role_name ;;
    group_label: "Entity User"
    group_item_label: "Role Name"
  }

  dimension: entity__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.user.termination_date.nanos ;;
    group_label: "Entity User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.user.termination_date.seconds ;;
    group_label: "Entity User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__user__time_off {
    hidden: yes
    sql: ${TABLE}.entity.user.time_off ;;
    group_label: "Entity User"
    group_item_label: "Time Off"
  }

  dimension: entity__user__title {
    type: string
    sql: ${TABLE}.entity.user.title ;;
    group_label: "Entity User"
    group_item_label: "Title"
  }

  dimension: entity__user__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.user.user_authentication_status ;;
    group_label: "Entity User"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__user__user_display_name {
    type: string
    sql: ${TABLE}.entity.user.user_display_name ;;
    group_label: "Entity User"
    group_item_label: "User Display Name"
  }

  dimension: entity__user__user_role {
    type: number
    sql: ${TABLE}.entity.user.user_role ;;
    group_label: "Entity User"
    group_item_label: "User Role"
  }

  dimension: entity__user__userid {
    type: string
    sql: ${TABLE}.entity.user.userid ;;
    group_label: "Entity User"
    group_item_label: "Userid"
  }

  dimension: entity__user__windows_sid {
    type: string
    sql: ${TABLE}.entity.user.windows_sid ;;
    group_label: "Entity User"
    group_item_label: "Windows Sid"
  }

  dimension: entity__user_management_chain {
    hidden: yes
    sql: ${TABLE}.entity.user_management_chain ;;
    group_label: "Entity"
    group_item_label: "User Management Chain"
  }

  dimension: metadata__collected_timestamp__nanos {
    type: number
    sql: ${TABLE}.metadata.collected_timestamp.nanos ;;
    group_label: "Metadata Collected Timestamp"
    group_item_label: "Nanos"
  }

  dimension: metadata__collected_timestamp__seconds {
    type: number
    sql: ${TABLE}.metadata.collected_timestamp.seconds ;;
    group_label: "Metadata Collected Timestamp"
    group_item_label: "Seconds"
  }

  dimension: metadata__creation_timestamp__nanos {
    type: number
    sql: ${TABLE}.metadata.creation_timestamp.nanos ;;
    group_label: "Metadata Creation Timestamp"
    group_item_label: "Nanos"
  }

  dimension: metadata__creation_timestamp__seconds {
    type: number
    sql: ${TABLE}.metadata.creation_timestamp.seconds ;;
    group_label: "Metadata Creation Timestamp"
    group_item_label: "Seconds"
  }

  dimension: metadata__description {
    type: string
    sql: ${TABLE}.metadata.description ;;
    group_label: "Metadata"
    group_item_label: "Description"
  }

  dimension: metadata__entity_type {
    type: number
    sql: ${TABLE}.metadata.entity_type ;;
    group_label: "Metadata"
    group_item_label: "Entity Type"
  }

  dimension: metadata__interval__end_time__nanos {
    type: number
    sql: ${TABLE}.metadata.`interval`.end_time.nanos ;;
    group_label: "Metadata Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: metadata__interval__end_time__seconds {
    type: number
    sql: ${TABLE}.metadata.`interval`.end_time.seconds ;;
    group_label: "Metadata Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: metadata__interval__start_time__nanos {
    type: number
    sql: ${TABLE}.metadata.`interval`.start_time.nanos ;;
    group_label: "Metadata Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: metadata__interval__start_time__seconds {
    type: number
    sql: ${TABLE}.metadata.`interval`.start_time.seconds ;;
    group_label: "Metadata Interval Start Time"
    group_item_label: "Seconds"
  }

  dimension: metadata__product_entity_id {
    type: string
    sql: ${TABLE}.metadata.product_entity_id ;;
    group_label: "Metadata"
    group_item_label: "Product Entity ID"
  }

  dimension: metadata__product_name {
    type: string
    sql: ${TABLE}.metadata.product_name ;;
    group_label: "Metadata"
    group_item_label: "Product Name"
  }

  dimension: metadata__product_version {
    type: string
    sql: ${TABLE}.metadata.product_version ;;
    group_label: "Metadata"
    group_item_label: "Product Version"
  }

  dimension: metadata__source_labels {
    hidden: yes
    sql: ${TABLE}.metadata.source_labels ;;
    group_label: "Metadata"
    group_item_label: "Source Labels"
  }

  dimension: metadata__source_type {
    type: number
    sql: ${TABLE}.metadata.source_type ;;
    group_label: "Metadata"
    group_item_label: "Source Type"
  }

  dimension: metadata__threat {
    hidden: yes
    sql: ${TABLE}.metadata.threat ;;
    group_label: "Metadata"
    group_item_label: "Threat"
  }

  dimension: metadata__threat__action {
    hidden: yes
    sql: ${TABLE}.metadata.threat.action ;;
    group_label: "Metadata Threat"
    group_item_label: "Action"
  }

  dimension: metadata__vendor_name {
    type: string
    sql: ${TABLE}.metadata.vendor_name ;;
    group_label: "Metadata"
    group_item_label: "Vendor Name"
  }

  dimension: relations {
    hidden: yes
    sql: ${TABLE}.relations ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      entity__hostname,
      entity__domain__name,
      metadata__vendor_name,
      entity__resource__name,
      entity__location__name,
      metadata__product_name,
      entity__cloud__vpc__name,
      entity__asset__hostname,
      entity__user__last_name,
      entity__user__role_name,
      entity__user__first_name,
      entity__user__middle_name,
      entity__user__company_name,
      entity__cloud__project__name,
      entity__location__desk_name,
      entity__location__floor_name,
      entity__asset__location__name,
      entity__domain__tech__last_name,
      entity__domain__tech__role_name,
      entity__domain__zone__last_name,
      entity__domain__zone__role_name,
      entity__artifact__location__name,
      entity__domain__tech__first_name,
      entity__domain__admin__last_name,
      entity__domain__admin__role_name,
      entity__domain__zone__first_name,
      entity__user__user_display_name,
      entity__domain__tech__middle_name,
      entity__domain__admin__first_name,
      entity__domain__zone__middle_name,
      entity__domain__tech__company_name,
      entity__domain__admin__middle_name,
      entity__domain__billing__last_name,
      entity__domain__billing__role_name,
      entity__domain__zone__company_name,
      entity__asset__location__desk_name,
      entity__user__office_address__name,
      entity__domain__admin__company_name,
      entity__domain__billing__first_name,
      entity__asset__location__floor_name,
      entity__group__group_display_name,
      entity__domain__billing__middle_name,
      entity__user__personal_address__name,
      entity__artifact__location__desk_name,
      entity__artifact__network__dhcp__sname,
      entity__domain__billing__company_name,
      entity__domain__registrant__last_name,
      entity__domain__registrant__role_name,
      entity__artifact__location__floor_name,
      entity__registry__registry_value_name,
      entity__domain__registrant__first_name,
      entity__artifact__network__carrier_name,
      entity__domain__tech__user_display_name,
      entity__domain__zone__user_display_name,
      entity__domain__registrant__middle_name,
      entity__user__attribute__cloud__vpc__name,
      entity__user__office_address__desk_name,
      entity__domain__admin__user_display_name,
      entity__domain__registrant__company_name,
      entity__asset__attribute__cloud__vpc__name,
      entity__user__office_address__floor_name,
      entity__domain__tech__office_address__name,
      entity__domain__zone__office_address__name,
      entity__user__personal_address__desk_name,
      entity__group__attribute__cloud__vpc__name,
      entity__domain__admin__office_address__name,
      entity__domain__billing__user_display_name,
      entity__user__personal_address__floor_name,
      entity__domain__tech__personal_address__name,
      entity__domain__zone__personal_address__name,
      entity__user__attribute__cloud__project__name,
      entity__artifact__network__organization_name,
      entity__domain__admin__personal_address__name,
      entity__domain__billing__office_address__name,
      entity__asset__attribute__cloud__project__name,
      entity__domain__registrant__user_display_name,
      entity__group__attribute__cloud__project__name,
      entity__domain__tech__attribute__cloud__vpc__name,
      entity__domain__tech__office_address__desk_name,
      entity__domain__billing__personal_address__name,
      entity__domain__zone__attribute__cloud__vpc__name,
      entity__domain__zone__office_address__desk_name,
      entity__artifact__network__dhcp__client_hostname,
      entity__domain__tech__office_address__floor_name,
      entity__domain__admin__attribute__cloud__vpc__name,
      entity__domain__admin__office_address__desk_name,
      entity__domain__zone__office_address__floor_name,
      entity__domain__registrant__office_address__name,
      entity__domain__tech__personal_address__desk_name,
      entity__domain__admin__office_address__floor_name,
      entity__domain__zone__personal_address__desk_name,
      entity__artifact__network__tls__client__server_name,
      entity__domain__tech__personal_address__floor_name,
      entity__domain__admin__personal_address__desk_name,
      entity__domain__billing__attribute__cloud__vpc__name,
      entity__domain__billing__office_address__desk_name,
      entity__domain__zone__personal_address__floor_name,
      entity__domain__registrant__personal_address__name,
      entity__domain__tech__attribute__cloud__project__name,
      entity__domain__admin__personal_address__floor_name,
      entity__domain__billing__office_address__floor_name,
      entity__domain__zone__attribute__cloud__project__name,
      entity__domain__admin__attribute__cloud__project__name,
      entity__domain__billing__personal_address__desk_name,
      entity__domain__billing__personal_address__floor_name,
      entity__domain__registrant__attribute__cloud__vpc__name,
      entity__domain__registrant__office_address__desk_name,
      entity__domain__billing__attribute__cloud__project__name,
      entity__domain__registrant__office_address__floor_name,
      entity__domain__registrant__personal_address__desk_name,
      entity__domain__registrant__personal_address__floor_name,
      entity__domain__registrant__attribute__cloud__project__name
    ]
  }
}

view: entity_graph__relations {
  dimension: direction {
    type: number
    sql: direction ;;
  }

  dimension: entity__administrative_domain {
    type: string
    sql: ${TABLE}.entity.administrative_domain ;;
    group_label: "Entity"
    group_item_label: "Administrative Domain"
  }

  dimension: entity__application {
    type: string
    sql: ${TABLE}.entity.application ;;
    group_label: "Entity"
    group_item_label: "Application"
  }

  dimension: entity__artifact__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.first_seen_time.nanos ;;
    group_label: "Entity Artifact First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.first_seen_time.seconds ;;
    group_label: "Entity Artifact First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__ip {
    type: string
    sql: ${TABLE}.entity.artifact.ip ;;
    group_label: "Entity Artifact"
    group_item_label: "IP"
  }

  dimension: entity__artifact__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.last_seen_time.nanos ;;
    group_label: "Entity Artifact Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.last_seen_time.seconds ;;
    group_label: "Entity Artifact Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__location__city {
    type: string
    sql: ${TABLE}.entity.artifact.location.city ;;
    group_label: "Entity Artifact Location"
    group_item_label: "City"
  }

  dimension: entity__artifact__location__country_or_region {
    type: string
    sql: ${TABLE}.entity.artifact.location.country_or_region ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Country or Region"
  }

  dimension: entity__artifact__location__desk_name {
    type: string
    sql: ${TABLE}.entity.artifact.location.desk_name ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Desk Name"
  }

  dimension: entity__artifact__location__floor_name {
    type: string
    sql: ${TABLE}.entity.artifact.location.floor_name ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Floor Name"
  }

  dimension: entity__artifact__location__name {
    type: string
    sql: ${TABLE}.entity.artifact.location.name ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Name"
  }

  dimension: entity__artifact__location__region_latitude {
    type: number
    sql: ${TABLE}.entity.artifact.location.region_latitude ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Region Latitude"
  }

  dimension: entity__artifact__location__region_longitude {
    type: number
    sql: ${TABLE}.entity.artifact.location.region_longitude ;;
    group_label: "Entity Artifact Location"
    group_item_label: "Region Longitude"
  }

  dimension: entity__artifact__location__state {
    type: string
    sql: ${TABLE}.entity.artifact.location.state ;;
    group_label: "Entity Artifact Location"
    group_item_label: "State"
  }

  dimension: entity__artifact__network__application_protocol {
    type: number
    sql: ${TABLE}.entity.artifact.network.application_protocol ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Application Protocol"
  }

  dimension: entity__artifact__network__application_protocol_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.application_protocol_version ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Application Protocol Version"
  }

  dimension: entity__artifact__network__asn {
    type: string
    sql: ${TABLE}.entity.artifact.network.asn ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Asn"
  }

  dimension: entity__artifact__network__carrier_name {
    type: string
    sql: ${TABLE}.entity.artifact.network.carrier_name ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Carrier Name"
  }

  dimension: entity__artifact__network__community_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.community_id ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Community ID"
  }

  dimension: entity__artifact__network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.chaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: entity__artifact__network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.ciaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: entity__artifact__network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.client_hostname ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: entity__artifact__network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.client_identifier ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: entity__artifact__network__dhcp__file {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.file ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "File"
  }

  dimension: entity__artifact__network__dhcp__flags {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.flags ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: entity__artifact__network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.giaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: entity__artifact__network__dhcp__hlen {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.hlen ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: entity__artifact__network__dhcp__hops {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.hops ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: entity__artifact__network__dhcp__htype {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.htype ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: entity__artifact__network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.lease_time_seconds ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: entity__artifact__network__dhcp__opcode {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.opcode ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: entity__artifact__network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dhcp.options ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Options"
  }

  dimension: entity__artifact__network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.requested_address ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: entity__artifact__network__dhcp__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.seconds ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.siaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: entity__artifact__network__dhcp__sname {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.sname ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: entity__artifact__network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.transaction_id ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: entity__artifact__network__dhcp__type {
    type: number
    sql: ${TABLE}.entity.artifact.network.dhcp.type ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Type"
  }

  dimension: entity__artifact__network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.entity.artifact.network.dhcp.yiaddr ;;
    group_label: "Entity Artifact Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: entity__artifact__network__direction {
    type: number
    sql: ${TABLE}.entity.artifact.network.direction ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Direction"
  }

  dimension: entity__artifact__network__dns__additional {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.additional ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Additional"
  }

  dimension: entity__artifact__network__dns__answers {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.answers ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Answers"
  }

  dimension: entity__artifact__network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.authoritative ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: entity__artifact__network__dns__authority {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.authority ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Authority"
  }

  dimension: entity__artifact__network__dns__id {
    type: number
    sql: ${TABLE}.entity.artifact.network.dns.id ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "ID"
  }

  dimension: entity__artifact__network__dns__opcode {
    type: number
    sql: ${TABLE}.entity.artifact.network.dns.opcode ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Opcode"
  }

  dimension: entity__artifact__network__dns__questions {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.dns.questions ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Questions"
  }

  dimension: entity__artifact__network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.recursion_available ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: entity__artifact__network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.recursion_desired ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: entity__artifact__network__dns__response {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.response ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Response"
  }

  dimension: entity__artifact__network__dns__response_code {
    type: number
    sql: ${TABLE}.entity.artifact.network.dns.response_code ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Response Code"
  }

  dimension: entity__artifact__network__dns__truncated {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.dns.truncated ;;
    group_label: "Entity Artifact Network Dns"
    group_item_label: "Truncated"
  }

  dimension: entity__artifact__network__dns_domain {
    type: string
    sql: ${TABLE}.entity.artifact.network.dns_domain ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Dns Domain"
  }

  dimension: entity__artifact__network__email__bcc {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.bcc ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Bcc"
  }

  dimension: entity__artifact__network__email__bounce_address {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.bounce_address ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Bounce Address"
  }

  dimension: entity__artifact__network__email__cc {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.cc ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Cc"
  }

  dimension: entity__artifact__network__email__from {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.`from` ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "From"
  }

  dimension: entity__artifact__network__email__mail_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.mail_id ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Mail ID"
  }

  dimension: entity__artifact__network__email__reply_to {
    type: string
    sql: ${TABLE}.entity.artifact.network.email.reply_to ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Reply To"
  }

  dimension: entity__artifact__network__email__subject {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.subject ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "Subject"
  }

  dimension: entity__artifact__network__email__to {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.email.`to` ;;
    group_label: "Entity Artifact Network Email"
    group_item_label: "To"
  }

  dimension: entity__artifact__network__ftp__command {
    type: string
    sql: ${TABLE}.entity.artifact.network.ftp.command ;;
    group_label: "Entity Artifact Network Ftp"
    group_item_label: "Command"
  }

  dimension: entity__artifact__network__http__method {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.method ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "Method"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__annotation {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.annotation ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Annotation"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__browser {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.browser ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__browser_engine_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.browser_engine_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser Engine Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__browser_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.browser_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__carrier {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.carrier ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Carrier"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__device {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.device ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Device"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__device_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.device_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Device Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__family {
    type: number
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.family ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Family"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__google_toolbar_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.google_toolbar_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Google Toolbar Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_configuration {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_configuration ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_configuration_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_configuration_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_profile {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_profile ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Profile"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__java_profile_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.java_profile_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Profile Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__locale {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.locale ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Locale"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__messaging {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.messaging ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Messaging"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__messaging_version {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.messaging_version ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Messaging Version"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__os {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.os ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "OS"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__os_variant {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.os_variant ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "OS Variant"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__platform {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.platform ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Platform"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__security {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.security ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Security"
  }

  dimension: entity__artifact__network__http__parsed_user_agent__sub_family {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.parsed_user_agent.sub_family ;;
    group_label: "Entity Artifact Network HTTP Parsed User Agent"
    group_item_label: "Sub Family"
  }

  dimension: entity__artifact__network__http__referral_url {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.referral_url ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: entity__artifact__network__http__response_code {
    type: number
    sql: ${TABLE}.entity.artifact.network.http.response_code ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: entity__artifact__network__http__user_agent {
    type: string
    sql: ${TABLE}.entity.artifact.network.http.user_agent ;;
    group_label: "Entity Artifact Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: entity__artifact__network__ip_protocol {
    type: number
    sql: ${TABLE}.entity.artifact.network.ip_protocol ;;
    group_label: "Entity Artifact Network"
    group_item_label: "IP Protocol"
  }

  dimension: entity__artifact__network__organization_name {
    type: string
    sql: ${TABLE}.entity.artifact.network.organization_name ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Organization Name"
  }

  dimension: entity__artifact__network__parent_session_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.parent_session_id ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Parent Session ID"
  }

  dimension: entity__artifact__network__received_bytes {
    type: number
    sql: ${TABLE}.entity.artifact.network.received_bytes ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Received Bytes"
  }

  dimension: entity__artifact__network__received_packets {
    type: number
    sql: ${TABLE}.entity.artifact.network.received_packets ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Received Packets"
  }

  dimension: entity__artifact__network__sent_bytes {
    type: number
    sql: ${TABLE}.entity.artifact.network.sent_bytes ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Sent Bytes"
  }

  dimension: entity__artifact__network__sent_packets {
    type: number
    sql: ${TABLE}.entity.artifact.network.sent_packets ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Sent Packets"
  }

  dimension: entity__artifact__network__session_duration__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.session_duration.nanos ;;
    group_label: "Entity Artifact Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__session_duration__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.session_duration.seconds ;;
    group_label: "Entity Artifact Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__session_id {
    type: string
    sql: ${TABLE}.entity.artifact.network.session_id ;;
    group_label: "Entity Artifact Network"
    group_item_label: "Session ID"
  }

  dimension: entity__artifact__network__smtp__helo {
    type: string
    sql: ${TABLE}.entity.artifact.network.smtp.helo ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Helo"
  }

  dimension: entity__artifact__network__smtp__is_tls {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.smtp.is_tls ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Is Tls"
  }

  dimension: entity__artifact__network__smtp__is_webmail {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.smtp.is_webmail ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Is Webmail"
  }

  dimension: entity__artifact__network__smtp__mail_from {
    type: string
    sql: ${TABLE}.entity.artifact.network.smtp.mail_from ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Mail From"
  }

  dimension: entity__artifact__network__smtp__message_path {
    type: string
    sql: ${TABLE}.entity.artifact.network.smtp.message_path ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Message Path"
  }

  dimension: entity__artifact__network__smtp__rcpt_to {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.smtp.rcpt_to ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Rcpt To"
  }

  dimension: entity__artifact__network__smtp__server_response {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.smtp.server_response ;;
    group_label: "Entity Artifact Network Smtp"
    group_item_label: "Server Response"
  }

  dimension: entity__artifact__network__tls__cipher {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.cipher ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Cipher"
  }

  dimension: entity__artifact__network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.issuer ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: entity__artifact__network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.md5 ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_after.nanos ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_after.seconds ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_before.nanos ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.not_before.seconds ;;
    group_label: "Entity Artifact Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.serial ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: entity__artifact__network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.sha1 ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: entity__artifact__network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.sha256 ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: entity__artifact__network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.subject ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: entity__artifact__network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.certificate.version ;;
    group_label: "Entity Artifact Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: entity__artifact__network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.ja3 ;;
    group_label: "Entity Artifact Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: entity__artifact__network__tls__client__server_name {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.client.server_name ;;
    group_label: "Entity Artifact Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: entity__artifact__network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.entity.artifact.network.tls.client.supported_ciphers ;;
    group_label: "Entity Artifact Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: entity__artifact__network__tls__curve {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.curve ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Curve"
  }

  dimension: entity__artifact__network__tls__established {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.tls.established ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Established"
  }

  dimension: entity__artifact__network__tls__next_protocol {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.next_protocol ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: entity__artifact__network__tls__resumed {
    type: yesno
    sql: ${TABLE}.entity.artifact.network.tls.resumed ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Resumed"
  }

  dimension: entity__artifact__network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.issuer ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: entity__artifact__network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.md5 ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_after.nanos ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_after.seconds ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_before.nanos ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: entity__artifact__network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.not_before.seconds ;;
    group_label: "Entity Artifact Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: entity__artifact__network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.serial ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: entity__artifact__network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.sha1 ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: entity__artifact__network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.sha256 ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: entity__artifact__network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.subject ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: entity__artifact__network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.certificate.version ;;
    group_label: "Entity Artifact Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: entity__artifact__network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.server.ja3s ;;
    group_label: "Entity Artifact Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: entity__artifact__network__tls__version {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.version ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Version"
  }

  dimension: entity__artifact__network__tls__version_protocol {
    type: string
    sql: ${TABLE}.entity.artifact.network.tls.version_protocol ;;
    group_label: "Entity Artifact Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: entity__artifact__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.day_count ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__artifact__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.day_max ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__artifact__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.day_max_sub_domains ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__artifact__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.rolling_max ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__artifact__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.artifact.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity Artifact Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__asset__asset_id {
    type: string
    sql: ${TABLE}.entity.asset.asset_id ;;
    group_label: "Entity Asset"
    group_item_label: "Asset ID"
  }

  dimension: entity__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.availability_zone ;;
    group_label: "Entity Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.asset.attribute.cloud.environment ;;
    group_label: "Entity Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.id ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.name ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.parent ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.asset.attribute.cloud.project.resource_type ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.project.type ;;
    group_label: "Entity Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.id ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.name ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.parent ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.asset.attribute.cloud.vpc.type ;;
    group_label: "Entity Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.attribute.creation_time.nanos ;;
    group_label: "Entity Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.attribute.creation_time.seconds ;;
    group_label: "Entity Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.asset.attribute.labels ;;
    group_label: "Entity Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.attribute.last_update_time.nanos ;;
    group_label: "Entity Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.attribute.last_update_time.seconds ;;
    group_label: "Entity Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.asset.attribute.permissions ;;
    group_label: "Entity Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.asset.attribute.roles ;;
    group_label: "Entity Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__asset__category {
    type: string
    sql: ${TABLE}.entity.asset.category ;;
    group_label: "Entity Asset"
    group_item_label: "Category"
  }

  dimension: entity__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.creation_time.nanos ;;
    group_label: "Entity Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.creation_time.seconds ;;
    group_label: "Entity Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__deployment_status {
    type: number
    sql: ${TABLE}.entity.asset.deployment_status ;;
    group_label: "Entity Asset"
    group_item_label: "Deployment Status"
  }

  dimension: entity__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.first_discover_time.nanos ;;
    group_label: "Entity Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.first_discover_time.seconds ;;
    group_label: "Entity Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.first_seen_time.nanos ;;
    group_label: "Entity Asset First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.first_seen_time.seconds ;;
    group_label: "Entity Asset First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__hardware {
    hidden: yes
    sql: ${TABLE}.entity.asset.hardware ;;
    group_label: "Entity Asset"
    group_item_label: "Hardware"
  }

  dimension: entity__asset__hostname {
    type: string
    sql: ${TABLE}.entity.asset.hostname ;;
    group_label: "Entity Asset"
    group_item_label: "Hostname"
  }

  dimension: entity__asset__ip {
    hidden: yes
    sql: ${TABLE}.entity.asset.ip ;;
    group_label: "Entity Asset"
    group_item_label: "IP"
  }

  dimension: entity__asset__labels {
    hidden: yes
    sql: ${TABLE}.entity.asset.labels ;;
    group_label: "Entity Asset"
    group_item_label: "Labels"
  }

  dimension: entity__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.last_boot_time.nanos ;;
    group_label: "Entity Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.last_boot_time.seconds ;;
    group_label: "Entity Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.last_discover_time.nanos ;;
    group_label: "Entity Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.last_discover_time.seconds ;;
    group_label: "Entity Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__location__city {
    type: string
    sql: ${TABLE}.entity.asset.location.city ;;
    group_label: "Entity Asset Location"
    group_item_label: "City"
  }

  dimension: entity__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.entity.asset.location.country_or_region ;;
    group_label: "Entity Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: entity__asset__location__desk_name {
    type: string
    sql: ${TABLE}.entity.asset.location.desk_name ;;
    group_label: "Entity Asset Location"
    group_item_label: "Desk Name"
  }

  dimension: entity__asset__location__floor_name {
    type: string
    sql: ${TABLE}.entity.asset.location.floor_name ;;
    group_label: "Entity Asset Location"
    group_item_label: "Floor Name"
  }

  dimension: entity__asset__location__name {
    type: string
    sql: ${TABLE}.entity.asset.location.name ;;
    group_label: "Entity Asset Location"
    group_item_label: "Name"
  }

  dimension: entity__asset__location__region_latitude {
    type: number
    sql: ${TABLE}.entity.asset.location.region_latitude ;;
    group_label: "Entity Asset Location"
    group_item_label: "Region Latitude"
  }

  dimension: entity__asset__location__region_longitude {
    type: number
    sql: ${TABLE}.entity.asset.location.region_longitude ;;
    group_label: "Entity Asset Location"
    group_item_label: "Region Longitude"
  }

  dimension: entity__asset__location__state {
    type: string
    sql: ${TABLE}.entity.asset.location.state ;;
    group_label: "Entity Asset Location"
    group_item_label: "State"
  }

  dimension: entity__asset__mac {
    hidden: yes
    sql: ${TABLE}.entity.asset.mac ;;
    group_label: "Entity Asset"
    group_item_label: "Mac"
  }

  dimension: entity__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.entity.asset.nat_ip ;;
    group_label: "Entity Asset"
    group_item_label: "Nat IP"
  }

  dimension: entity__asset__network_domain {
    type: string
    sql: ${TABLE}.entity.asset.network_domain ;;
    group_label: "Entity Asset"
    group_item_label: "Network Domain"
  }

  dimension: entity__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.entity.asset.platform_software.platform ;;
    group_label: "Entity Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: entity__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.entity.asset.platform_software.platform_patch_level ;;
    group_label: "Entity Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: entity__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.entity.asset.platform_software.platform_version ;;
    group_label: "Entity Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: entity__asset__product_object_id {
    type: string
    sql: ${TABLE}.entity.asset.product_object_id ;;
    group_label: "Entity Asset"
    group_item_label: "Product Object ID"
  }

  dimension: entity__asset__software {
    hidden: yes
    sql: ${TABLE}.entity.asset.software ;;
    group_label: "Entity Asset"
    group_item_label: "Software"
  }

  dimension: entity__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.asset.system_last_update_time.nanos ;;
    group_label: "Entity Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.asset.system_last_update_time.seconds ;;
    group_label: "Entity Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__asset__type {
    type: number
    sql: ${TABLE}.entity.asset.type ;;
    group_label: "Entity Asset"
    group_item_label: "Type"
  }

  dimension: entity__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.entity.asset.vulnerabilities ;;
    group_label: "Entity Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: entity__asset_id {
    type: string
    sql: ${TABLE}.entity.asset_id ;;
    group_label: "Entity"
    group_item_label: "Asset ID"
  }

  dimension: entity__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.cloud.availability_zone ;;
    group_label: "Entity Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__cloud__environment {
    type: number
    sql: ${TABLE}.entity.cloud.environment ;;
    group_label: "Entity Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.creation_time.nanos ;;
    group_label: "Entity Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.creation_time.seconds ;;
    group_label: "Entity Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.cloud.project.attribute.labels ;;
    group_label: "Entity Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "Entity Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "Entity Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.cloud.project.attribute.permissions ;;
    group_label: "Entity Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.cloud.project.attribute.roles ;;
    group_label: "Entity Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.cloud.project.id ;;
    group_label: "Entity Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.cloud.project.name ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.cloud.project.parent ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.cloud.project.product_object_id ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.cloud.project.resource_subtype ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.cloud.project.resource_type ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.cloud.project.type ;;
    group_label: "Entity Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "Entity Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "Entity Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.cloud.vpc.attribute.labels ;;
    group_label: "Entity Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "Entity Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "Entity Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.cloud.vpc.attribute.permissions ;;
    group_label: "Entity Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.cloud.vpc.attribute.roles ;;
    group_label: "Entity Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.id ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.name ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.parent ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.product_object_id ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.resource_subtype ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.cloud.vpc.resource_type ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.cloud.vpc.type ;;
    group_label: "Entity Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__admin__account_type {
    type: number
    sql: ${TABLE}.entity.domain.admin.account_type ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__admin__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Admin Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__admin__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.environment ;;
    group_label: "Entity Domain Admin Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__admin__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.id ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__admin__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.name ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__admin__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__admin__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__admin__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__admin__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.project.type ;;
    group_label: "Entity Domain Admin Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__admin__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.admin.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Admin Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__admin__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Admin Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Admin Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.attribute.labels ;;
    group_label: "Entity Domain Admin Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__admin__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Admin Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Admin Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.attribute.permissions ;;
    group_label: "Entity Domain Admin Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__admin__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.attribute.roles ;;
    group_label: "Entity Domain Admin Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__admin__company_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.company_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__admin__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.department ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Department"
  }

  dimension: entity__domain__admin__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.email_addresses ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__admin__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.employee_id ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__admin__first_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.first_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "First Name"
  }

  dimension: entity__domain__admin__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.first_seen_time.nanos ;;
    group_label: "Entity Domain Admin First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.first_seen_time.seconds ;;
    group_label: "Entity Domain Admin First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.group_identifiers ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__admin__groupid {
    type: string
    sql: ${TABLE}.entity.domain.admin.groupid ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__admin__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.hire_date.nanos ;;
    group_label: "Entity Domain Admin Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.hire_date.seconds ;;
    group_label: "Entity Domain Admin Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__last_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.last_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__admin__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.middle_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__admin__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.city ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__admin__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.country_or_region ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__admin__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.desk_name ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__admin__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.floor_name ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__admin__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.name ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.office_address.region_latitude ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__admin__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.office_address.region_longitude ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__admin__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.admin.office_address.state ;;
    group_label: "Entity Domain Admin Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__admin__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.city ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__admin__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.country_or_region ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__admin__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.desk_name ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__admin__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.floor_name ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__admin__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.name ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__admin__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.personal_address.region_latitude ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__admin__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.admin.personal_address.region_longitude ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__admin__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.admin.personal_address.state ;;
    group_label: "Entity Domain Admin Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__admin__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.phone_numbers ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__admin__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.admin.product_object_id ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__admin__role_description {
    type: string
    sql: ${TABLE}.entity.domain.admin.role_description ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__admin__role_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.role_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__admin__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.admin.termination_date.nanos ;;
    group_label: "Entity Domain Admin Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__admin__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.admin.termination_date.seconds ;;
    group_label: "Entity Domain Admin Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__admin__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.admin.time_off ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__admin__title {
    type: string
    sql: ${TABLE}.entity.domain.admin.title ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Title"
  }

  dimension: entity__domain__admin__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.admin.user_authentication_status ;;
    group_label: "Entity Domain Admin"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__admin__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.admin.user_display_name ;;
    group_label: "Entity Domain Admin"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__admin__user_role {
    type: number
    sql: ${TABLE}.entity.domain.admin.user_role ;;
    group_label: "Entity Domain Admin"
    group_item_label: "User Role"
  }

  dimension: entity__domain__admin__userid {
    type: string
    sql: ${TABLE}.entity.domain.admin.userid ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Userid"
  }

  dimension: entity__domain__admin__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.admin.windows_sid ;;
    group_label: "Entity Domain Admin"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__audit_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.audit_update_time.nanos ;;
    group_label: "Entity Domain Audit Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__audit_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.audit_update_time.seconds ;;
    group_label: "Entity Domain Audit Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__account_type {
    type: number
    sql: ${TABLE}.entity.domain.billing.account_type ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__billing__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Billing Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__billing__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.environment ;;
    group_label: "Entity Domain Billing Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__billing__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.id ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__billing__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.name ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__billing__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__billing__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__billing__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__billing__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.project.type ;;
    group_label: "Entity Domain Billing Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__billing__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.billing.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Billing Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__billing__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Billing Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Billing Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.attribute.labels ;;
    group_label: "Entity Domain Billing Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__billing__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Billing Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Billing Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.attribute.permissions ;;
    group_label: "Entity Domain Billing Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__billing__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.attribute.roles ;;
    group_label: "Entity Domain Billing Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__billing__company_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.company_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__billing__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.department ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Department"
  }

  dimension: entity__domain__billing__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.email_addresses ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__billing__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.employee_id ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__billing__first_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.first_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "First Name"
  }

  dimension: entity__domain__billing__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.first_seen_time.nanos ;;
    group_label: "Entity Domain Billing First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.first_seen_time.seconds ;;
    group_label: "Entity Domain Billing First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.group_identifiers ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__billing__groupid {
    type: string
    sql: ${TABLE}.entity.domain.billing.groupid ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__billing__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.hire_date.nanos ;;
    group_label: "Entity Domain Billing Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.hire_date.seconds ;;
    group_label: "Entity Domain Billing Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__last_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.last_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__billing__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.middle_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__billing__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.city ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__billing__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.country_or_region ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__billing__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.desk_name ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__billing__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.floor_name ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__billing__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.name ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.office_address.region_latitude ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__billing__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.office_address.region_longitude ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__billing__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.billing.office_address.state ;;
    group_label: "Entity Domain Billing Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__billing__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.city ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__billing__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.country_or_region ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__billing__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.desk_name ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__billing__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.floor_name ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__billing__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.name ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__billing__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.personal_address.region_latitude ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__billing__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.billing.personal_address.region_longitude ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__billing__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.billing.personal_address.state ;;
    group_label: "Entity Domain Billing Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__billing__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.phone_numbers ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__billing__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.billing.product_object_id ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__billing__role_description {
    type: string
    sql: ${TABLE}.entity.domain.billing.role_description ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__billing__role_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.role_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__billing__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.billing.termination_date.nanos ;;
    group_label: "Entity Domain Billing Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__billing__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.billing.termination_date.seconds ;;
    group_label: "Entity Domain Billing Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__billing__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.billing.time_off ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__billing__title {
    type: string
    sql: ${TABLE}.entity.domain.billing.title ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Title"
  }

  dimension: entity__domain__billing__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.billing.user_authentication_status ;;
    group_label: "Entity Domain Billing"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__billing__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.billing.user_display_name ;;
    group_label: "Entity Domain Billing"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__billing__user_role {
    type: number
    sql: ${TABLE}.entity.domain.billing.user_role ;;
    group_label: "Entity Domain Billing"
    group_item_label: "User Role"
  }

  dimension: entity__domain__billing__userid {
    type: string
    sql: ${TABLE}.entity.domain.billing.userid ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Userid"
  }

  dimension: entity__domain__billing__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.billing.windows_sid ;;
    group_label: "Entity Domain Billing"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__contact_email {
    type: string
    sql: ${TABLE}.entity.domain.contact_email ;;
    group_label: "Entity Domain"
    group_item_label: "Contact Email"
  }

  dimension: entity__domain__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.creation_time.nanos ;;
    group_label: "Entity Domain Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.creation_time.seconds ;;
    group_label: "Entity Domain Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__expiration_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.expiration_time.nanos ;;
    group_label: "Entity Domain Expiration Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__expiration_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.expiration_time.seconds ;;
    group_label: "Entity Domain Expiration Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.first_seen_time.nanos ;;
    group_label: "Entity Domain First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.first_seen_time.seconds ;;
    group_label: "Entity Domain First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__iana_registrar_id {
    type: number
    sql: ${TABLE}.entity.domain.iana_registrar_id ;;
    group_label: "Entity Domain"
    group_item_label: "Iana Registrar ID"
  }

  dimension: entity__domain__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.last_seen_time.nanos ;;
    group_label: "Entity Domain Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.last_seen_time.seconds ;;
    group_label: "Entity Domain Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__name {
    type: string
    sql: ${TABLE}.entity.domain.name ;;
    group_label: "Entity Domain"
    group_item_label: "Name"
  }

  dimension: entity__domain__name_server {
    hidden: yes
    sql: ${TABLE}.entity.domain.name_server ;;
    group_label: "Entity Domain"
    group_item_label: "Name Server"
  }

  dimension: entity__domain__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.day_count ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__domain__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.day_max ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__domain__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.day_max_sub_domains ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__domain__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.rolling_max ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__domain__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.domain.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity Domain Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__domain__private_registration {
    type: yesno
    sql: ${TABLE}.entity.domain.private_registration ;;
    group_label: "Entity Domain"
    group_item_label: "Private Registration"
  }

  dimension: entity__domain__registrant__account_type {
    type: number
    sql: ${TABLE}.entity.domain.registrant.account_type ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Registrant Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__registrant__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.environment ;;
    group_label: "Entity Domain Registrant Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.name ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.project.type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__registrant__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.registrant.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__registrant__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Registrant Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Registrant Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.attribute.labels ;;
    group_label: "Entity Domain Registrant Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__registrant__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Registrant Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Registrant Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.attribute.permissions ;;
    group_label: "Entity Domain Registrant Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__registrant__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.attribute.roles ;;
    group_label: "Entity Domain Registrant Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__registrant__company_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.company_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__registrant__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.department ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Department"
  }

  dimension: entity__domain__registrant__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.email_addresses ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__registrant__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.employee_id ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__registrant__first_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.first_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "First Name"
  }

  dimension: entity__domain__registrant__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.first_seen_time.nanos ;;
    group_label: "Entity Domain Registrant First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.first_seen_time.seconds ;;
    group_label: "Entity Domain Registrant First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.group_identifiers ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__registrant__groupid {
    type: string
    sql: ${TABLE}.entity.domain.registrant.groupid ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__registrant__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.hire_date.nanos ;;
    group_label: "Entity Domain Registrant Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.hire_date.seconds ;;
    group_label: "Entity Domain Registrant Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__last_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.last_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__registrant__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.middle_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__registrant__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.city ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__registrant__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.country_or_region ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__registrant__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.desk_name ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__registrant__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.floor_name ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__registrant__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.name ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.office_address.region_latitude ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__registrant__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.office_address.region_longitude ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__registrant__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.registrant.office_address.state ;;
    group_label: "Entity Domain Registrant Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__registrant__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.city ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__registrant__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.country_or_region ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__registrant__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.desk_name ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__registrant__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.floor_name ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__registrant__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.name ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__registrant__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.personal_address.region_latitude ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__registrant__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.registrant.personal_address.region_longitude ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__registrant__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.registrant.personal_address.state ;;
    group_label: "Entity Domain Registrant Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__registrant__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.phone_numbers ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__registrant__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.registrant.product_object_id ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__registrant__role_description {
    type: string
    sql: ${TABLE}.entity.domain.registrant.role_description ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__registrant__role_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.role_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__registrant__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.registrant.termination_date.nanos ;;
    group_label: "Entity Domain Registrant Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__registrant__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.registrant.termination_date.seconds ;;
    group_label: "Entity Domain Registrant Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__registrant__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.registrant.time_off ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__registrant__title {
    type: string
    sql: ${TABLE}.entity.domain.registrant.title ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Title"
  }

  dimension: entity__domain__registrant__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.registrant.user_authentication_status ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__registrant__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.registrant.user_display_name ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__registrant__user_role {
    type: number
    sql: ${TABLE}.entity.domain.registrant.user_role ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "User Role"
  }

  dimension: entity__domain__registrant__userid {
    type: string
    sql: ${TABLE}.entity.domain.registrant.userid ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Userid"
  }

  dimension: entity__domain__registrant__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.registrant.windows_sid ;;
    group_label: "Entity Domain Registrant"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__registrar {
    type: string
    sql: ${TABLE}.entity.domain.registrar ;;
    group_label: "Entity Domain"
    group_item_label: "Registrar"
  }

  dimension: entity__domain__registry_data_raw_text {
    type: string
    sql: ${TABLE}.entity.domain.registry_data_raw_text ;;
    group_label: "Entity Domain"
    group_item_label: "Registry Data Raw Text"
  }

  dimension: entity__domain__status {
    type: string
    sql: ${TABLE}.entity.domain.status ;;
    group_label: "Entity Domain"
    group_item_label: "Status"
  }

  dimension: entity__domain__tech__account_type {
    type: number
    sql: ${TABLE}.entity.domain.tech.account_type ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__tech__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Tech Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__tech__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.environment ;;
    group_label: "Entity Domain Tech Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__tech__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.id ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__tech__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.name ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__tech__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__tech__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__tech__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__tech__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.project.type ;;
    group_label: "Entity Domain Tech Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__tech__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.tech.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Tech Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__tech__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Tech Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Tech Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.attribute.labels ;;
    group_label: "Entity Domain Tech Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__tech__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Tech Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Tech Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.attribute.permissions ;;
    group_label: "Entity Domain Tech Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__tech__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.attribute.roles ;;
    group_label: "Entity Domain Tech Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__tech__company_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.company_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__tech__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.department ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Department"
  }

  dimension: entity__domain__tech__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.email_addresses ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__tech__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.employee_id ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__tech__first_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.first_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "First Name"
  }

  dimension: entity__domain__tech__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.first_seen_time.nanos ;;
    group_label: "Entity Domain Tech First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.first_seen_time.seconds ;;
    group_label: "Entity Domain Tech First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.group_identifiers ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__tech__groupid {
    type: string
    sql: ${TABLE}.entity.domain.tech.groupid ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__tech__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.hire_date.nanos ;;
    group_label: "Entity Domain Tech Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.hire_date.seconds ;;
    group_label: "Entity Domain Tech Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__last_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.last_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__tech__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.middle_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__tech__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.city ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__tech__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.country_or_region ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__tech__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.desk_name ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__tech__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.floor_name ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__tech__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.name ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.office_address.region_latitude ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__tech__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.office_address.region_longitude ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__tech__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.tech.office_address.state ;;
    group_label: "Entity Domain Tech Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__tech__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.city ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__tech__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.country_or_region ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__tech__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.desk_name ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__tech__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.floor_name ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__tech__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.name ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__tech__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.personal_address.region_latitude ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__tech__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.tech.personal_address.region_longitude ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__tech__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.tech.personal_address.state ;;
    group_label: "Entity Domain Tech Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__tech__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.phone_numbers ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__tech__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.tech.product_object_id ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__tech__role_description {
    type: string
    sql: ${TABLE}.entity.domain.tech.role_description ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__tech__role_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.role_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__tech__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.tech.termination_date.nanos ;;
    group_label: "Entity Domain Tech Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__tech__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.tech.termination_date.seconds ;;
    group_label: "Entity Domain Tech Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__tech__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.tech.time_off ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__tech__title {
    type: string
    sql: ${TABLE}.entity.domain.tech.title ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Title"
  }

  dimension: entity__domain__tech__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.tech.user_authentication_status ;;
    group_label: "Entity Domain Tech"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__tech__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.tech.user_display_name ;;
    group_label: "Entity Domain Tech"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__tech__user_role {
    type: number
    sql: ${TABLE}.entity.domain.tech.user_role ;;
    group_label: "Entity Domain Tech"
    group_item_label: "User Role"
  }

  dimension: entity__domain__tech__userid {
    type: string
    sql: ${TABLE}.entity.domain.tech.userid ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Userid"
  }

  dimension: entity__domain__tech__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.tech.windows_sid ;;
    group_label: "Entity Domain Tech"
    group_item_label: "Windows Sid"
  }

  dimension: entity__domain__update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.update_time.nanos ;;
    group_label: "Entity Domain Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.update_time.seconds ;;
    group_label: "Entity Domain Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__whois_record_raw_text {
    type: string
    sql: ${TABLE}.entity.domain.whois_record_raw_text ;;
    group_label: "Entity Domain"
    group_item_label: "Whois Record Raw Text"
  }

  dimension: entity__domain__whois_server {
    type: string
    sql: ${TABLE}.entity.domain.whois_server ;;
    group_label: "Entity Domain"
    group_item_label: "Whois Server"
  }

  dimension: entity__domain__zone__account_type {
    type: number
    sql: ${TABLE}.entity.domain.zone.account_type ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Account Type"
  }

  dimension: entity__domain__zone__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.availability_zone ;;
    group_label: "Entity Domain Zone Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__domain__zone__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.environment ;;
    group_label: "Entity Domain Zone Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__domain__zone__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.id ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__domain__zone__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.name ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.parent ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__domain__zone__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__zone__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__zone__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.resource_type ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__zone__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.project.type ;;
    group_label: "Entity Domain Zone Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.id ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.name ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.parent ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__domain__zone__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.domain.zone.attribute.cloud.vpc.type ;;
    group_label: "Entity Domain Zone Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__domain__zone__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.creation_time.nanos ;;
    group_label: "Entity Domain Zone Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.creation_time.seconds ;;
    group_label: "Entity Domain Zone Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.attribute.labels ;;
    group_label: "Entity Domain Zone Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__domain__zone__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.last_update_time.nanos ;;
    group_label: "Entity Domain Zone Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.attribute.last_update_time.seconds ;;
    group_label: "Entity Domain Zone Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.attribute.permissions ;;
    group_label: "Entity Domain Zone Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__domain__zone__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.attribute.roles ;;
    group_label: "Entity Domain Zone Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__domain__zone__company_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.company_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Company Name"
  }

  dimension: entity__domain__zone__department {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.department ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Department"
  }

  dimension: entity__domain__zone__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.email_addresses ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Email Addresses"
  }

  dimension: entity__domain__zone__employee_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.employee_id ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Employee ID"
  }

  dimension: entity__domain__zone__first_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.first_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "First Name"
  }

  dimension: entity__domain__zone__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.first_seen_time.nanos ;;
    group_label: "Entity Domain Zone First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.first_seen_time.seconds ;;
    group_label: "Entity Domain Zone First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.group_identifiers ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__domain__zone__groupid {
    type: string
    sql: ${TABLE}.entity.domain.zone.groupid ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Groupid"
  }

  dimension: entity__domain__zone__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.hire_date.nanos ;;
    group_label: "Entity Domain Zone Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.hire_date.seconds ;;
    group_label: "Entity Domain Zone Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__last_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.last_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Last Name"
  }

  dimension: entity__domain__zone__middle_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.middle_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Middle Name"
  }

  dimension: entity__domain__zone__office_address__city {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.city ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "City"
  }

  dimension: entity__domain__zone__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.country_or_region ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__zone__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.desk_name ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__zone__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.floor_name ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__zone__office_address__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.name ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.office_address.region_latitude ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__zone__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.office_address.region_longitude ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__zone__office_address__state {
    type: string
    sql: ${TABLE}.entity.domain.zone.office_address.state ;;
    group_label: "Entity Domain Zone Office Address"
    group_item_label: "State"
  }

  dimension: entity__domain__zone__personal_address__city {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.city ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "City"
  }

  dimension: entity__domain__zone__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.country_or_region ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__domain__zone__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.desk_name ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__domain__zone__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.floor_name ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__domain__zone__personal_address__name {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.name ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__domain__zone__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.personal_address.region_latitude ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__domain__zone__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.domain.zone.personal_address.region_longitude ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__domain__zone__personal_address__state {
    type: string
    sql: ${TABLE}.entity.domain.zone.personal_address.state ;;
    group_label: "Entity Domain Zone Personal Address"
    group_item_label: "State"
  }

  dimension: entity__domain__zone__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.phone_numbers ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__domain__zone__product_object_id {
    type: string
    sql: ${TABLE}.entity.domain.zone.product_object_id ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Product Object ID"
  }

  dimension: entity__domain__zone__role_description {
    type: string
    sql: ${TABLE}.entity.domain.zone.role_description ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Role Description"
  }

  dimension: entity__domain__zone__role_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.role_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Role Name"
  }

  dimension: entity__domain__zone__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.domain.zone.termination_date.nanos ;;
    group_label: "Entity Domain Zone Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__domain__zone__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.domain.zone.termination_date.seconds ;;
    group_label: "Entity Domain Zone Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__domain__zone__time_off {
    hidden: yes
    sql: ${TABLE}.entity.domain.zone.time_off ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Time Off"
  }

  dimension: entity__domain__zone__title {
    type: string
    sql: ${TABLE}.entity.domain.zone.title ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Title"
  }

  dimension: entity__domain__zone__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.domain.zone.user_authentication_status ;;
    group_label: "Entity Domain Zone"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__domain__zone__user_display_name {
    type: string
    sql: ${TABLE}.entity.domain.zone.user_display_name ;;
    group_label: "Entity Domain Zone"
    group_item_label: "User Display Name"
  }

  dimension: entity__domain__zone__user_role {
    type: number
    sql: ${TABLE}.entity.domain.zone.user_role ;;
    group_label: "Entity Domain Zone"
    group_item_label: "User Role"
  }

  dimension: entity__domain__zone__userid {
    type: string
    sql: ${TABLE}.entity.domain.zone.userid ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Userid"
  }

  dimension: entity__domain__zone__windows_sid {
    type: string
    sql: ${TABLE}.entity.domain.zone.windows_sid ;;
    group_label: "Entity Domain Zone"
    group_item_label: "Windows Sid"
  }

  dimension: entity__email {
    type: string
    sql: ${TABLE}.entity.email ;;
    group_label: "Entity"
    group_item_label: "Email"
  }

  dimension: entity__file__ahash {
    type: string
    sql: ${TABLE}.entity.file.ahash ;;
    group_label: "Entity File"
    group_item_label: "Ahash"
  }

  dimension: entity__file__authentihash {
    type: string
    sql: ${TABLE}.entity.file.authentihash ;;
    group_label: "Entity File"
    group_item_label: "Authentihash"
  }

  dimension: entity__file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.entity.file.capabilities_tags ;;
    group_label: "Entity File"
    group_item_label: "Capabilities Tags"
  }

  dimension: entity__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.entity.file.file_metadata.pe.import_hash ;;
    group_label: "Entity File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: entity__file__file_type {
    type: number
    sql: ${TABLE}.entity.file.file_type ;;
    group_label: "Entity File"
    group_item_label: "File Type"
  }

  dimension: entity__file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.first_seen_time.nanos ;;
    group_label: "Entity File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.first_seen_time.seconds ;;
    group_label: "Entity File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__full_path {
    type: string
    sql: ${TABLE}.entity.file.full_path ;;
    group_label: "Entity File"
    group_item_label: "Full Path"
  }

  dimension: entity__file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.last_modification_time.nanos ;;
    group_label: "Entity File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.last_modification_time.seconds ;;
    group_label: "Entity File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.last_seen_time.nanos ;;
    group_label: "Entity File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.last_seen_time.seconds ;;
    group_label: "Entity File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__md5 {
    type: string
    sql: ${TABLE}.entity.file.md5 ;;
    group_label: "Entity File"
    group_item_label: "Md5"
  }

  dimension: entity__file__mime_type {
    type: string
    sql: ${TABLE}.entity.file.mime_type ;;
    group_label: "Entity File"
    group_item_label: "Mime Type"
  }

  dimension: entity__file__names {
    hidden: yes
    sql: ${TABLE}.entity.file.names ;;
    group_label: "Entity File"
    group_item_label: "Names"
  }

  dimension: entity__file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "Entity File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "Entity File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_time.nanos ;;
    group_label: "Entity File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.entity.file.pe_file.compilation_time.seconds ;;
    group_label: "Entity File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.entity.file.pe_file.entry_point ;;
    group_label: "Entity File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: entity__file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.entity.file.pe_file.entry_point_exiftool ;;
    group_label: "Entity File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: entity__file__pe_file__imphash {
    type: string
    sql: ${TABLE}.entity.file.pe_file.imphash ;;
    group_label: "Entity File Pe File"
    group_item_label: "Imphash"
  }

  dimension: entity__file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.imports ;;
    group_label: "Entity File Pe File"
    group_item_label: "Imports"
  }

  dimension: entity__file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resource ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resource"
  }

  dimension: entity__file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_language_count ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: entity__file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_language_count_str ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: entity__file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_type_count ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: entity__file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.resources_type_count_str ;;
    group_label: "Entity File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: entity__file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.section ;;
    group_label: "Entity File Pe File"
    group_item_label: "Section"
  }

  dimension: entity__file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.signature_info.signer ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: entity__file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.entity.file.pe_file.signature_info.signers ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: entity__file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.entity.file.pe_file.signature_info.verification_message ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: entity__file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.entity.file.pe_file.signature_info.verified ;;
    group_label: "Entity File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: entity__file__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.file.prevalence.day_count ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__file__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.file.prevalence.day_max ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.file.prevalence.day_max_sub_domains ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.file.prevalence.rolling_max ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.file.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__file__sha1 {
    type: string
    sql: ${TABLE}.entity.file.sha1 ;;
    group_label: "Entity File"
    group_item_label: "Sha1"
  }

  dimension: entity__file__sha256 {
    type: string
    sql: ${TABLE}.entity.file.sha256 ;;
    group_label: "Entity File"
    group_item_label: "Sha256"
  }

  dimension: entity__file__size {
    type: number
    sql: ${TABLE}.entity.file.size ;;
    group_label: "Entity File"
    group_item_label: "Size"
  }

  dimension: entity__file__ssdeep {
    type: string
    sql: ${TABLE}.entity.file.ssdeep ;;
    group_label: "Entity File"
    group_item_label: "Ssdeep"
  }

  dimension: entity__file__vhash {
    type: string
    sql: ${TABLE}.entity.file.vhash ;;
    group_label: "Entity File"
    group_item_label: "Vhash"
  }

  dimension: entity__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.availability_zone ;;
    group_label: "Entity Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.cloud.environment ;;
    group_label: "Entity Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.id ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.name ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.parent ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.resource_type ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.project.type ;;
    group_label: "Entity Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.id ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.name ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.parent ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.`group`.attribute.cloud.vpc.type ;;
    group_label: "Entity Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.creation_time.nanos ;;
    group_label: "Entity Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.creation_time.seconds ;;
    group_label: "Entity Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.group.attribute.labels ;;
    group_label: "Entity Group Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.last_update_time.nanos ;;
    group_label: "Entity Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.`group`.attribute.last_update_time.seconds ;;
    group_label: "Entity Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.group.attribute.permissions ;;
    group_label: "Entity Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.group.attribute.roles ;;
    group_label: "Entity Group Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.`group`.creation_time.nanos ;;
    group_label: "Entity Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.`group`.creation_time.seconds ;;
    group_label: "Entity Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.group.email_addresses ;;
    group_label: "Entity Group"
    group_item_label: "Email Addresses"
  }

  dimension: entity__group__group_display_name {
    type: string
    sql: ${TABLE}.entity.`group`.group_display_name ;;
    group_label: "Entity Group"
    group_item_label: "Group Display Name"
  }

  dimension: entity__group__product_object_id {
    type: string
    sql: ${TABLE}.entity.`group`.product_object_id ;;
    group_label: "Entity Group"
    group_item_label: "Product Object ID"
  }

  dimension: entity__group__windows_sid {
    type: string
    sql: ${TABLE}.entity.`group`.windows_sid ;;
    group_label: "Entity Group"
    group_item_label: "Windows Sid"
  }

  dimension: entity__hostname {
    type: string
    sql: ${TABLE}.entity.hostname ;;
    group_label: "Entity"
    group_item_label: "Hostname"
  }

  dimension: entity__investigation__comments {
    hidden: yes
    sql: ${TABLE}.entity.investigation.comments ;;
    group_label: "Entity Investigation"
    group_item_label: "Comments"
  }

  dimension: entity__investigation__priority {
    type: number
    sql: ${TABLE}.entity.investigation.priority ;;
    group_label: "Entity Investigation"
    group_item_label: "Priority"
  }

  dimension: entity__investigation__reason {
    type: number
    sql: ${TABLE}.entity.investigation.reason ;;
    group_label: "Entity Investigation"
    group_item_label: "Reason"
  }

  dimension: entity__investigation__reputation {
    type: number
    sql: ${TABLE}.entity.investigation.reputation ;;
    group_label: "Entity Investigation"
    group_item_label: "Reputation"
  }

  dimension: entity__investigation__risk_score {
    type: number
    sql: ${TABLE}.entity.investigation.risk_score ;;
    group_label: "Entity Investigation"
    group_item_label: "Risk Score"
  }

  dimension: entity__investigation__root_cause {
    type: string
    sql: ${TABLE}.entity.investigation.root_cause ;;
    group_label: "Entity Investigation"
    group_item_label: "Root Cause"
  }

  dimension: entity__investigation__severity_score {
    type: number
    sql: ${TABLE}.entity.investigation.severity_score ;;
    group_label: "Entity Investigation"
    group_item_label: "Severity Score"
  }

  dimension: entity__investigation__status {
    type: number
    sql: ${TABLE}.entity.investigation.status ;;
    group_label: "Entity Investigation"
    group_item_label: "Status"
  }

  dimension: entity__investigation__verdict {
    type: number
    sql: ${TABLE}.entity.investigation.verdict ;;
    group_label: "Entity Investigation"
    group_item_label: "Verdict"
  }

  dimension: entity__ip {
    hidden: yes
    sql: ${TABLE}.entity.ip ;;
    group_label: "Entity"
    group_item_label: "IP"
  }

  dimension: entity__ip_geo_artifact {
    hidden: yes
    sql: ${TABLE}.entity.ip_geo_artifact ;;
    group_label: "Entity"
    group_item_label: "IP Geo Artifact"
  }

  dimension: entity__ip_location {
    hidden: yes
    sql: ${TABLE}.entity.ip_location ;;
    group_label: "Entity"
    group_item_label: "IP Location"
  }

  dimension: entity__labels {
    hidden: yes
    sql: ${TABLE}.entity.labels ;;
    group_label: "Entity"
    group_item_label: "Labels"
  }

  dimension: entity__location__city {
    type: string
    sql: ${TABLE}.entity.location.city ;;
    group_label: "Entity Location"
    group_item_label: "City"
  }

  dimension: entity__location__country_or_region {
    type: string
    sql: ${TABLE}.entity.location.country_or_region ;;
    group_label: "Entity Location"
    group_item_label: "Country or Region"
  }

  dimension: entity__location__desk_name {
    type: string
    sql: ${TABLE}.entity.location.desk_name ;;
    group_label: "Entity Location"
    group_item_label: "Desk Name"
  }

  dimension: entity__location__floor_name {
    type: string
    sql: ${TABLE}.entity.location.floor_name ;;
    group_label: "Entity Location"
    group_item_label: "Floor Name"
  }

  dimension: entity__location__name {
    type: string
    sql: ${TABLE}.entity.location.name ;;
    group_label: "Entity Location"
    group_item_label: "Name"
  }

  dimension: entity__location__region_latitude {
    type: number
    sql: ${TABLE}.entity.location.region_latitude ;;
    group_label: "Entity Location"
    group_item_label: "Region Latitude"
  }

  dimension: entity__location__region_longitude {
    type: number
    sql: ${TABLE}.entity.location.region_longitude ;;
    group_label: "Entity Location"
    group_item_label: "Region Longitude"
  }

  dimension: entity__location__state {
    type: string
    sql: ${TABLE}.entity.location.state ;;
    group_label: "Entity Location"
    group_item_label: "State"
  }

  dimension: entity__mac {
    hidden: yes
    sql: ${TABLE}.entity.mac ;;
    group_label: "Entity"
    group_item_label: "Mac"
  }

  dimension: entity__namespace {
    type: string
    sql: ${TABLE}.entity.namespace ;;
    group_label: "Entity"
    group_item_label: "Namespace"
  }

  dimension: entity__nat_ip {
    hidden: yes
    sql: ${TABLE}.entity.nat_ip ;;
    group_label: "Entity"
    group_item_label: "Nat IP"
  }

  dimension: entity__nat_port {
    type: number
    sql: ${TABLE}.entity.nat_port ;;
    group_label: "Entity"
    group_item_label: "Nat Port"
  }

  dimension: entity__object_reference__id {
    type: string
    sql: ${TABLE}.entity.object_reference.id ;;
    group_label: "Entity Object Reference"
    group_item_label: "ID"
  }

  dimension: entity__object_reference__namespace {
    type: number
    sql: ${TABLE}.entity.object_reference.namespace ;;
    group_label: "Entity Object Reference"
    group_item_label: "Namespace"
  }

  dimension: entity__platform {
    type: number
    sql: ${TABLE}.entity.platform ;;
    group_label: "Entity"
    group_item_label: "Platform"
  }

  dimension: entity__platform_patch_level {
    type: string
    sql: ${TABLE}.entity.platform_patch_level ;;
    group_label: "Entity"
    group_item_label: "Platform Patch Level"
  }

  dimension: entity__platform_version {
    type: string
    sql: ${TABLE}.entity.platform_version ;;
    group_label: "Entity"
    group_item_label: "Platform Version"
  }

  dimension: entity__port {
    type: number
    sql: ${TABLE}.entity.port ;;
    group_label: "Entity"
    group_item_label: "Port"
  }

  dimension: entity__process__access_mask {
    type: number
    sql: ${TABLE}.entity.process.access_mask ;;
    group_label: "Entity Process"
    group_item_label: "Access Mask"
  }

  dimension: entity__process__command_line {
    type: string
    sql: ${TABLE}.entity.process.command_line ;;
    group_label: "Entity Process"
    group_item_label: "Command Line"
  }

  dimension: entity__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.entity.process.command_line_history ;;
    group_label: "Entity Process"
    group_item_label: "Command Line History"
  }

  dimension: entity__process__file__ahash {
    type: string
    sql: ${TABLE}.entity.process.file.ahash ;;
    group_label: "Entity Process File"
    group_item_label: "Ahash"
  }

  dimension: entity__process__file__authentihash {
    type: string
    sql: ${TABLE}.entity.process.file.authentihash ;;
    group_label: "Entity Process File"
    group_item_label: "Authentihash"
  }

  dimension: entity__process__file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.entity.process.file.capabilities_tags ;;
    group_label: "Entity Process File"
    group_item_label: "Capabilities Tags"
  }

  dimension: entity__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.entity.process.file.file_metadata.pe.import_hash ;;
    group_label: "Entity Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: entity__process__file__file_type {
    type: number
    sql: ${TABLE}.entity.process.file.file_type ;;
    group_label: "Entity Process File"
    group_item_label: "File Type"
  }

  dimension: entity__process__file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.first_seen_time.nanos ;;
    group_label: "Entity Process File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.first_seen_time.seconds ;;
    group_label: "Entity Process File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__full_path {
    type: string
    sql: ${TABLE}.entity.process.file.full_path ;;
    group_label: "Entity Process File"
    group_item_label: "Full Path"
  }

  dimension: entity__process__file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.last_modification_time.nanos ;;
    group_label: "Entity Process File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.last_modification_time.seconds ;;
    group_label: "Entity Process File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.last_seen_time.nanos ;;
    group_label: "Entity Process File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.last_seen_time.seconds ;;
    group_label: "Entity Process File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__md5 {
    type: string
    sql: ${TABLE}.entity.process.file.md5 ;;
    group_label: "Entity Process File"
    group_item_label: "Md5"
  }

  dimension: entity__process__file__mime_type {
    type: string
    sql: ${TABLE}.entity.process.file.mime_type ;;
    group_label: "Entity Process File"
    group_item_label: "Mime Type"
  }

  dimension: entity__process__file__names {
    hidden: yes
    sql: ${TABLE}.entity.process.file.names ;;
    group_label: "Entity Process File"
    group_item_label: "Names"
  }

  dimension: entity__process__file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "Entity Process File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "Entity Process File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_time.nanos ;;
    group_label: "Entity Process File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__process__file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.compilation_time.seconds ;;
    group_label: "Entity Process File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__process__file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.entry_point ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: entity__process__file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.entity.process.file.pe_file.entry_point_exiftool ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: entity__process__file__pe_file__imphash {
    type: string
    sql: ${TABLE}.entity.process.file.pe_file.imphash ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Imphash"
  }

  dimension: entity__process__file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.imports ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Imports"
  }

  dimension: entity__process__file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resource ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resource"
  }

  dimension: entity__process__file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_language_count ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: entity__process__file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_language_count_str ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: entity__process__file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_type_count ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: entity__process__file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.resources_type_count_str ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: entity__process__file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.section ;;
    group_label: "Entity Process File Pe File"
    group_item_label: "Section"
  }

  dimension: entity__process__file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.signer ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: entity__process__file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.signers ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: entity__process__file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.verification_message ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: entity__process__file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.entity.process.file.pe_file.signature_info.verified ;;
    group_label: "Entity Process File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: entity__process__file__prevalence__day_count {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.day_count ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: entity__process__file__prevalence__day_max {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.day_max ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: entity__process__file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.day_max_sub_domains ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: entity__process__file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.rolling_max ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: entity__process__file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.entity.process.file.prevalence.rolling_max_sub_domains ;;
    group_label: "Entity Process File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: entity__process__file__sha1 {
    type: string
    sql: ${TABLE}.entity.process.file.sha1 ;;
    group_label: "Entity Process File"
    group_item_label: "Sha1"
  }

  dimension: entity__process__file__sha256 {
    type: string
    sql: ${TABLE}.entity.process.file.sha256 ;;
    group_label: "Entity Process File"
    group_item_label: "Sha256"
  }

  dimension: entity__process__file__size {
    type: number
    sql: ${TABLE}.entity.process.file.size ;;
    group_label: "Entity Process File"
    group_item_label: "Size"
  }

  dimension: entity__process__file__ssdeep {
    type: string
    sql: ${TABLE}.entity.process.file.ssdeep ;;
    group_label: "Entity Process File"
    group_item_label: "Ssdeep"
  }

  dimension: entity__process__file__vhash {
    type: string
    sql: ${TABLE}.entity.process.file.vhash ;;
    group_label: "Entity Process File"
    group_item_label: "Vhash"
  }

  dimension: entity__process__parent_pid {
    type: string
    sql: ${TABLE}.entity.process.parent_pid ;;
    group_label: "Entity Process"
    group_item_label: "Parent Pid"
  }

  dimension: entity__process__pid {
    type: string
    sql: ${TABLE}.entity.process.pid ;;
    group_label: "Entity Process"
    group_item_label: "Pid"
  }

  dimension: entity__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.entity.process.product_specific_parent_process_id ;;
    group_label: "Entity Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: entity__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.entity.process.product_specific_process_id ;;
    group_label: "Entity Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: entity__process_ancestors {
    hidden: yes
    sql: ${TABLE}.entity.process_ancestors ;;
    group_label: "Entity"
    group_item_label: "Process Ancestors"
  }

  dimension: entity__registry__registry_key {
    type: string
    sql: ${TABLE}.entity.registry.registry_key ;;
    group_label: "Entity Registry"
    group_item_label: "Registry Key"
  }

  dimension: entity__registry__registry_value_data {
    type: string
    sql: ${TABLE}.entity.registry.registry_value_data ;;
    group_label: "Entity Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: entity__registry__registry_value_name {
    type: string
    sql: ${TABLE}.entity.registry.registry_value_name ;;
    group_label: "Entity Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: entity__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.resource.attribute.cloud.availability_zone ;;
    group_label: "Entity Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.resource.attribute.cloud.environment ;;
    group_label: "Entity Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.resource.attribute.creation_time.nanos ;;
    group_label: "Entity Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.resource.attribute.creation_time.seconds ;;
    group_label: "Entity Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.resource.attribute.labels ;;
    group_label: "Entity Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.resource.attribute.last_update_time.nanos ;;
    group_label: "Entity Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.resource.attribute.last_update_time.seconds ;;
    group_label: "Entity Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.resource.attribute.permissions ;;
    group_label: "Entity Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.resource.attribute.roles ;;
    group_label: "Entity Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__resource__id {
    type: string
    sql: ${TABLE}.entity.resource.id ;;
    group_label: "Entity Resource"
    group_item_label: "ID"
  }

  dimension: entity__resource__name {
    type: string
    sql: ${TABLE}.entity.resource.name ;;
    group_label: "Entity Resource"
    group_item_label: "Name"
  }

  dimension: entity__resource__parent {
    type: string
    sql: ${TABLE}.entity.resource.parent ;;
    group_label: "Entity Resource"
    group_item_label: "Parent"
  }

  dimension: entity__resource__product_object_id {
    type: string
    sql: ${TABLE}.entity.resource.product_object_id ;;
    group_label: "Entity Resource"
    group_item_label: "Product Object ID"
  }

  dimension: entity__resource__resource_subtype {
    type: string
    sql: ${TABLE}.entity.resource.resource_subtype ;;
    group_label: "Entity Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__resource__resource_type {
    type: number
    sql: ${TABLE}.entity.resource.resource_type ;;
    group_label: "Entity Resource"
    group_item_label: "Resource Type"
  }

  dimension: entity__resource__type {
    type: string
    sql: ${TABLE}.entity.resource.type ;;
    group_label: "Entity Resource"
    group_item_label: "Type"
  }

  dimension: entity__resource_ancestors {
    hidden: yes
    sql: ${TABLE}.entity.resource_ancestors ;;
    group_label: "Entity"
    group_item_label: "Resource Ancestors"
  }

  dimension: entity__url {
    type: string
    sql: ${TABLE}.entity.url ;;
    group_label: "Entity"
    group_item_label: "URL"
  }

  dimension: entity__user__account_type {
    type: number
    sql: ${TABLE}.entity.user.account_type ;;
    group_label: "Entity User"
    group_item_label: "Account Type"
  }

  dimension: entity__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.availability_zone ;;
    group_label: "Entity User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: entity__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.entity.user.attribute.cloud.environment ;;
    group_label: "Entity User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: entity__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.id ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: entity__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.name ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: entity__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.parent ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: entity__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.product_object_id ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: entity__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.resource_subtype ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.entity.user.attribute.cloud.project.resource_type ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: entity__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.project.type ;;
    group_label: "Entity User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: entity__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.id ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: entity__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.name ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: entity__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.parent ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: entity__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: entity__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: entity__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.resource_type ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: entity__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.entity.user.attribute.cloud.vpc.type ;;
    group_label: "Entity User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: entity__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.entity.user.attribute.creation_time.nanos ;;
    group_label: "Entity User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: entity__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.entity.user.attribute.creation_time.seconds ;;
    group_label: "Entity User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: entity__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.entity.user.attribute.labels ;;
    group_label: "Entity User Attribute"
    group_item_label: "Labels"
  }

  dimension: entity__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.entity.user.attribute.last_update_time.nanos ;;
    group_label: "Entity User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: entity__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.entity.user.attribute.last_update_time.seconds ;;
    group_label: "Entity User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: entity__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.entity.user.attribute.permissions ;;
    group_label: "Entity User Attribute"
    group_item_label: "Permissions"
  }

  dimension: entity__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.entity.user.attribute.roles ;;
    group_label: "Entity User Attribute"
    group_item_label: "Roles"
  }

  dimension: entity__user__company_name {
    type: string
    sql: ${TABLE}.entity.user.company_name ;;
    group_label: "Entity User"
    group_item_label: "Company Name"
  }

  dimension: entity__user__department {
    hidden: yes
    sql: ${TABLE}.entity.user.department ;;
    group_label: "Entity User"
    group_item_label: "Department"
  }

  dimension: entity__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.entity.user.email_addresses ;;
    group_label: "Entity User"
    group_item_label: "Email Addresses"
  }

  dimension: entity__user__employee_id {
    type: string
    sql: ${TABLE}.entity.user.employee_id ;;
    group_label: "Entity User"
    group_item_label: "Employee ID"
  }

  dimension: entity__user__first_name {
    type: string
    sql: ${TABLE}.entity.user.first_name ;;
    group_label: "Entity User"
    group_item_label: "First Name"
  }

  dimension: entity__user__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.entity.user.first_seen_time.nanos ;;
    group_label: "Entity User First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: entity__user__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.entity.user.first_seen_time.seconds ;;
    group_label: "Entity User First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: entity__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.entity.user.group_identifiers ;;
    group_label: "Entity User"
    group_item_label: "Group Identifiers"
  }

  dimension: entity__user__groupid {
    type: string
    sql: ${TABLE}.entity.user.groupid ;;
    group_label: "Entity User"
    group_item_label: "Groupid"
  }

  dimension: entity__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.entity.user.hire_date.nanos ;;
    group_label: "Entity User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: entity__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.entity.user.hire_date.seconds ;;
    group_label: "Entity User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: entity__user__last_name {
    type: string
    sql: ${TABLE}.entity.user.last_name ;;
    group_label: "Entity User"
    group_item_label: "Last Name"
  }

  dimension: entity__user__middle_name {
    type: string
    sql: ${TABLE}.entity.user.middle_name ;;
    group_label: "Entity User"
    group_item_label: "Middle Name"
  }

  dimension: entity__user__office_address__city {
    type: string
    sql: ${TABLE}.entity.user.office_address.city ;;
    group_label: "Entity User Office Address"
    group_item_label: "City"
  }

  dimension: entity__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.user.office_address.country_or_region ;;
    group_label: "Entity User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__user__office_address__desk_name {
    type: string
    sql: ${TABLE}.entity.user.office_address.desk_name ;;
    group_label: "Entity User Office Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__user__office_address__floor_name {
    type: string
    sql: ${TABLE}.entity.user.office_address.floor_name ;;
    group_label: "Entity User Office Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__user__office_address__name {
    type: string
    sql: ${TABLE}.entity.user.office_address.name ;;
    group_label: "Entity User Office Address"
    group_item_label: "Name"
  }

  dimension: entity__user__office_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.user.office_address.region_latitude ;;
    group_label: "Entity User Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__user__office_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.user.office_address.region_longitude ;;
    group_label: "Entity User Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__user__office_address__state {
    type: string
    sql: ${TABLE}.entity.user.office_address.state ;;
    group_label: "Entity User Office Address"
    group_item_label: "State"
  }

  dimension: entity__user__personal_address__city {
    type: string
    sql: ${TABLE}.entity.user.personal_address.city ;;
    group_label: "Entity User Personal Address"
    group_item_label: "City"
  }

  dimension: entity__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.entity.user.personal_address.country_or_region ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: entity__user__personal_address__desk_name {
    type: string
    sql: ${TABLE}.entity.user.personal_address.desk_name ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: entity__user__personal_address__floor_name {
    type: string
    sql: ${TABLE}.entity.user.personal_address.floor_name ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: entity__user__personal_address__name {
    type: string
    sql: ${TABLE}.entity.user.personal_address.name ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Name"
  }

  dimension: entity__user__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.entity.user.personal_address.region_latitude ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: entity__user__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.entity.user.personal_address.region_longitude ;;
    group_label: "Entity User Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: entity__user__personal_address__state {
    type: string
    sql: ${TABLE}.entity.user.personal_address.state ;;
    group_label: "Entity User Personal Address"
    group_item_label: "State"
  }

  dimension: entity__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.entity.user.phone_numbers ;;
    group_label: "Entity User"
    group_item_label: "Phone Numbers"
  }

  dimension: entity__user__product_object_id {
    type: string
    sql: ${TABLE}.entity.user.product_object_id ;;
    group_label: "Entity User"
    group_item_label: "Product Object ID"
  }

  dimension: entity__user__role_description {
    type: string
    sql: ${TABLE}.entity.user.role_description ;;
    group_label: "Entity User"
    group_item_label: "Role Description"
  }

  dimension: entity__user__role_name {
    type: string
    sql: ${TABLE}.entity.user.role_name ;;
    group_label: "Entity User"
    group_item_label: "Role Name"
  }

  dimension: entity__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.entity.user.termination_date.nanos ;;
    group_label: "Entity User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: entity__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.entity.user.termination_date.seconds ;;
    group_label: "Entity User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: entity__user__time_off {
    hidden: yes
    sql: ${TABLE}.entity.user.time_off ;;
    group_label: "Entity User"
    group_item_label: "Time Off"
  }

  dimension: entity__user__title {
    type: string
    sql: ${TABLE}.entity.user.title ;;
    group_label: "Entity User"
    group_item_label: "Title"
  }

  dimension: entity__user__user_authentication_status {
    type: number
    sql: ${TABLE}.entity.user.user_authentication_status ;;
    group_label: "Entity User"
    group_item_label: "User Authentication Status"
  }

  dimension: entity__user__user_display_name {
    type: string
    sql: ${TABLE}.entity.user.user_display_name ;;
    group_label: "Entity User"
    group_item_label: "User Display Name"
  }

  dimension: entity__user__user_role {
    type: number
    sql: ${TABLE}.entity.user.user_role ;;
    group_label: "Entity User"
    group_item_label: "User Role"
  }

  dimension: entity__user__userid {
    type: string
    sql: ${TABLE}.entity.user.userid ;;
    group_label: "Entity User"
    group_item_label: "Userid"
  }

  dimension: entity__user__windows_sid {
    type: string
    sql: ${TABLE}.entity.user.windows_sid ;;
    group_label: "Entity User"
    group_item_label: "Windows Sid"
  }

  dimension: entity__user_management_chain {
    hidden: yes
    sql: ${TABLE}.entity.user_management_chain ;;
    group_label: "Entity"
    group_item_label: "User Management Chain"
  }

  dimension: entity_graph__relations {
    type: string
    hidden: yes
    sql: entity_graph__relations ;;
  }

  dimension: entity_type {
    type: number
    sql: entity_type ;;
  }

  dimension: relationship {
    type: number
    sql: relationship ;;
  }

  dimension: uid {
    type: string
    sql: uid ;;
  }
}

view: entity_graph__entity__ip {
  dimension: entity_graph__entity__ip {
    type: string
    sql: entity_graph__entity__ip ;;
  }
}

view: entity_graph__entity__mac {
  dimension: entity_graph__entity__mac {
    type: string
    sql: entity_graph__entity__mac ;;
  }
}

view: entity_graph__entity__nat_ip {
  dimension: entity_graph__entity__nat_ip {
    type: string
    sql: entity_graph__entity__nat_ip ;;
  }
}

view: entity_graph__entity__asset__ip {
  dimension: entity_graph__entity__asset__ip {
    type: string
    sql: entity_graph__entity__asset__ip ;;
  }
}

view: entity_graph__entity__asset__mac {
  dimension: entity_graph__entity__asset__mac {
    type: string
    sql: entity_graph__entity__asset__mac ;;
  }
}

view: entity_graph__entity__file__names {
  dimension: entity_graph__entity__file__names {
    type: string
    sql: entity_graph__entity__file__names ;;
  }
}

view: entity_graph__entity__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__ip {
  dimension: entity_graph__relations__entity__ip {
    type: string
    sql: entity_graph__relations__entity__ip ;;
  }
}

view: entity_graph__entity__asset__nat_ip {
  dimension: entity_graph__entity__asset__nat_ip {
    type: string
    sql: entity_graph__entity__asset__nat_ip ;;
  }
}

view: entity_graph__relations__entity__mac {
  dimension: entity_graph__relations__entity__mac {
    type: string
    sql: entity_graph__relations__entity__mac ;;
  }
}

view: entity_graph__additional__fields {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value__bool_value {
    type: yesno
    sql: ${TABLE}.value.bool_value ;;
    group_label: "Value"
    group_item_label: "Bool Value"
  }

  dimension: value__null_value {
    type: number
    sql: ${TABLE}.value.null_value ;;
    group_label: "Value"
    group_item_label: "Null Value"
  }

  dimension: value__number_value {
    type: number
    sql: ${TABLE}.value.number_value ;;
    group_label: "Value"
    group_item_label: "Number Value"
  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }
}

view: entity_graph__metadata__threat__action {
  dimension: entity_graph__metadata__threat__action {
    type: number
    sql: entity_graph__metadata__threat__action ;;
  }
}

view: entity_graph__entity__user__department {
  dimension: entity_graph__entity__user__department {
    type: string
    sql: entity_graph__entity__user__department ;;
  }
}

view: entity_graph__metadata__threat {
  dimension: about__administrative_domain {
    type: string
    sql: ${TABLE}.about.administrative_domain ;;
    group_label: "About"
    group_item_label: "Administrative Domain"
  }

  dimension: about__application {
    type: string
    sql: ${TABLE}.about.application ;;
    group_label: "About"
    group_item_label: "Application"
  }

  dimension: about__artifact__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.artifact.first_seen_time.nanos ;;
    group_label: "About Artifact First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.artifact.first_seen_time.seconds ;;
    group_label: "About Artifact First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__ip {
    type: string
    sql: ${TABLE}.about.artifact.ip ;;
    group_label: "About Artifact"
    group_item_label: "IP"
  }

  dimension: about__artifact__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.artifact.last_seen_time.nanos ;;
    group_label: "About Artifact Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.artifact.last_seen_time.seconds ;;
    group_label: "About Artifact Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__location__city {
    type: string
    sql: ${TABLE}.about.artifact.location.city ;;
    group_label: "About Artifact Location"
    group_item_label: "City"
  }

  dimension: about__artifact__location__country_or_region {
    type: string
    sql: ${TABLE}.about.artifact.location.country_or_region ;;
    group_label: "About Artifact Location"
    group_item_label: "Country or Region"
  }

  dimension: about__artifact__location__desk_name {
    type: string
    sql: ${TABLE}.about.artifact.location.desk_name ;;
    group_label: "About Artifact Location"
    group_item_label: "Desk Name"
  }

  dimension: about__artifact__location__floor_name {
    type: string
    sql: ${TABLE}.about.artifact.location.floor_name ;;
    group_label: "About Artifact Location"
    group_item_label: "Floor Name"
  }

  dimension: about__artifact__location__name {
    type: string
    sql: ${TABLE}.about.artifact.location.name ;;
    group_label: "About Artifact Location"
    group_item_label: "Name"
  }

  dimension: about__artifact__location__region_latitude {
    type: number
    sql: ${TABLE}.about.artifact.location.region_latitude ;;
    group_label: "About Artifact Location"
    group_item_label: "Region Latitude"
  }

  dimension: about__artifact__location__region_longitude {
    type: number
    sql: ${TABLE}.about.artifact.location.region_longitude ;;
    group_label: "About Artifact Location"
    group_item_label: "Region Longitude"
  }

  dimension: about__artifact__location__state {
    type: string
    sql: ${TABLE}.about.artifact.location.state ;;
    group_label: "About Artifact Location"
    group_item_label: "State"
  }

  dimension: about__artifact__network__application_protocol {
    type: number
    sql: ${TABLE}.about.artifact.network.application_protocol ;;
    group_label: "About Artifact Network"
    group_item_label: "Application Protocol"
  }

  dimension: about__artifact__network__application_protocol_version {
    type: string
    sql: ${TABLE}.about.artifact.network.application_protocol_version ;;
    group_label: "About Artifact Network"
    group_item_label: "Application Protocol Version"
  }

  dimension: about__artifact__network__asn {
    type: string
    sql: ${TABLE}.about.artifact.network.asn ;;
    group_label: "About Artifact Network"
    group_item_label: "Asn"
  }

  dimension: about__artifact__network__carrier_name {
    type: string
    sql: ${TABLE}.about.artifact.network.carrier_name ;;
    group_label: "About Artifact Network"
    group_item_label: "Carrier Name"
  }

  dimension: about__artifact__network__community_id {
    type: string
    sql: ${TABLE}.about.artifact.network.community_id ;;
    group_label: "About Artifact Network"
    group_item_label: "Community ID"
  }

  dimension: about__artifact__network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.chaddr ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: about__artifact__network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.ciaddr ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: about__artifact__network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.client_hostname ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: about__artifact__network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.client_identifier ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: about__artifact__network__dhcp__file {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.file ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "File"
  }

  dimension: about__artifact__network__dhcp__flags {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.flags ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: about__artifact__network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.giaddr ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: about__artifact__network__dhcp__hlen {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.hlen ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: about__artifact__network__dhcp__hops {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.hops ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: about__artifact__network__dhcp__htype {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.htype ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: about__artifact__network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.lease_time_seconds ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: about__artifact__network__dhcp__opcode {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.opcode ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: about__artifact__network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.dhcp.options ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Options"
  }

  dimension: about__artifact__network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.requested_address ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: about__artifact__network__dhcp__seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.seconds ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.siaddr ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: about__artifact__network__dhcp__sname {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.sname ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: about__artifact__network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.transaction_id ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: about__artifact__network__dhcp__type {
    type: number
    sql: ${TABLE}.about.artifact.network.dhcp.type ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Type"
  }

  dimension: about__artifact__network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.about.artifact.network.dhcp.yiaddr ;;
    group_label: "About Artifact Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: about__artifact__network__direction {
    type: number
    sql: ${TABLE}.about.artifact.network.direction ;;
    group_label: "About Artifact Network"
    group_item_label: "Direction"
  }

  dimension: about__artifact__network__dns__additional {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.dns.additional ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Additional"
  }

  dimension: about__artifact__network__dns__answers {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.dns.answers ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Answers"
  }

  dimension: about__artifact__network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.about.artifact.network.dns.authoritative ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: about__artifact__network__dns__authority {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.dns.authority ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Authority"
  }

  dimension: about__artifact__network__dns__id {
    type: number
    sql: ${TABLE}.about.artifact.network.dns.id ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "ID"
  }

  dimension: about__artifact__network__dns__opcode {
    type: number
    sql: ${TABLE}.about.artifact.network.dns.opcode ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Opcode"
  }

  dimension: about__artifact__network__dns__questions {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.dns.questions ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Questions"
  }

  dimension: about__artifact__network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.about.artifact.network.dns.recursion_available ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: about__artifact__network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.about.artifact.network.dns.recursion_desired ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: about__artifact__network__dns__response {
    type: yesno
    sql: ${TABLE}.about.artifact.network.dns.response ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Response"
  }

  dimension: about__artifact__network__dns__response_code {
    type: number
    sql: ${TABLE}.about.artifact.network.dns.response_code ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Response Code"
  }

  dimension: about__artifact__network__dns__truncated {
    type: yesno
    sql: ${TABLE}.about.artifact.network.dns.truncated ;;
    group_label: "About Artifact Network Dns"
    group_item_label: "Truncated"
  }

  dimension: about__artifact__network__dns_domain {
    type: string
    sql: ${TABLE}.about.artifact.network.dns_domain ;;
    group_label: "About Artifact Network"
    group_item_label: "Dns Domain"
  }

  dimension: about__artifact__network__email__bcc {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.email.bcc ;;
    group_label: "About Artifact Network Email"
    group_item_label: "Bcc"
  }

  dimension: about__artifact__network__email__bounce_address {
    type: string
    sql: ${TABLE}.about.artifact.network.email.bounce_address ;;
    group_label: "About Artifact Network Email"
    group_item_label: "Bounce Address"
  }

  dimension: about__artifact__network__email__cc {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.email.cc ;;
    group_label: "About Artifact Network Email"
    group_item_label: "Cc"
  }

  dimension: about__artifact__network__email__from {
    type: string
    sql: ${TABLE}.about.artifact.network.email.`from` ;;
    group_label: "About Artifact Network Email"
    group_item_label: "From"
  }

  dimension: about__artifact__network__email__mail_id {
    type: string
    sql: ${TABLE}.about.artifact.network.email.mail_id ;;
    group_label: "About Artifact Network Email"
    group_item_label: "Mail ID"
  }

  dimension: about__artifact__network__email__reply_to {
    type: string
    sql: ${TABLE}.about.artifact.network.email.reply_to ;;
    group_label: "About Artifact Network Email"
    group_item_label: "Reply To"
  }

  dimension: about__artifact__network__email__subject {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.email.subject ;;
    group_label: "About Artifact Network Email"
    group_item_label: "Subject"
  }

  dimension: about__artifact__network__email__to {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.email.`to` ;;
    group_label: "About Artifact Network Email"
    group_item_label: "To"
  }

  dimension: about__artifact__network__ftp__command {
    type: string
    sql: ${TABLE}.about.artifact.network.ftp.command ;;
    group_label: "About Artifact Network Ftp"
    group_item_label: "Command"
  }

  dimension: about__artifact__network__http__method {
    type: string
    sql: ${TABLE}.about.artifact.network.http.method ;;
    group_label: "About Artifact Network HTTP"
    group_item_label: "Method"
  }

  dimension: about__artifact__network__http__parsed_user_agent__annotation {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.annotation ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Annotation"
  }

  dimension: about__artifact__network__http__parsed_user_agent__browser {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.browser ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser"
  }

  dimension: about__artifact__network__http__parsed_user_agent__browser_engine_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.browser_engine_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser Engine Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__browser_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.browser_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Browser Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__carrier {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.carrier ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Carrier"
  }

  dimension: about__artifact__network__http__parsed_user_agent__device {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.device ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Device"
  }

  dimension: about__artifact__network__http__parsed_user_agent__device_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.device_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Device Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__family {
    type: number
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.family ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Family"
  }

  dimension: about__artifact__network__http__parsed_user_agent__google_toolbar_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.google_toolbar_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Google Toolbar Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__java_configuration {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.java_configuration ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration"
  }

  dimension: about__artifact__network__http__parsed_user_agent__java_configuration_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.java_configuration_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__java_profile {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.java_profile ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Profile"
  }

  dimension: about__artifact__network__http__parsed_user_agent__java_profile_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.java_profile_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Java Profile Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__locale {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.locale ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Locale"
  }

  dimension: about__artifact__network__http__parsed_user_agent__messaging {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.messaging ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Messaging"
  }

  dimension: about__artifact__network__http__parsed_user_agent__messaging_version {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.messaging_version ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Messaging Version"
  }

  dimension: about__artifact__network__http__parsed_user_agent__os {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.os ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "OS"
  }

  dimension: about__artifact__network__http__parsed_user_agent__os_variant {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.os_variant ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "OS Variant"
  }

  dimension: about__artifact__network__http__parsed_user_agent__platform {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.platform ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Platform"
  }

  dimension: about__artifact__network__http__parsed_user_agent__security {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.security ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Security"
  }

  dimension: about__artifact__network__http__parsed_user_agent__sub_family {
    type: string
    sql: ${TABLE}.about.artifact.network.http.parsed_user_agent.sub_family ;;
    group_label: "About Artifact Network HTTP Parsed User Agent"
    group_item_label: "Sub Family"
  }

  dimension: about__artifact__network__http__referral_url {
    type: string
    sql: ${TABLE}.about.artifact.network.http.referral_url ;;
    group_label: "About Artifact Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: about__artifact__network__http__response_code {
    type: number
    sql: ${TABLE}.about.artifact.network.http.response_code ;;
    group_label: "About Artifact Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: about__artifact__network__http__user_agent {
    type: string
    sql: ${TABLE}.about.artifact.network.http.user_agent ;;
    group_label: "About Artifact Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: about__artifact__network__ip_protocol {
    type: number
    sql: ${TABLE}.about.artifact.network.ip_protocol ;;
    group_label: "About Artifact Network"
    group_item_label: "IP Protocol"
  }

  dimension: about__artifact__network__organization_name {
    type: string
    sql: ${TABLE}.about.artifact.network.organization_name ;;
    group_label: "About Artifact Network"
    group_item_label: "Organization Name"
  }

  dimension: about__artifact__network__parent_session_id {
    type: string
    sql: ${TABLE}.about.artifact.network.parent_session_id ;;
    group_label: "About Artifact Network"
    group_item_label: "Parent Session ID"
  }

  dimension: about__artifact__network__received_bytes {
    type: number
    sql: ${TABLE}.about.artifact.network.received_bytes ;;
    group_label: "About Artifact Network"
    group_item_label: "Received Bytes"
  }

  dimension: about__artifact__network__received_packets {
    type: number
    sql: ${TABLE}.about.artifact.network.received_packets ;;
    group_label: "About Artifact Network"
    group_item_label: "Received Packets"
  }

  dimension: about__artifact__network__sent_bytes {
    type: number
    sql: ${TABLE}.about.artifact.network.sent_bytes ;;
    group_label: "About Artifact Network"
    group_item_label: "Sent Bytes"
  }

  dimension: about__artifact__network__sent_packets {
    type: number
    sql: ${TABLE}.about.artifact.network.sent_packets ;;
    group_label: "About Artifact Network"
    group_item_label: "Sent Packets"
  }

  dimension: about__artifact__network__session_duration__nanos {
    type: number
    sql: ${TABLE}.about.artifact.network.session_duration.nanos ;;
    group_label: "About Artifact Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__network__session_duration__seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.session_duration.seconds ;;
    group_label: "About Artifact Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__network__session_id {
    type: string
    sql: ${TABLE}.about.artifact.network.session_id ;;
    group_label: "About Artifact Network"
    group_item_label: "Session ID"
  }

  dimension: about__artifact__network__smtp__helo {
    type: string
    sql: ${TABLE}.about.artifact.network.smtp.helo ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Helo"
  }

  dimension: about__artifact__network__smtp__is_tls {
    type: yesno
    sql: ${TABLE}.about.artifact.network.smtp.is_tls ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Is Tls"
  }

  dimension: about__artifact__network__smtp__is_webmail {
    type: yesno
    sql: ${TABLE}.about.artifact.network.smtp.is_webmail ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Is Webmail"
  }

  dimension: about__artifact__network__smtp__mail_from {
    type: string
    sql: ${TABLE}.about.artifact.network.smtp.mail_from ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Mail From"
  }

  dimension: about__artifact__network__smtp__message_path {
    type: string
    sql: ${TABLE}.about.artifact.network.smtp.message_path ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Message Path"
  }

  dimension: about__artifact__network__smtp__rcpt_to {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.smtp.rcpt_to ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Rcpt To"
  }

  dimension: about__artifact__network__smtp__server_response {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.smtp.server_response ;;
    group_label: "About Artifact Network Smtp"
    group_item_label: "Server Response"
  }

  dimension: about__artifact__network__tls__cipher {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.cipher ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Cipher"
  }

  dimension: about__artifact__network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.issuer ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: about__artifact__network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.md5 ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: about__artifact__network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.not_after.nanos ;;
    group_label: "About Artifact Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.not_after.seconds ;;
    group_label: "About Artifact Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.not_before.nanos ;;
    group_label: "About Artifact Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.not_before.seconds ;;
    group_label: "About Artifact Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.serial ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: about__artifact__network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.sha1 ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: about__artifact__network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.sha256 ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: about__artifact__network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.subject ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: about__artifact__network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.certificate.version ;;
    group_label: "About Artifact Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: about__artifact__network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.ja3 ;;
    group_label: "About Artifact Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: about__artifact__network__tls__client__server_name {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.client.server_name ;;
    group_label: "About Artifact Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: about__artifact__network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.about.artifact.network.tls.client.supported_ciphers ;;
    group_label: "About Artifact Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: about__artifact__network__tls__curve {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.curve ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Curve"
  }

  dimension: about__artifact__network__tls__established {
    type: yesno
    sql: ${TABLE}.about.artifact.network.tls.established ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Established"
  }

  dimension: about__artifact__network__tls__next_protocol {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.next_protocol ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: about__artifact__network__tls__resumed {
    type: yesno
    sql: ${TABLE}.about.artifact.network.tls.resumed ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Resumed"
  }

  dimension: about__artifact__network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.issuer ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: about__artifact__network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.md5 ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: about__artifact__network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.not_after.nanos ;;
    group_label: "About Artifact Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.not_after.seconds ;;
    group_label: "About Artifact Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.not_before.nanos ;;
    group_label: "About Artifact Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: about__artifact__network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.not_before.seconds ;;
    group_label: "About Artifact Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: about__artifact__network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.serial ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: about__artifact__network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.sha1 ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: about__artifact__network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.sha256 ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: about__artifact__network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.subject ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: about__artifact__network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.certificate.version ;;
    group_label: "About Artifact Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: about__artifact__network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.server.ja3s ;;
    group_label: "About Artifact Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: about__artifact__network__tls__version {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.version ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Version"
  }

  dimension: about__artifact__network__tls__version_protocol {
    type: string
    sql: ${TABLE}.about.artifact.network.tls.version_protocol ;;
    group_label: "About Artifact Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: about__artifact__prevalence__day_count {
    type: number
    sql: ${TABLE}.about.artifact.prevalence.day_count ;;
    group_label: "About Artifact Prevalence"
    group_item_label: "Day Count"
  }

  dimension: about__artifact__prevalence__day_max {
    type: number
    sql: ${TABLE}.about.artifact.prevalence.day_max ;;
    group_label: "About Artifact Prevalence"
    group_item_label: "Day Max"
  }

  dimension: about__artifact__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.about.artifact.prevalence.day_max_sub_domains ;;
    group_label: "About Artifact Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: about__artifact__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.about.artifact.prevalence.rolling_max ;;
    group_label: "About Artifact Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: about__artifact__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.about.artifact.prevalence.rolling_max_sub_domains ;;
    group_label: "About Artifact Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: about__asset__asset_id {
    type: string
    sql: ${TABLE}.about.asset.asset_id ;;
    group_label: "About Asset"
    group_item_label: "Asset ID"
  }

  dimension: about__asset__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.availability_zone ;;
    group_label: "About Asset Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__asset__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.environment ;;
    group_label: "About Asset Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__asset__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.id ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__asset__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.name ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__asset__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.parent ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__asset__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.product_object_id ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.resource_subtype ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__asset__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.project.resource_type ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__asset__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.project.type ;;
    group_label: "About Asset Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__asset__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.id ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__asset__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.name ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__asset__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.parent ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__asset__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__asset__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.resource_type ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__asset__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.asset.attribute.cloud.vpc.type ;;
    group_label: "About Asset Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__asset__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.attribute.creation_time.nanos ;;
    group_label: "About Asset Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.attribute.creation_time.seconds ;;
    group_label: "About Asset Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.labels ;;
    group_label: "About Asset Attribute"
    group_item_label: "Labels"
  }

  dimension: about__asset__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.attribute.last_update_time.nanos ;;
    group_label: "About Asset Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.attribute.last_update_time.seconds ;;
    group_label: "About Asset Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.permissions ;;
    group_label: "About Asset Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__asset__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.asset.attribute.roles ;;
    group_label: "About Asset Attribute"
    group_item_label: "Roles"
  }

  dimension: about__asset__category {
    type: string
    sql: ${TABLE}.about.asset.category ;;
    group_label: "About Asset"
    group_item_label: "Category"
  }

  dimension: about__asset__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.creation_time.nanos ;;
    group_label: "About Asset Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.creation_time.seconds ;;
    group_label: "About Asset Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__deployment_status {
    type: number
    sql: ${TABLE}.about.asset.deployment_status ;;
    group_label: "About Asset"
    group_item_label: "Deployment Status"
  }

  dimension: about__asset__first_discover_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.first_discover_time.nanos ;;
    group_label: "About Asset First Discover Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__first_discover_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.first_discover_time.seconds ;;
    group_label: "About Asset First Discover Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.first_seen_time.nanos ;;
    group_label: "About Asset First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.first_seen_time.seconds ;;
    group_label: "About Asset First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__hardware {
    hidden: yes
    sql: ${TABLE}.about.asset.hardware ;;
    group_label: "About Asset"
    group_item_label: "Hardware"
  }

  dimension: about__asset__hostname {
    type: string
    sql: ${TABLE}.about.asset.hostname ;;
    group_label: "About Asset"
    group_item_label: "Hostname"
  }

  dimension: about__asset__ip {
    hidden: yes
    sql: ${TABLE}.about.asset.ip ;;
    group_label: "About Asset"
    group_item_label: "IP"
  }

  dimension: about__asset__labels {
    hidden: yes
    sql: ${TABLE}.about.asset.labels ;;
    group_label: "About Asset"
    group_item_label: "Labels"
  }

  dimension: about__asset__last_boot_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.last_boot_time.nanos ;;
    group_label: "About Asset Last Boot Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__last_boot_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.last_boot_time.seconds ;;
    group_label: "About Asset Last Boot Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__last_discover_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.last_discover_time.nanos ;;
    group_label: "About Asset Last Discover Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__last_discover_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.last_discover_time.seconds ;;
    group_label: "About Asset Last Discover Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__location__city {
    type: string
    sql: ${TABLE}.about.asset.location.city ;;
    group_label: "About Asset Location"
    group_item_label: "City"
  }

  dimension: about__asset__location__country_or_region {
    type: string
    sql: ${TABLE}.about.asset.location.country_or_region ;;
    group_label: "About Asset Location"
    group_item_label: "Country or Region"
  }

  dimension: about__asset__location__desk_name {
    type: string
    sql: ${TABLE}.about.asset.location.desk_name ;;
    group_label: "About Asset Location"
    group_item_label: "Desk Name"
  }

  dimension: about__asset__location__floor_name {
    type: string
    sql: ${TABLE}.about.asset.location.floor_name ;;
    group_label: "About Asset Location"
    group_item_label: "Floor Name"
  }

  dimension: about__asset__location__name {
    type: string
    sql: ${TABLE}.about.asset.location.name ;;
    group_label: "About Asset Location"
    group_item_label: "Name"
  }

  dimension: about__asset__location__region_latitude {
    type: number
    sql: ${TABLE}.about.asset.location.region_latitude ;;
    group_label: "About Asset Location"
    group_item_label: "Region Latitude"
  }

  dimension: about__asset__location__region_longitude {
    type: number
    sql: ${TABLE}.about.asset.location.region_longitude ;;
    group_label: "About Asset Location"
    group_item_label: "Region Longitude"
  }

  dimension: about__asset__location__state {
    type: string
    sql: ${TABLE}.about.asset.location.state ;;
    group_label: "About Asset Location"
    group_item_label: "State"
  }

  dimension: about__asset__mac {
    hidden: yes
    sql: ${TABLE}.about.asset.mac ;;
    group_label: "About Asset"
    group_item_label: "Mac"
  }

  dimension: about__asset__nat_ip {
    hidden: yes
    sql: ${TABLE}.about.asset.nat_ip ;;
    group_label: "About Asset"
    group_item_label: "Nat IP"
  }

  dimension: about__asset__network_domain {
    type: string
    sql: ${TABLE}.about.asset.network_domain ;;
    group_label: "About Asset"
    group_item_label: "Network Domain"
  }

  dimension: about__asset__platform_software__platform {
    type: number
    sql: ${TABLE}.about.asset.platform_software.platform ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform"
  }

  dimension: about__asset__platform_software__platform_patch_level {
    type: string
    sql: ${TABLE}.about.asset.platform_software.platform_patch_level ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform Patch Level"
  }

  dimension: about__asset__platform_software__platform_version {
    type: string
    sql: ${TABLE}.about.asset.platform_software.platform_version ;;
    group_label: "About Asset Platform Software"
    group_item_label: "Platform Version"
  }

  dimension: about__asset__product_object_id {
    type: string
    sql: ${TABLE}.about.asset.product_object_id ;;
    group_label: "About Asset"
    group_item_label: "Product Object ID"
  }

  dimension: about__asset__software {
    hidden: yes
    sql: ${TABLE}.about.asset.software ;;
    group_label: "About Asset"
    group_item_label: "Software"
  }

  dimension: about__asset__system_last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.asset.system_last_update_time.nanos ;;
    group_label: "About Asset System Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__asset__system_last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.asset.system_last_update_time.seconds ;;
    group_label: "About Asset System Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__asset__type {
    type: number
    sql: ${TABLE}.about.asset.type ;;
    group_label: "About Asset"
    group_item_label: "Type"
  }

  dimension: about__asset__vulnerabilities {
    hidden: yes
    sql: ${TABLE}.about.asset.vulnerabilities ;;
    group_label: "About Asset"
    group_item_label: "Vulnerabilities"
  }

  dimension: about__asset_id {
    type: string
    sql: ${TABLE}.about.asset_id ;;
    group_label: "About"
    group_item_label: "Asset ID"
  }

  dimension: about__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.cloud.availability_zone ;;
    group_label: "About Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__cloud__environment {
    type: number
    sql: ${TABLE}.about.cloud.environment ;;
    group_label: "About Cloud"
    group_item_label: "Environment"
  }

  dimension: about__cloud__project__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.creation_time.nanos ;;
    group_label: "About Cloud Project Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__project__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.creation_time.seconds ;;
    group_label: "About Cloud Project Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__project__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.labels ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Labels"
  }

  dimension: about__cloud__project__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.last_update_time.nanos ;;
    group_label: "About Cloud Project Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__project__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.project.attribute.last_update_time.seconds ;;
    group_label: "About Cloud Project Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__project__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.permissions ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__cloud__project__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.cloud.project.attribute.roles ;;
    group_label: "About Cloud Project Attribute"
    group_item_label: "Roles"
  }

  dimension: about__cloud__project__id {
    type: string
    sql: ${TABLE}.about.cloud.project.id ;;
    group_label: "About Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__cloud__project__name {
    type: string
    sql: ${TABLE}.about.cloud.project.name ;;
    group_label: "About Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.cloud.project.parent ;;
    group_label: "About Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.cloud.project.product_object_id ;;
    group_label: "About Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.cloud.project.resource_subtype ;;
    group_label: "About Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.cloud.project.resource_type ;;
    group_label: "About Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__cloud__project__type {
    type: string
    sql: ${TABLE}.about.cloud.project.type ;;
    group_label: "About Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__cloud__vpc__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.creation_time.nanos ;;
    group_label: "About Cloud Vpc Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__vpc__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.creation_time.seconds ;;
    group_label: "About Cloud Vpc Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__vpc__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.labels ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Labels"
  }

  dimension: about__cloud__vpc__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.last_update_time.nanos ;;
    group_label: "About Cloud Vpc Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__cloud__vpc__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.cloud.vpc.attribute.last_update_time.seconds ;;
    group_label: "About Cloud Vpc Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__cloud__vpc__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.permissions ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__cloud__vpc__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.cloud.vpc.attribute.roles ;;
    group_label: "About Cloud Vpc Attribute"
    group_item_label: "Roles"
  }

  dimension: about__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.cloud.vpc.id ;;
    group_label: "About Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.cloud.vpc.name ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.cloud.vpc.parent ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.cloud.vpc.product_object_id ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.cloud.vpc.resource_subtype ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.cloud.vpc.resource_type ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.cloud.vpc.type ;;
    group_label: "About Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__domain__admin__account_type {
    type: number
    sql: ${TABLE}.about.domain.admin.account_type ;;
    group_label: "About Domain Admin"
    group_item_label: "Account Type"
  }

  dimension: about__domain__admin__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.availability_zone ;;
    group_label: "About Domain Admin Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__domain__admin__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.cloud.environment ;;
    group_label: "About Domain Admin Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__domain__admin__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.id ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__domain__admin__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.name ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__domain__admin__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.parent ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__domain__admin__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.product_object_id ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__admin__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.resource_subtype ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__admin__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.resource_type ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__admin__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.project.type ;;
    group_label: "About Domain Admin Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.id ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.name ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.parent ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.resource_type ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__admin__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.domain.admin.attribute.cloud.vpc.type ;;
    group_label: "About Domain Admin Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__domain__admin__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.creation_time.nanos ;;
    group_label: "About Domain Admin Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__admin__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.creation_time.seconds ;;
    group_label: "About Domain Admin Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__admin__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.attribute.labels ;;
    group_label: "About Domain Admin Attribute"
    group_item_label: "Labels"
  }

  dimension: about__domain__admin__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.last_update_time.nanos ;;
    group_label: "About Domain Admin Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__admin__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.admin.attribute.last_update_time.seconds ;;
    group_label: "About Domain Admin Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__admin__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.attribute.permissions ;;
    group_label: "About Domain Admin Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__domain__admin__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.attribute.roles ;;
    group_label: "About Domain Admin Attribute"
    group_item_label: "Roles"
  }

  dimension: about__domain__admin__company_name {
    type: string
    sql: ${TABLE}.about.domain.admin.company_name ;;
    group_label: "About Domain Admin"
    group_item_label: "Company Name"
  }

  dimension: about__domain__admin__department {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.department ;;
    group_label: "About Domain Admin"
    group_item_label: "Department"
  }

  dimension: about__domain__admin__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.email_addresses ;;
    group_label: "About Domain Admin"
    group_item_label: "Email Addresses"
  }

  dimension: about__domain__admin__employee_id {
    type: string
    sql: ${TABLE}.about.domain.admin.employee_id ;;
    group_label: "About Domain Admin"
    group_item_label: "Employee ID"
  }

  dimension: about__domain__admin__first_name {
    type: string
    sql: ${TABLE}.about.domain.admin.first_name ;;
    group_label: "About Domain Admin"
    group_item_label: "First Name"
  }

  dimension: about__domain__admin__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.admin.first_seen_time.nanos ;;
    group_label: "About Domain Admin First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__admin__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.admin.first_seen_time.seconds ;;
    group_label: "About Domain Admin First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__admin__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.group_identifiers ;;
    group_label: "About Domain Admin"
    group_item_label: "Group Identifiers"
  }

  dimension: about__domain__admin__groupid {
    type: string
    sql: ${TABLE}.about.domain.admin.groupid ;;
    group_label: "About Domain Admin"
    group_item_label: "Groupid"
  }

  dimension: about__domain__admin__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.admin.hire_date.nanos ;;
    group_label: "About Domain Admin Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__admin__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.admin.hire_date.seconds ;;
    group_label: "About Domain Admin Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__admin__last_name {
    type: string
    sql: ${TABLE}.about.domain.admin.last_name ;;
    group_label: "About Domain Admin"
    group_item_label: "Last Name"
  }

  dimension: about__domain__admin__middle_name {
    type: string
    sql: ${TABLE}.about.domain.admin.middle_name ;;
    group_label: "About Domain Admin"
    group_item_label: "Middle Name"
  }

  dimension: about__domain__admin__office_address__city {
    type: string
    sql: ${TABLE}.about.domain.admin.office_address.city ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "City"
  }

  dimension: about__domain__admin__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.admin.office_address.country_or_region ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__admin__office_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.admin.office_address.desk_name ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__admin__office_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.admin.office_address.floor_name ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__admin__office_address__name {
    type: string
    sql: ${TABLE}.about.domain.admin.office_address.name ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "Name"
  }

  dimension: about__domain__admin__office_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.admin.office_address.region_latitude ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__admin__office_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.admin.office_address.region_longitude ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__admin__office_address__state {
    type: string
    sql: ${TABLE}.about.domain.admin.office_address.state ;;
    group_label: "About Domain Admin Office Address"
    group_item_label: "State"
  }

  dimension: about__domain__admin__personal_address__city {
    type: string
    sql: ${TABLE}.about.domain.admin.personal_address.city ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "City"
  }

  dimension: about__domain__admin__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.admin.personal_address.country_or_region ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__admin__personal_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.admin.personal_address.desk_name ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__admin__personal_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.admin.personal_address.floor_name ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__admin__personal_address__name {
    type: string
    sql: ${TABLE}.about.domain.admin.personal_address.name ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "Name"
  }

  dimension: about__domain__admin__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.admin.personal_address.region_latitude ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__admin__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.admin.personal_address.region_longitude ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__admin__personal_address__state {
    type: string
    sql: ${TABLE}.about.domain.admin.personal_address.state ;;
    group_label: "About Domain Admin Personal Address"
    group_item_label: "State"
  }

  dimension: about__domain__admin__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.phone_numbers ;;
    group_label: "About Domain Admin"
    group_item_label: "Phone Numbers"
  }

  dimension: about__domain__admin__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.admin.product_object_id ;;
    group_label: "About Domain Admin"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__admin__role_description {
    type: string
    sql: ${TABLE}.about.domain.admin.role_description ;;
    group_label: "About Domain Admin"
    group_item_label: "Role Description"
  }

  dimension: about__domain__admin__role_name {
    type: string
    sql: ${TABLE}.about.domain.admin.role_name ;;
    group_label: "About Domain Admin"
    group_item_label: "Role Name"
  }

  dimension: about__domain__admin__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.admin.termination_date.nanos ;;
    group_label: "About Domain Admin Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__admin__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.admin.termination_date.seconds ;;
    group_label: "About Domain Admin Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__admin__time_off {
    hidden: yes
    sql: ${TABLE}.about.domain.admin.time_off ;;
    group_label: "About Domain Admin"
    group_item_label: "Time Off"
  }

  dimension: about__domain__admin__title {
    type: string
    sql: ${TABLE}.about.domain.admin.title ;;
    group_label: "About Domain Admin"
    group_item_label: "Title"
  }

  dimension: about__domain__admin__user_authentication_status {
    type: number
    sql: ${TABLE}.about.domain.admin.user_authentication_status ;;
    group_label: "About Domain Admin"
    group_item_label: "User Authentication Status"
  }

  dimension: about__domain__admin__user_display_name {
    type: string
    sql: ${TABLE}.about.domain.admin.user_display_name ;;
    group_label: "About Domain Admin"
    group_item_label: "User Display Name"
  }

  dimension: about__domain__admin__user_role {
    type: number
    sql: ${TABLE}.about.domain.admin.user_role ;;
    group_label: "About Domain Admin"
    group_item_label: "User Role"
  }

  dimension: about__domain__admin__userid {
    type: string
    sql: ${TABLE}.about.domain.admin.userid ;;
    group_label: "About Domain Admin"
    group_item_label: "Userid"
  }

  dimension: about__domain__admin__windows_sid {
    type: string
    sql: ${TABLE}.about.domain.admin.windows_sid ;;
    group_label: "About Domain Admin"
    group_item_label: "Windows Sid"
  }

  dimension: about__domain__audit_update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.audit_update_time.nanos ;;
    group_label: "About Domain Audit Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__audit_update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.audit_update_time.seconds ;;
    group_label: "About Domain Audit Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__billing__account_type {
    type: number
    sql: ${TABLE}.about.domain.billing.account_type ;;
    group_label: "About Domain Billing"
    group_item_label: "Account Type"
  }

  dimension: about__domain__billing__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.availability_zone ;;
    group_label: "About Domain Billing Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__domain__billing__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.cloud.environment ;;
    group_label: "About Domain Billing Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__domain__billing__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.id ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__domain__billing__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.name ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__domain__billing__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.parent ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__domain__billing__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.product_object_id ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__billing__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.resource_subtype ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__billing__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.resource_type ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__billing__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.project.type ;;
    group_label: "About Domain Billing Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.id ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.name ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.parent ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.resource_type ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__billing__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.domain.billing.attribute.cloud.vpc.type ;;
    group_label: "About Domain Billing Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__domain__billing__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.creation_time.nanos ;;
    group_label: "About Domain Billing Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__billing__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.creation_time.seconds ;;
    group_label: "About Domain Billing Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__billing__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.attribute.labels ;;
    group_label: "About Domain Billing Attribute"
    group_item_label: "Labels"
  }

  dimension: about__domain__billing__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.last_update_time.nanos ;;
    group_label: "About Domain Billing Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__billing__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.billing.attribute.last_update_time.seconds ;;
    group_label: "About Domain Billing Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__billing__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.attribute.permissions ;;
    group_label: "About Domain Billing Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__domain__billing__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.attribute.roles ;;
    group_label: "About Domain Billing Attribute"
    group_item_label: "Roles"
  }

  dimension: about__domain__billing__company_name {
    type: string
    sql: ${TABLE}.about.domain.billing.company_name ;;
    group_label: "About Domain Billing"
    group_item_label: "Company Name"
  }

  dimension: about__domain__billing__department {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.department ;;
    group_label: "About Domain Billing"
    group_item_label: "Department"
  }

  dimension: about__domain__billing__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.email_addresses ;;
    group_label: "About Domain Billing"
    group_item_label: "Email Addresses"
  }

  dimension: about__domain__billing__employee_id {
    type: string
    sql: ${TABLE}.about.domain.billing.employee_id ;;
    group_label: "About Domain Billing"
    group_item_label: "Employee ID"
  }

  dimension: about__domain__billing__first_name {
    type: string
    sql: ${TABLE}.about.domain.billing.first_name ;;
    group_label: "About Domain Billing"
    group_item_label: "First Name"
  }

  dimension: about__domain__billing__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.billing.first_seen_time.nanos ;;
    group_label: "About Domain Billing First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__billing__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.billing.first_seen_time.seconds ;;
    group_label: "About Domain Billing First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__billing__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.group_identifiers ;;
    group_label: "About Domain Billing"
    group_item_label: "Group Identifiers"
  }

  dimension: about__domain__billing__groupid {
    type: string
    sql: ${TABLE}.about.domain.billing.groupid ;;
    group_label: "About Domain Billing"
    group_item_label: "Groupid"
  }

  dimension: about__domain__billing__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.billing.hire_date.nanos ;;
    group_label: "About Domain Billing Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__billing__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.billing.hire_date.seconds ;;
    group_label: "About Domain Billing Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__billing__last_name {
    type: string
    sql: ${TABLE}.about.domain.billing.last_name ;;
    group_label: "About Domain Billing"
    group_item_label: "Last Name"
  }

  dimension: about__domain__billing__middle_name {
    type: string
    sql: ${TABLE}.about.domain.billing.middle_name ;;
    group_label: "About Domain Billing"
    group_item_label: "Middle Name"
  }

  dimension: about__domain__billing__office_address__city {
    type: string
    sql: ${TABLE}.about.domain.billing.office_address.city ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "City"
  }

  dimension: about__domain__billing__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.billing.office_address.country_or_region ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__billing__office_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.billing.office_address.desk_name ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__billing__office_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.billing.office_address.floor_name ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__billing__office_address__name {
    type: string
    sql: ${TABLE}.about.domain.billing.office_address.name ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "Name"
  }

  dimension: about__domain__billing__office_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.billing.office_address.region_latitude ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__billing__office_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.billing.office_address.region_longitude ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__billing__office_address__state {
    type: string
    sql: ${TABLE}.about.domain.billing.office_address.state ;;
    group_label: "About Domain Billing Office Address"
    group_item_label: "State"
  }

  dimension: about__domain__billing__personal_address__city {
    type: string
    sql: ${TABLE}.about.domain.billing.personal_address.city ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "City"
  }

  dimension: about__domain__billing__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.billing.personal_address.country_or_region ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__billing__personal_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.billing.personal_address.desk_name ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__billing__personal_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.billing.personal_address.floor_name ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__billing__personal_address__name {
    type: string
    sql: ${TABLE}.about.domain.billing.personal_address.name ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "Name"
  }

  dimension: about__domain__billing__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.billing.personal_address.region_latitude ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__billing__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.billing.personal_address.region_longitude ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__billing__personal_address__state {
    type: string
    sql: ${TABLE}.about.domain.billing.personal_address.state ;;
    group_label: "About Domain Billing Personal Address"
    group_item_label: "State"
  }

  dimension: about__domain__billing__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.phone_numbers ;;
    group_label: "About Domain Billing"
    group_item_label: "Phone Numbers"
  }

  dimension: about__domain__billing__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.billing.product_object_id ;;
    group_label: "About Domain Billing"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__billing__role_description {
    type: string
    sql: ${TABLE}.about.domain.billing.role_description ;;
    group_label: "About Domain Billing"
    group_item_label: "Role Description"
  }

  dimension: about__domain__billing__role_name {
    type: string
    sql: ${TABLE}.about.domain.billing.role_name ;;
    group_label: "About Domain Billing"
    group_item_label: "Role Name"
  }

  dimension: about__domain__billing__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.billing.termination_date.nanos ;;
    group_label: "About Domain Billing Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__billing__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.billing.termination_date.seconds ;;
    group_label: "About Domain Billing Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__billing__time_off {
    hidden: yes
    sql: ${TABLE}.about.domain.billing.time_off ;;
    group_label: "About Domain Billing"
    group_item_label: "Time Off"
  }

  dimension: about__domain__billing__title {
    type: string
    sql: ${TABLE}.about.domain.billing.title ;;
    group_label: "About Domain Billing"
    group_item_label: "Title"
  }

  dimension: about__domain__billing__user_authentication_status {
    type: number
    sql: ${TABLE}.about.domain.billing.user_authentication_status ;;
    group_label: "About Domain Billing"
    group_item_label: "User Authentication Status"
  }

  dimension: about__domain__billing__user_display_name {
    type: string
    sql: ${TABLE}.about.domain.billing.user_display_name ;;
    group_label: "About Domain Billing"
    group_item_label: "User Display Name"
  }

  dimension: about__domain__billing__user_role {
    type: number
    sql: ${TABLE}.about.domain.billing.user_role ;;
    group_label: "About Domain Billing"
    group_item_label: "User Role"
  }

  dimension: about__domain__billing__userid {
    type: string
    sql: ${TABLE}.about.domain.billing.userid ;;
    group_label: "About Domain Billing"
    group_item_label: "Userid"
  }

  dimension: about__domain__billing__windows_sid {
    type: string
    sql: ${TABLE}.about.domain.billing.windows_sid ;;
    group_label: "About Domain Billing"
    group_item_label: "Windows Sid"
  }

  dimension: about__domain__contact_email {
    type: string
    sql: ${TABLE}.about.domain.contact_email ;;
    group_label: "About Domain"
    group_item_label: "Contact Email"
  }

  dimension: about__domain__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.creation_time.nanos ;;
    group_label: "About Domain Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.creation_time.seconds ;;
    group_label: "About Domain Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__expiration_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.expiration_time.nanos ;;
    group_label: "About Domain Expiration Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__expiration_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.expiration_time.seconds ;;
    group_label: "About Domain Expiration Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.first_seen_time.nanos ;;
    group_label: "About Domain First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.first_seen_time.seconds ;;
    group_label: "About Domain First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__iana_registrar_id {
    type: number
    sql: ${TABLE}.about.domain.iana_registrar_id ;;
    group_label: "About Domain"
    group_item_label: "Iana Registrar ID"
  }

  dimension: about__domain__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.last_seen_time.nanos ;;
    group_label: "About Domain Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.last_seen_time.seconds ;;
    group_label: "About Domain Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__name {
    type: string
    sql: ${TABLE}.about.domain.name ;;
    group_label: "About Domain"
    group_item_label: "Name"
  }

  dimension: about__domain__name_server {
    hidden: yes
    sql: ${TABLE}.about.domain.name_server ;;
    group_label: "About Domain"
    group_item_label: "Name Server"
  }

  dimension: about__domain__prevalence__day_count {
    type: number
    sql: ${TABLE}.about.domain.prevalence.day_count ;;
    group_label: "About Domain Prevalence"
    group_item_label: "Day Count"
  }

  dimension: about__domain__prevalence__day_max {
    type: number
    sql: ${TABLE}.about.domain.prevalence.day_max ;;
    group_label: "About Domain Prevalence"
    group_item_label: "Day Max"
  }

  dimension: about__domain__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.about.domain.prevalence.day_max_sub_domains ;;
    group_label: "About Domain Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: about__domain__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.about.domain.prevalence.rolling_max ;;
    group_label: "About Domain Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: about__domain__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.about.domain.prevalence.rolling_max_sub_domains ;;
    group_label: "About Domain Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: about__domain__private_registration {
    type: yesno
    sql: ${TABLE}.about.domain.private_registration ;;
    group_label: "About Domain"
    group_item_label: "Private Registration"
  }

  dimension: about__domain__registrant__account_type {
    type: number
    sql: ${TABLE}.about.domain.registrant.account_type ;;
    group_label: "About Domain Registrant"
    group_item_label: "Account Type"
  }

  dimension: about__domain__registrant__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.availability_zone ;;
    group_label: "About Domain Registrant Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__domain__registrant__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.environment ;;
    group_label: "About Domain Registrant Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__domain__registrant__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.id ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__domain__registrant__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.name ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__domain__registrant__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.parent ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__domain__registrant__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.product_object_id ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__registrant__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.resource_subtype ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__registrant__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.resource_type ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__registrant__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.project.type ;;
    group_label: "About Domain Registrant Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.id ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.name ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.parent ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.resource_type ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__registrant__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.domain.registrant.attribute.cloud.vpc.type ;;
    group_label: "About Domain Registrant Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__domain__registrant__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.creation_time.nanos ;;
    group_label: "About Domain Registrant Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__registrant__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.creation_time.seconds ;;
    group_label: "About Domain Registrant Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__registrant__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.attribute.labels ;;
    group_label: "About Domain Registrant Attribute"
    group_item_label: "Labels"
  }

  dimension: about__domain__registrant__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.last_update_time.nanos ;;
    group_label: "About Domain Registrant Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__registrant__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.registrant.attribute.last_update_time.seconds ;;
    group_label: "About Domain Registrant Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__registrant__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.attribute.permissions ;;
    group_label: "About Domain Registrant Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__domain__registrant__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.attribute.roles ;;
    group_label: "About Domain Registrant Attribute"
    group_item_label: "Roles"
  }

  dimension: about__domain__registrant__company_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.company_name ;;
    group_label: "About Domain Registrant"
    group_item_label: "Company Name"
  }

  dimension: about__domain__registrant__department {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.department ;;
    group_label: "About Domain Registrant"
    group_item_label: "Department"
  }

  dimension: about__domain__registrant__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.email_addresses ;;
    group_label: "About Domain Registrant"
    group_item_label: "Email Addresses"
  }

  dimension: about__domain__registrant__employee_id {
    type: string
    sql: ${TABLE}.about.domain.registrant.employee_id ;;
    group_label: "About Domain Registrant"
    group_item_label: "Employee ID"
  }

  dimension: about__domain__registrant__first_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.first_name ;;
    group_label: "About Domain Registrant"
    group_item_label: "First Name"
  }

  dimension: about__domain__registrant__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.registrant.first_seen_time.nanos ;;
    group_label: "About Domain Registrant First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__registrant__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.registrant.first_seen_time.seconds ;;
    group_label: "About Domain Registrant First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__registrant__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.group_identifiers ;;
    group_label: "About Domain Registrant"
    group_item_label: "Group Identifiers"
  }

  dimension: about__domain__registrant__groupid {
    type: string
    sql: ${TABLE}.about.domain.registrant.groupid ;;
    group_label: "About Domain Registrant"
    group_item_label: "Groupid"
  }

  dimension: about__domain__registrant__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.registrant.hire_date.nanos ;;
    group_label: "About Domain Registrant Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__registrant__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.registrant.hire_date.seconds ;;
    group_label: "About Domain Registrant Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__registrant__last_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.last_name ;;
    group_label: "About Domain Registrant"
    group_item_label: "Last Name"
  }

  dimension: about__domain__registrant__middle_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.middle_name ;;
    group_label: "About Domain Registrant"
    group_item_label: "Middle Name"
  }

  dimension: about__domain__registrant__office_address__city {
    type: string
    sql: ${TABLE}.about.domain.registrant.office_address.city ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "City"
  }

  dimension: about__domain__registrant__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.registrant.office_address.country_or_region ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__registrant__office_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.office_address.desk_name ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__registrant__office_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.office_address.floor_name ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__registrant__office_address__name {
    type: string
    sql: ${TABLE}.about.domain.registrant.office_address.name ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "Name"
  }

  dimension: about__domain__registrant__office_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.registrant.office_address.region_latitude ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__registrant__office_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.registrant.office_address.region_longitude ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__registrant__office_address__state {
    type: string
    sql: ${TABLE}.about.domain.registrant.office_address.state ;;
    group_label: "About Domain Registrant Office Address"
    group_item_label: "State"
  }

  dimension: about__domain__registrant__personal_address__city {
    type: string
    sql: ${TABLE}.about.domain.registrant.personal_address.city ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "City"
  }

  dimension: about__domain__registrant__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.registrant.personal_address.country_or_region ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__registrant__personal_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.personal_address.desk_name ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__registrant__personal_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.personal_address.floor_name ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__registrant__personal_address__name {
    type: string
    sql: ${TABLE}.about.domain.registrant.personal_address.name ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "Name"
  }

  dimension: about__domain__registrant__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.registrant.personal_address.region_latitude ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__registrant__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.registrant.personal_address.region_longitude ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__registrant__personal_address__state {
    type: string
    sql: ${TABLE}.about.domain.registrant.personal_address.state ;;
    group_label: "About Domain Registrant Personal Address"
    group_item_label: "State"
  }

  dimension: about__domain__registrant__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.phone_numbers ;;
    group_label: "About Domain Registrant"
    group_item_label: "Phone Numbers"
  }

  dimension: about__domain__registrant__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.registrant.product_object_id ;;
    group_label: "About Domain Registrant"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__registrant__role_description {
    type: string
    sql: ${TABLE}.about.domain.registrant.role_description ;;
    group_label: "About Domain Registrant"
    group_item_label: "Role Description"
  }

  dimension: about__domain__registrant__role_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.role_name ;;
    group_label: "About Domain Registrant"
    group_item_label: "Role Name"
  }

  dimension: about__domain__registrant__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.registrant.termination_date.nanos ;;
    group_label: "About Domain Registrant Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__registrant__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.registrant.termination_date.seconds ;;
    group_label: "About Domain Registrant Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__registrant__time_off {
    hidden: yes
    sql: ${TABLE}.about.domain.registrant.time_off ;;
    group_label: "About Domain Registrant"
    group_item_label: "Time Off"
  }

  dimension: about__domain__registrant__title {
    type: string
    sql: ${TABLE}.about.domain.registrant.title ;;
    group_label: "About Domain Registrant"
    group_item_label: "Title"
  }

  dimension: about__domain__registrant__user_authentication_status {
    type: number
    sql: ${TABLE}.about.domain.registrant.user_authentication_status ;;
    group_label: "About Domain Registrant"
    group_item_label: "User Authentication Status"
  }

  dimension: about__domain__registrant__user_display_name {
    type: string
    sql: ${TABLE}.about.domain.registrant.user_display_name ;;
    group_label: "About Domain Registrant"
    group_item_label: "User Display Name"
  }

  dimension: about__domain__registrant__user_role {
    type: number
    sql: ${TABLE}.about.domain.registrant.user_role ;;
    group_label: "About Domain Registrant"
    group_item_label: "User Role"
  }

  dimension: about__domain__registrant__userid {
    type: string
    sql: ${TABLE}.about.domain.registrant.userid ;;
    group_label: "About Domain Registrant"
    group_item_label: "Userid"
  }

  dimension: about__domain__registrant__windows_sid {
    type: string
    sql: ${TABLE}.about.domain.registrant.windows_sid ;;
    group_label: "About Domain Registrant"
    group_item_label: "Windows Sid"
  }

  dimension: about__domain__registrar {
    type: string
    sql: ${TABLE}.about.domain.registrar ;;
    group_label: "About Domain"
    group_item_label: "Registrar"
  }

  dimension: about__domain__registry_data_raw_text {
    type: string
    sql: ${TABLE}.about.domain.registry_data_raw_text ;;
    group_label: "About Domain"
    group_item_label: "Registry Data Raw Text"
  }

  dimension: about__domain__status {
    type: string
    sql: ${TABLE}.about.domain.status ;;
    group_label: "About Domain"
    group_item_label: "Status"
  }

  dimension: about__domain__tech__account_type {
    type: number
    sql: ${TABLE}.about.domain.tech.account_type ;;
    group_label: "About Domain Tech"
    group_item_label: "Account Type"
  }

  dimension: about__domain__tech__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.availability_zone ;;
    group_label: "About Domain Tech Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__domain__tech__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.cloud.environment ;;
    group_label: "About Domain Tech Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__domain__tech__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.id ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__domain__tech__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.name ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__domain__tech__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.parent ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__domain__tech__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.product_object_id ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__tech__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.resource_subtype ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__tech__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.resource_type ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__tech__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.project.type ;;
    group_label: "About Domain Tech Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.id ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.name ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.parent ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.resource_type ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__tech__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.domain.tech.attribute.cloud.vpc.type ;;
    group_label: "About Domain Tech Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__domain__tech__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.creation_time.nanos ;;
    group_label: "About Domain Tech Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__tech__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.creation_time.seconds ;;
    group_label: "About Domain Tech Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__tech__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.attribute.labels ;;
    group_label: "About Domain Tech Attribute"
    group_item_label: "Labels"
  }

  dimension: about__domain__tech__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.last_update_time.nanos ;;
    group_label: "About Domain Tech Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__tech__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.tech.attribute.last_update_time.seconds ;;
    group_label: "About Domain Tech Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__tech__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.attribute.permissions ;;
    group_label: "About Domain Tech Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__domain__tech__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.attribute.roles ;;
    group_label: "About Domain Tech Attribute"
    group_item_label: "Roles"
  }

  dimension: about__domain__tech__company_name {
    type: string
    sql: ${TABLE}.about.domain.tech.company_name ;;
    group_label: "About Domain Tech"
    group_item_label: "Company Name"
  }

  dimension: about__domain__tech__department {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.department ;;
    group_label: "About Domain Tech"
    group_item_label: "Department"
  }

  dimension: about__domain__tech__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.email_addresses ;;
    group_label: "About Domain Tech"
    group_item_label: "Email Addresses"
  }

  dimension: about__domain__tech__employee_id {
    type: string
    sql: ${TABLE}.about.domain.tech.employee_id ;;
    group_label: "About Domain Tech"
    group_item_label: "Employee ID"
  }

  dimension: about__domain__tech__first_name {
    type: string
    sql: ${TABLE}.about.domain.tech.first_name ;;
    group_label: "About Domain Tech"
    group_item_label: "First Name"
  }

  dimension: about__domain__tech__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.tech.first_seen_time.nanos ;;
    group_label: "About Domain Tech First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__tech__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.tech.first_seen_time.seconds ;;
    group_label: "About Domain Tech First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__tech__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.group_identifiers ;;
    group_label: "About Domain Tech"
    group_item_label: "Group Identifiers"
  }

  dimension: about__domain__tech__groupid {
    type: string
    sql: ${TABLE}.about.domain.tech.groupid ;;
    group_label: "About Domain Tech"
    group_item_label: "Groupid"
  }

  dimension: about__domain__tech__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.tech.hire_date.nanos ;;
    group_label: "About Domain Tech Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__tech__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.tech.hire_date.seconds ;;
    group_label: "About Domain Tech Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__tech__last_name {
    type: string
    sql: ${TABLE}.about.domain.tech.last_name ;;
    group_label: "About Domain Tech"
    group_item_label: "Last Name"
  }

  dimension: about__domain__tech__middle_name {
    type: string
    sql: ${TABLE}.about.domain.tech.middle_name ;;
    group_label: "About Domain Tech"
    group_item_label: "Middle Name"
  }

  dimension: about__domain__tech__office_address__city {
    type: string
    sql: ${TABLE}.about.domain.tech.office_address.city ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "City"
  }

  dimension: about__domain__tech__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.tech.office_address.country_or_region ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__tech__office_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.tech.office_address.desk_name ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__tech__office_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.tech.office_address.floor_name ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__tech__office_address__name {
    type: string
    sql: ${TABLE}.about.domain.tech.office_address.name ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "Name"
  }

  dimension: about__domain__tech__office_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.tech.office_address.region_latitude ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__tech__office_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.tech.office_address.region_longitude ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__tech__office_address__state {
    type: string
    sql: ${TABLE}.about.domain.tech.office_address.state ;;
    group_label: "About Domain Tech Office Address"
    group_item_label: "State"
  }

  dimension: about__domain__tech__personal_address__city {
    type: string
    sql: ${TABLE}.about.domain.tech.personal_address.city ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "City"
  }

  dimension: about__domain__tech__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.tech.personal_address.country_or_region ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__tech__personal_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.tech.personal_address.desk_name ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__tech__personal_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.tech.personal_address.floor_name ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__tech__personal_address__name {
    type: string
    sql: ${TABLE}.about.domain.tech.personal_address.name ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "Name"
  }

  dimension: about__domain__tech__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.tech.personal_address.region_latitude ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__tech__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.tech.personal_address.region_longitude ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__tech__personal_address__state {
    type: string
    sql: ${TABLE}.about.domain.tech.personal_address.state ;;
    group_label: "About Domain Tech Personal Address"
    group_item_label: "State"
  }

  dimension: about__domain__tech__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.phone_numbers ;;
    group_label: "About Domain Tech"
    group_item_label: "Phone Numbers"
  }

  dimension: about__domain__tech__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.tech.product_object_id ;;
    group_label: "About Domain Tech"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__tech__role_description {
    type: string
    sql: ${TABLE}.about.domain.tech.role_description ;;
    group_label: "About Domain Tech"
    group_item_label: "Role Description"
  }

  dimension: about__domain__tech__role_name {
    type: string
    sql: ${TABLE}.about.domain.tech.role_name ;;
    group_label: "About Domain Tech"
    group_item_label: "Role Name"
  }

  dimension: about__domain__tech__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.tech.termination_date.nanos ;;
    group_label: "About Domain Tech Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__tech__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.tech.termination_date.seconds ;;
    group_label: "About Domain Tech Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__tech__time_off {
    hidden: yes
    sql: ${TABLE}.about.domain.tech.time_off ;;
    group_label: "About Domain Tech"
    group_item_label: "Time Off"
  }

  dimension: about__domain__tech__title {
    type: string
    sql: ${TABLE}.about.domain.tech.title ;;
    group_label: "About Domain Tech"
    group_item_label: "Title"
  }

  dimension: about__domain__tech__user_authentication_status {
    type: number
    sql: ${TABLE}.about.domain.tech.user_authentication_status ;;
    group_label: "About Domain Tech"
    group_item_label: "User Authentication Status"
  }

  dimension: about__domain__tech__user_display_name {
    type: string
    sql: ${TABLE}.about.domain.tech.user_display_name ;;
    group_label: "About Domain Tech"
    group_item_label: "User Display Name"
  }

  dimension: about__domain__tech__user_role {
    type: number
    sql: ${TABLE}.about.domain.tech.user_role ;;
    group_label: "About Domain Tech"
    group_item_label: "User Role"
  }

  dimension: about__domain__tech__userid {
    type: string
    sql: ${TABLE}.about.domain.tech.userid ;;
    group_label: "About Domain Tech"
    group_item_label: "Userid"
  }

  dimension: about__domain__tech__windows_sid {
    type: string
    sql: ${TABLE}.about.domain.tech.windows_sid ;;
    group_label: "About Domain Tech"
    group_item_label: "Windows Sid"
  }

  dimension: about__domain__update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.update_time.nanos ;;
    group_label: "About Domain Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.update_time.seconds ;;
    group_label: "About Domain Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__whois_record_raw_text {
    type: string
    sql: ${TABLE}.about.domain.whois_record_raw_text ;;
    group_label: "About Domain"
    group_item_label: "Whois Record Raw Text"
  }

  dimension: about__domain__whois_server {
    type: string
    sql: ${TABLE}.about.domain.whois_server ;;
    group_label: "About Domain"
    group_item_label: "Whois Server"
  }

  dimension: about__domain__zone__account_type {
    type: number
    sql: ${TABLE}.about.domain.zone.account_type ;;
    group_label: "About Domain Zone"
    group_item_label: "Account Type"
  }

  dimension: about__domain__zone__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.availability_zone ;;
    group_label: "About Domain Zone Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__domain__zone__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.cloud.environment ;;
    group_label: "About Domain Zone Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__domain__zone__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.id ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__domain__zone__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.name ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__domain__zone__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.parent ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__domain__zone__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.product_object_id ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__zone__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.resource_subtype ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__zone__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.resource_type ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__zone__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.project.type ;;
    group_label: "About Domain Zone Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.id ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.name ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.parent ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.resource_type ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__domain__zone__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.domain.zone.attribute.cloud.vpc.type ;;
    group_label: "About Domain Zone Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__domain__zone__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.creation_time.nanos ;;
    group_label: "About Domain Zone Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__zone__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.creation_time.seconds ;;
    group_label: "About Domain Zone Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__zone__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.attribute.labels ;;
    group_label: "About Domain Zone Attribute"
    group_item_label: "Labels"
  }

  dimension: about__domain__zone__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.last_update_time.nanos ;;
    group_label: "About Domain Zone Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__zone__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.zone.attribute.last_update_time.seconds ;;
    group_label: "About Domain Zone Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__zone__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.attribute.permissions ;;
    group_label: "About Domain Zone Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__domain__zone__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.attribute.roles ;;
    group_label: "About Domain Zone Attribute"
    group_item_label: "Roles"
  }

  dimension: about__domain__zone__company_name {
    type: string
    sql: ${TABLE}.about.domain.zone.company_name ;;
    group_label: "About Domain Zone"
    group_item_label: "Company Name"
  }

  dimension: about__domain__zone__department {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.department ;;
    group_label: "About Domain Zone"
    group_item_label: "Department"
  }

  dimension: about__domain__zone__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.email_addresses ;;
    group_label: "About Domain Zone"
    group_item_label: "Email Addresses"
  }

  dimension: about__domain__zone__employee_id {
    type: string
    sql: ${TABLE}.about.domain.zone.employee_id ;;
    group_label: "About Domain Zone"
    group_item_label: "Employee ID"
  }

  dimension: about__domain__zone__first_name {
    type: string
    sql: ${TABLE}.about.domain.zone.first_name ;;
    group_label: "About Domain Zone"
    group_item_label: "First Name"
  }

  dimension: about__domain__zone__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.domain.zone.first_seen_time.nanos ;;
    group_label: "About Domain Zone First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__domain__zone__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.domain.zone.first_seen_time.seconds ;;
    group_label: "About Domain Zone First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__domain__zone__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.group_identifiers ;;
    group_label: "About Domain Zone"
    group_item_label: "Group Identifiers"
  }

  dimension: about__domain__zone__groupid {
    type: string
    sql: ${TABLE}.about.domain.zone.groupid ;;
    group_label: "About Domain Zone"
    group_item_label: "Groupid"
  }

  dimension: about__domain__zone__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.zone.hire_date.nanos ;;
    group_label: "About Domain Zone Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__zone__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.zone.hire_date.seconds ;;
    group_label: "About Domain Zone Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__zone__last_name {
    type: string
    sql: ${TABLE}.about.domain.zone.last_name ;;
    group_label: "About Domain Zone"
    group_item_label: "Last Name"
  }

  dimension: about__domain__zone__middle_name {
    type: string
    sql: ${TABLE}.about.domain.zone.middle_name ;;
    group_label: "About Domain Zone"
    group_item_label: "Middle Name"
  }

  dimension: about__domain__zone__office_address__city {
    type: string
    sql: ${TABLE}.about.domain.zone.office_address.city ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "City"
  }

  dimension: about__domain__zone__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.zone.office_address.country_or_region ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__zone__office_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.zone.office_address.desk_name ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__zone__office_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.zone.office_address.floor_name ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__zone__office_address__name {
    type: string
    sql: ${TABLE}.about.domain.zone.office_address.name ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "Name"
  }

  dimension: about__domain__zone__office_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.zone.office_address.region_latitude ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__zone__office_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.zone.office_address.region_longitude ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__zone__office_address__state {
    type: string
    sql: ${TABLE}.about.domain.zone.office_address.state ;;
    group_label: "About Domain Zone Office Address"
    group_item_label: "State"
  }

  dimension: about__domain__zone__personal_address__city {
    type: string
    sql: ${TABLE}.about.domain.zone.personal_address.city ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "City"
  }

  dimension: about__domain__zone__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.domain.zone.personal_address.country_or_region ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__domain__zone__personal_address__desk_name {
    type: string
    sql: ${TABLE}.about.domain.zone.personal_address.desk_name ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: about__domain__zone__personal_address__floor_name {
    type: string
    sql: ${TABLE}.about.domain.zone.personal_address.floor_name ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: about__domain__zone__personal_address__name {
    type: string
    sql: ${TABLE}.about.domain.zone.personal_address.name ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "Name"
  }

  dimension: about__domain__zone__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.about.domain.zone.personal_address.region_latitude ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__domain__zone__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.about.domain.zone.personal_address.region_longitude ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__domain__zone__personal_address__state {
    type: string
    sql: ${TABLE}.about.domain.zone.personal_address.state ;;
    group_label: "About Domain Zone Personal Address"
    group_item_label: "State"
  }

  dimension: about__domain__zone__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.phone_numbers ;;
    group_label: "About Domain Zone"
    group_item_label: "Phone Numbers"
  }

  dimension: about__domain__zone__product_object_id {
    type: string
    sql: ${TABLE}.about.domain.zone.product_object_id ;;
    group_label: "About Domain Zone"
    group_item_label: "Product Object ID"
  }

  dimension: about__domain__zone__role_description {
    type: string
    sql: ${TABLE}.about.domain.zone.role_description ;;
    group_label: "About Domain Zone"
    group_item_label: "Role Description"
  }

  dimension: about__domain__zone__role_name {
    type: string
    sql: ${TABLE}.about.domain.zone.role_name ;;
    group_label: "About Domain Zone"
    group_item_label: "Role Name"
  }

  dimension: about__domain__zone__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.domain.zone.termination_date.nanos ;;
    group_label: "About Domain Zone Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__domain__zone__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.domain.zone.termination_date.seconds ;;
    group_label: "About Domain Zone Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__domain__zone__time_off {
    hidden: yes
    sql: ${TABLE}.about.domain.zone.time_off ;;
    group_label: "About Domain Zone"
    group_item_label: "Time Off"
  }

  dimension: about__domain__zone__title {
    type: string
    sql: ${TABLE}.about.domain.zone.title ;;
    group_label: "About Domain Zone"
    group_item_label: "Title"
  }

  dimension: about__domain__zone__user_authentication_status {
    type: number
    sql: ${TABLE}.about.domain.zone.user_authentication_status ;;
    group_label: "About Domain Zone"
    group_item_label: "User Authentication Status"
  }

  dimension: about__domain__zone__user_display_name {
    type: string
    sql: ${TABLE}.about.domain.zone.user_display_name ;;
    group_label: "About Domain Zone"
    group_item_label: "User Display Name"
  }

  dimension: about__domain__zone__user_role {
    type: number
    sql: ${TABLE}.about.domain.zone.user_role ;;
    group_label: "About Domain Zone"
    group_item_label: "User Role"
  }

  dimension: about__domain__zone__userid {
    type: string
    sql: ${TABLE}.about.domain.zone.userid ;;
    group_label: "About Domain Zone"
    group_item_label: "Userid"
  }

  dimension: about__domain__zone__windows_sid {
    type: string
    sql: ${TABLE}.about.domain.zone.windows_sid ;;
    group_label: "About Domain Zone"
    group_item_label: "Windows Sid"
  }

  dimension: about__email {
    type: string
    sql: ${TABLE}.about.email ;;
    group_label: "About"
    group_item_label: "Email"
  }

  dimension: about__file__ahash {
    type: string
    sql: ${TABLE}.about.file.ahash ;;
    group_label: "About File"
    group_item_label: "Ahash"
  }

  dimension: about__file__authentihash {
    type: string
    sql: ${TABLE}.about.file.authentihash ;;
    group_label: "About File"
    group_item_label: "Authentihash"
  }

  dimension: about__file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.about.file.capabilities_tags ;;
    group_label: "About File"
    group_item_label: "Capabilities Tags"
  }

  dimension: about__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.about.file.file_metadata.pe.import_hash ;;
    group_label: "About File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: about__file__file_type {
    type: number
    sql: ${TABLE}.about.file.file_type ;;
    group_label: "About File"
    group_item_label: "File Type"
  }

  dimension: about__file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.file.first_seen_time.nanos ;;
    group_label: "About File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.file.first_seen_time.seconds ;;
    group_label: "About File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__file__full_path {
    type: string
    sql: ${TABLE}.about.file.full_path ;;
    group_label: "About File"
    group_item_label: "Full Path"
  }

  dimension: about__file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.about.file.last_modification_time.nanos ;;
    group_label: "About File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: about__file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.about.file.last_modification_time.seconds ;;
    group_label: "About File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: about__file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.file.last_seen_time.nanos ;;
    group_label: "About File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.file.last_seen_time.seconds ;;
    group_label: "About File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__file__md5 {
    type: string
    sql: ${TABLE}.about.file.md5 ;;
    group_label: "About File"
    group_item_label: "Md5"
  }

  dimension: about__file__mime_type {
    type: string
    sql: ${TABLE}.about.file.mime_type ;;
    group_label: "About File"
    group_item_label: "Mime Type"
  }

  dimension: about__file__names {
    hidden: yes
    sql: ${TABLE}.about.file.names ;;
    group_label: "About File"
    group_item_label: "Names"
  }

  dimension: about__file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.about.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "About File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: about__file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.about.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "About File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: about__file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.about.file.pe_file.compilation_time.nanos ;;
    group_label: "About File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: about__file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.about.file.pe_file.compilation_time.seconds ;;
    group_label: "About File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: about__file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.about.file.pe_file.entry_point ;;
    group_label: "About File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: about__file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.about.file.pe_file.entry_point_exiftool ;;
    group_label: "About File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: about__file__pe_file__imphash {
    type: string
    sql: ${TABLE}.about.file.pe_file.imphash ;;
    group_label: "About File Pe File"
    group_item_label: "Imphash"
  }

  dimension: about__file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.imports ;;
    group_label: "About File Pe File"
    group_item_label: "Imports"
  }

  dimension: about__file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.resource ;;
    group_label: "About File Pe File"
    group_item_label: "Resource"
  }

  dimension: about__file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.resources_language_count ;;
    group_label: "About File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: about__file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.resources_language_count_str ;;
    group_label: "About File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: about__file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.resources_type_count ;;
    group_label: "About File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: about__file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.resources_type_count_str ;;
    group_label: "About File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: about__file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.section ;;
    group_label: "About File Pe File"
    group_item_label: "Section"
  }

  dimension: about__file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.signature_info.signer ;;
    group_label: "About File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: about__file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.about.file.pe_file.signature_info.signers ;;
    group_label: "About File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: about__file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.about.file.pe_file.signature_info.verification_message ;;
    group_label: "About File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: about__file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.about.file.pe_file.signature_info.verified ;;
    group_label: "About File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: about__file__prevalence__day_count {
    type: number
    sql: ${TABLE}.about.file.prevalence.day_count ;;
    group_label: "About File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: about__file__prevalence__day_max {
    type: number
    sql: ${TABLE}.about.file.prevalence.day_max ;;
    group_label: "About File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: about__file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.about.file.prevalence.day_max_sub_domains ;;
    group_label: "About File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: about__file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.about.file.prevalence.rolling_max ;;
    group_label: "About File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: about__file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.about.file.prevalence.rolling_max_sub_domains ;;
    group_label: "About File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: about__file__sha1 {
    type: string
    sql: ${TABLE}.about.file.sha1 ;;
    group_label: "About File"
    group_item_label: "Sha1"
  }

  dimension: about__file__sha256 {
    type: string
    sql: ${TABLE}.about.file.sha256 ;;
    group_label: "About File"
    group_item_label: "Sha256"
  }

  dimension: about__file__size {
    type: number
    sql: ${TABLE}.about.file.size ;;
    group_label: "About File"
    group_item_label: "Size"
  }

  dimension: about__file__ssdeep {
    type: string
    sql: ${TABLE}.about.file.ssdeep ;;
    group_label: "About File"
    group_item_label: "Ssdeep"
  }

  dimension: about__file__vhash {
    type: string
    sql: ${TABLE}.about.file.vhash ;;
    group_label: "About File"
    group_item_label: "Vhash"
  }

  dimension: about__group__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.availability_zone ;;
    group_label: "About Group Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__group__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.environment ;;
    group_label: "About Group Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__group__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.id ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__group__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.name ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__group__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.parent ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__group__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.product_object_id ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.resource_subtype ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__group__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.project.resource_type ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__group__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.project.type ;;
    group_label: "About Group Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__group__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.id ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__group__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.name ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__group__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.parent ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__group__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.product_object_id ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__group__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.resource_type ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__group__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.`group`.attribute.cloud.vpc.type ;;
    group_label: "About Group Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__group__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.attribute.creation_time.nanos ;;
    group_label: "About Group Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.attribute.creation_time.seconds ;;
    group_label: "About Group Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.labels ;;
    group_label: "About Group Attribute"
    group_item_label: "Labels"
  }

  dimension: about__group__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.attribute.last_update_time.nanos ;;
    group_label: "About Group Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.attribute.last_update_time.seconds ;;
    group_label: "About Group Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.permissions ;;
    group_label: "About Group Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__group__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.group.attribute.roles ;;
    group_label: "About Group Attribute"
    group_item_label: "Roles"
  }

  dimension: about__group__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.`group`.creation_time.nanos ;;
    group_label: "About Group Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__group__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.`group`.creation_time.seconds ;;
    group_label: "About Group Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__group__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.group.email_addresses ;;
    group_label: "About Group"
    group_item_label: "Email Addresses"
  }

  dimension: about__group__group_display_name {
    type: string
    sql: ${TABLE}.about.`group`.group_display_name ;;
    group_label: "About Group"
    group_item_label: "Group Display Name"
  }

  dimension: about__group__product_object_id {
    type: string
    sql: ${TABLE}.about.`group`.product_object_id ;;
    group_label: "About Group"
    group_item_label: "Product Object ID"
  }

  dimension: about__group__windows_sid {
    type: string
    sql: ${TABLE}.about.`group`.windows_sid ;;
    group_label: "About Group"
    group_item_label: "Windows Sid"
  }

  dimension: about__hostname {
    type: string
    sql: ${TABLE}.about.hostname ;;
    group_label: "About"
    group_item_label: "Hostname"
  }

  dimension: about__investigation__comments {
    hidden: yes
    sql: ${TABLE}.about.investigation.comments ;;
    group_label: "About Investigation"
    group_item_label: "Comments"
  }

  dimension: about__investigation__priority {
    type: number
    sql: ${TABLE}.about.investigation.priority ;;
    group_label: "About Investigation"
    group_item_label: "Priority"
  }

  dimension: about__investigation__reason {
    type: number
    sql: ${TABLE}.about.investigation.reason ;;
    group_label: "About Investigation"
    group_item_label: "Reason"
  }

  dimension: about__investigation__reputation {
    type: number
    sql: ${TABLE}.about.investigation.reputation ;;
    group_label: "About Investigation"
    group_item_label: "Reputation"
  }

  dimension: about__investigation__risk_score {
    type: number
    sql: ${TABLE}.about.investigation.risk_score ;;
    group_label: "About Investigation"
    group_item_label: "Risk Score"
  }

  dimension: about__investigation__root_cause {
    type: string
    sql: ${TABLE}.about.investigation.root_cause ;;
    group_label: "About Investigation"
    group_item_label: "Root Cause"
  }

  dimension: about__investigation__severity_score {
    type: number
    sql: ${TABLE}.about.investigation.severity_score ;;
    group_label: "About Investigation"
    group_item_label: "Severity Score"
  }

  dimension: about__investigation__status {
    type: number
    sql: ${TABLE}.about.investigation.status ;;
    group_label: "About Investigation"
    group_item_label: "Status"
  }

  dimension: about__investigation__verdict {
    type: number
    sql: ${TABLE}.about.investigation.verdict ;;
    group_label: "About Investigation"
    group_item_label: "Verdict"
  }

  dimension: about__ip {
    hidden: yes
    sql: ${TABLE}.about.ip ;;
    group_label: "About"
    group_item_label: "IP"
  }

  dimension: about__ip_geo_artifact {
    hidden: yes
    sql: ${TABLE}.about.ip_geo_artifact ;;
    group_label: "About"
    group_item_label: "IP Geo Artifact"
  }

  dimension: about__ip_location {
    hidden: yes
    sql: ${TABLE}.about.ip_location ;;
    group_label: "About"
    group_item_label: "IP Location"
  }

  dimension: about__labels {
    hidden: yes
    sql: ${TABLE}.about.labels ;;
    group_label: "About"
    group_item_label: "Labels"
  }

  dimension: about__location__city {
    type: string
    sql: ${TABLE}.about.location.city ;;
    group_label: "About Location"
    group_item_label: "City"
  }

  dimension: about__location__country_or_region {
    type: string
    sql: ${TABLE}.about.location.country_or_region ;;
    group_label: "About Location"
    group_item_label: "Country or Region"
  }

  dimension: about__location__desk_name {
    type: string
    sql: ${TABLE}.about.location.desk_name ;;
    group_label: "About Location"
    group_item_label: "Desk Name"
  }

  dimension: about__location__floor_name {
    type: string
    sql: ${TABLE}.about.location.floor_name ;;
    group_label: "About Location"
    group_item_label: "Floor Name"
  }

  dimension: about__location__name {
    type: string
    sql: ${TABLE}.about.location.name ;;
    group_label: "About Location"
    group_item_label: "Name"
  }

  dimension: about__location__region_latitude {
    type: number
    sql: ${TABLE}.about.location.region_latitude ;;
    group_label: "About Location"
    group_item_label: "Region Latitude"
  }

  dimension: about__location__region_longitude {
    type: number
    sql: ${TABLE}.about.location.region_longitude ;;
    group_label: "About Location"
    group_item_label: "Region Longitude"
  }

  dimension: about__location__state {
    type: string
    sql: ${TABLE}.about.location.state ;;
    group_label: "About Location"
    group_item_label: "State"
  }

  dimension: about__mac {
    hidden: yes
    sql: ${TABLE}.about.mac ;;
    group_label: "About"
    group_item_label: "Mac"
  }

  dimension: about__namespace {
    type: string
    sql: ${TABLE}.about.namespace ;;
    group_label: "About"
    group_item_label: "Namespace"
  }

  dimension: about__nat_ip {
    hidden: yes
    sql: ${TABLE}.about.nat_ip ;;
    group_label: "About"
    group_item_label: "Nat IP"
  }

  dimension: about__nat_port {
    type: number
    sql: ${TABLE}.about.nat_port ;;
    group_label: "About"
    group_item_label: "Nat Port"
  }

  dimension: about__object_reference__id {
    type: string
    sql: ${TABLE}.about.object_reference.id ;;
    group_label: "About Object Reference"
    group_item_label: "ID"
  }

  dimension: about__object_reference__namespace {
    type: number
    sql: ${TABLE}.about.object_reference.namespace ;;
    group_label: "About Object Reference"
    group_item_label: "Namespace"
  }

  dimension: about__platform {
    type: number
    sql: ${TABLE}.about.platform ;;
    group_label: "About"
    group_item_label: "Platform"
  }

  dimension: about__platform_patch_level {
    type: string
    sql: ${TABLE}.about.platform_patch_level ;;
    group_label: "About"
    group_item_label: "Platform Patch Level"
  }

  dimension: about__platform_version {
    type: string
    sql: ${TABLE}.about.platform_version ;;
    group_label: "About"
    group_item_label: "Platform Version"
  }

  dimension: about__port {
    type: number
    sql: ${TABLE}.about.port ;;
    group_label: "About"
    group_item_label: "Port"
  }

  dimension: about__process__access_mask {
    type: number
    sql: ${TABLE}.about.process.access_mask ;;
    group_label: "About Process"
    group_item_label: "Access Mask"
  }

  dimension: about__process__command_line {
    type: string
    sql: ${TABLE}.about.process.command_line ;;
    group_label: "About Process"
    group_item_label: "Command Line"
  }

  dimension: about__process__command_line_history {
    hidden: yes
    sql: ${TABLE}.about.process.command_line_history ;;
    group_label: "About Process"
    group_item_label: "Command Line History"
  }

  dimension: about__process__file__ahash {
    type: string
    sql: ${TABLE}.about.process.file.ahash ;;
    group_label: "About Process File"
    group_item_label: "Ahash"
  }

  dimension: about__process__file__authentihash {
    type: string
    sql: ${TABLE}.about.process.file.authentihash ;;
    group_label: "About Process File"
    group_item_label: "Authentihash"
  }

  dimension: about__process__file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.about.process.file.capabilities_tags ;;
    group_label: "About Process File"
    group_item_label: "Capabilities Tags"
  }

  dimension: about__process__file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.about.process.file.file_metadata.pe.import_hash ;;
    group_label: "About Process File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: about__process__file__file_type {
    type: number
    sql: ${TABLE}.about.process.file.file_type ;;
    group_label: "About Process File"
    group_item_label: "File Type"
  }

  dimension: about__process__file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.process.file.first_seen_time.nanos ;;
    group_label: "About Process File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__process__file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.process.file.first_seen_time.seconds ;;
    group_label: "About Process File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__process__file__full_path {
    type: string
    sql: ${TABLE}.about.process.file.full_path ;;
    group_label: "About Process File"
    group_item_label: "Full Path"
  }

  dimension: about__process__file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.about.process.file.last_modification_time.nanos ;;
    group_label: "About Process File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: about__process__file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.about.process.file.last_modification_time.seconds ;;
    group_label: "About Process File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: about__process__file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.process.file.last_seen_time.nanos ;;
    group_label: "About Process File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__process__file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.process.file.last_seen_time.seconds ;;
    group_label: "About Process File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__process__file__md5 {
    type: string
    sql: ${TABLE}.about.process.file.md5 ;;
    group_label: "About Process File"
    group_item_label: "Md5"
  }

  dimension: about__process__file__mime_type {
    type: string
    sql: ${TABLE}.about.process.file.mime_type ;;
    group_label: "About Process File"
    group_item_label: "Mime Type"
  }

  dimension: about__process__file__names {
    hidden: yes
    sql: ${TABLE}.about.process.file.names ;;
    group_label: "About Process File"
    group_item_label: "Names"
  }

  dimension: about__process__file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.about.process.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "About Process File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: about__process__file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.about.process.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "About Process File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: about__process__file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.about.process.file.pe_file.compilation_time.nanos ;;
    group_label: "About Process File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: about__process__file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.about.process.file.pe_file.compilation_time.seconds ;;
    group_label: "About Process File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: about__process__file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.about.process.file.pe_file.entry_point ;;
    group_label: "About Process File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: about__process__file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.about.process.file.pe_file.entry_point_exiftool ;;
    group_label: "About Process File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: about__process__file__pe_file__imphash {
    type: string
    sql: ${TABLE}.about.process.file.pe_file.imphash ;;
    group_label: "About Process File Pe File"
    group_item_label: "Imphash"
  }

  dimension: about__process__file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.imports ;;
    group_label: "About Process File Pe File"
    group_item_label: "Imports"
  }

  dimension: about__process__file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.resource ;;
    group_label: "About Process File Pe File"
    group_item_label: "Resource"
  }

  dimension: about__process__file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.resources_language_count ;;
    group_label: "About Process File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: about__process__file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.resources_language_count_str ;;
    group_label: "About Process File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: about__process__file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.resources_type_count ;;
    group_label: "About Process File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: about__process__file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.resources_type_count_str ;;
    group_label: "About Process File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: about__process__file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.section ;;
    group_label: "About Process File Pe File"
    group_item_label: "Section"
  }

  dimension: about__process__file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.signature_info.signer ;;
    group_label: "About Process File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: about__process__file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.about.process.file.pe_file.signature_info.signers ;;
    group_label: "About Process File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: about__process__file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.about.process.file.pe_file.signature_info.verification_message ;;
    group_label: "About Process File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: about__process__file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.about.process.file.pe_file.signature_info.verified ;;
    group_label: "About Process File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: about__process__file__prevalence__day_count {
    type: number
    sql: ${TABLE}.about.process.file.prevalence.day_count ;;
    group_label: "About Process File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: about__process__file__prevalence__day_max {
    type: number
    sql: ${TABLE}.about.process.file.prevalence.day_max ;;
    group_label: "About Process File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: about__process__file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.about.process.file.prevalence.day_max_sub_domains ;;
    group_label: "About Process File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: about__process__file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.about.process.file.prevalence.rolling_max ;;
    group_label: "About Process File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: about__process__file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.about.process.file.prevalence.rolling_max_sub_domains ;;
    group_label: "About Process File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: about__process__file__sha1 {
    type: string
    sql: ${TABLE}.about.process.file.sha1 ;;
    group_label: "About Process File"
    group_item_label: "Sha1"
  }

  dimension: about__process__file__sha256 {
    type: string
    sql: ${TABLE}.about.process.file.sha256 ;;
    group_label: "About Process File"
    group_item_label: "Sha256"
  }

  dimension: about__process__file__size {
    type: number
    sql: ${TABLE}.about.process.file.size ;;
    group_label: "About Process File"
    group_item_label: "Size"
  }

  dimension: about__process__file__ssdeep {
    type: string
    sql: ${TABLE}.about.process.file.ssdeep ;;
    group_label: "About Process File"
    group_item_label: "Ssdeep"
  }

  dimension: about__process__file__vhash {
    type: string
    sql: ${TABLE}.about.process.file.vhash ;;
    group_label: "About Process File"
    group_item_label: "Vhash"
  }

  dimension: about__process__parent_pid {
    type: string
    sql: ${TABLE}.about.process.parent_pid ;;
    group_label: "About Process"
    group_item_label: "Parent Pid"
  }

  dimension: about__process__pid {
    type: string
    sql: ${TABLE}.about.process.pid ;;
    group_label: "About Process"
    group_item_label: "Pid"
  }

  dimension: about__process__product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.about.process.product_specific_parent_process_id ;;
    group_label: "About Process"
    group_item_label: "Product Specific Parent Process ID"
  }

  dimension: about__process__product_specific_process_id {
    type: string
    sql: ${TABLE}.about.process.product_specific_process_id ;;
    group_label: "About Process"
    group_item_label: "Product Specific Process ID"
  }

  dimension: about__process_ancestors {
    hidden: yes
    sql: ${TABLE}.about.process_ancestors ;;
    group_label: "About"
    group_item_label: "Process Ancestors"
  }

  dimension: about__registry__registry_key {
    type: string
    sql: ${TABLE}.about.registry.registry_key ;;
    group_label: "About Registry"
    group_item_label: "Registry Key"
  }

  dimension: about__registry__registry_value_data {
    type: string
    sql: ${TABLE}.about.registry.registry_value_data ;;
    group_label: "About Registry"
    group_item_label: "Registry Value Data"
  }

  dimension: about__registry__registry_value_name {
    type: string
    sql: ${TABLE}.about.registry.registry_value_name ;;
    group_label: "About Registry"
    group_item_label: "Registry Value Name"
  }

  dimension: about__resource__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.resource.attribute.cloud.availability_zone ;;
    group_label: "About Resource Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__resource__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.resource.attribute.cloud.environment ;;
    group_label: "About Resource Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__resource__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.resource.attribute.creation_time.nanos ;;
    group_label: "About Resource Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__resource__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.resource.attribute.creation_time.seconds ;;
    group_label: "About Resource Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__resource__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.labels ;;
    group_label: "About Resource Attribute"
    group_item_label: "Labels"
  }

  dimension: about__resource__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.resource.attribute.last_update_time.nanos ;;
    group_label: "About Resource Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__resource__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.resource.attribute.last_update_time.seconds ;;
    group_label: "About Resource Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__resource__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.permissions ;;
    group_label: "About Resource Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__resource__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.resource.attribute.roles ;;
    group_label: "About Resource Attribute"
    group_item_label: "Roles"
  }

  dimension: about__resource__id {
    type: string
    sql: ${TABLE}.about.resource.id ;;
    group_label: "About Resource"
    group_item_label: "ID"
  }

  dimension: about__resource__name {
    type: string
    sql: ${TABLE}.about.resource.name ;;
    group_label: "About Resource"
    group_item_label: "Name"
  }

  dimension: about__resource__parent {
    type: string
    sql: ${TABLE}.about.resource.parent ;;
    group_label: "About Resource"
    group_item_label: "Parent"
  }

  dimension: about__resource__product_object_id {
    type: string
    sql: ${TABLE}.about.resource.product_object_id ;;
    group_label: "About Resource"
    group_item_label: "Product Object ID"
  }

  dimension: about__resource__resource_subtype {
    type: string
    sql: ${TABLE}.about.resource.resource_subtype ;;
    group_label: "About Resource"
    group_item_label: "Resource Subtype"
  }

  dimension: about__resource__resource_type {
    type: number
    sql: ${TABLE}.about.resource.resource_type ;;
    group_label: "About Resource"
    group_item_label: "Resource Type"
  }

  dimension: about__resource__type {
    type: string
    sql: ${TABLE}.about.resource.type ;;
    group_label: "About Resource"
    group_item_label: "Type"
  }

  dimension: about__resource_ancestors {
    hidden: yes
    sql: ${TABLE}.about.resource_ancestors ;;
    group_label: "About"
    group_item_label: "Resource Ancestors"
  }

  dimension: about__url {
    type: string
    sql: ${TABLE}.about.url ;;
    group_label: "About"
    group_item_label: "URL"
  }

  dimension: about__user__account_type {
    type: number
    sql: ${TABLE}.about.user.account_type ;;
    group_label: "About User"
    group_item_label: "Account Type"
  }

  dimension: about__user__attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.availability_zone ;;
    group_label: "About User Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: about__user__attribute__cloud__environment {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.environment ;;
    group_label: "About User Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: about__user__attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.id ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: about__user__attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.name ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: about__user__attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.parent ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: about__user__attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.product_object_id ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.resource_subtype ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: about__user__attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.project.resource_type ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: about__user__attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.project.type ;;
    group_label: "About User Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: about__user__attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.id ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: about__user__attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.name ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: about__user__attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.parent ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: about__user__attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.product_object_id ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.resource_subtype ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: about__user__attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.about.user.attribute.cloud.vpc.resource_type ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: about__user__attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.about.user.attribute.cloud.vpc.type ;;
    group_label: "About User Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: about__user__attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.about.user.attribute.creation_time.nanos ;;
    group_label: "About User Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.about.user.attribute.creation_time.seconds ;;
    group_label: "About User Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__attribute__labels {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.labels ;;
    group_label: "About User Attribute"
    group_item_label: "Labels"
  }

  dimension: about__user__attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.about.user.attribute.last_update_time.nanos ;;
    group_label: "About User Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.about.user.attribute.last_update_time.seconds ;;
    group_label: "About User Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__attribute__permissions {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.permissions ;;
    group_label: "About User Attribute"
    group_item_label: "Permissions"
  }

  dimension: about__user__attribute__roles {
    hidden: yes
    sql: ${TABLE}.about.user.attribute.roles ;;
    group_label: "About User Attribute"
    group_item_label: "Roles"
  }

  dimension: about__user__company_name {
    type: string
    sql: ${TABLE}.about.user.company_name ;;
    group_label: "About User"
    group_item_label: "Company Name"
  }

  dimension: about__user__department {
    hidden: yes
    sql: ${TABLE}.about.user.department ;;
    group_label: "About User"
    group_item_label: "Department"
  }

  dimension: about__user__email_addresses {
    hidden: yes
    sql: ${TABLE}.about.user.email_addresses ;;
    group_label: "About User"
    group_item_label: "Email Addresses"
  }

  dimension: about__user__employee_id {
    type: string
    sql: ${TABLE}.about.user.employee_id ;;
    group_label: "About User"
    group_item_label: "Employee ID"
  }

  dimension: about__user__first_name {
    type: string
    sql: ${TABLE}.about.user.first_name ;;
    group_label: "About User"
    group_item_label: "First Name"
  }

  dimension: about__user__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.about.user.first_seen_time.nanos ;;
    group_label: "About User First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: about__user__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.about.user.first_seen_time.seconds ;;
    group_label: "About User First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: about__user__group_identifiers {
    hidden: yes
    sql: ${TABLE}.about.user.group_identifiers ;;
    group_label: "About User"
    group_item_label: "Group Identifiers"
  }

  dimension: about__user__groupid {
    type: string
    sql: ${TABLE}.about.user.groupid ;;
    group_label: "About User"
    group_item_label: "Groupid"
  }

  dimension: about__user__hire_date__nanos {
    type: number
    sql: ${TABLE}.about.user.hire_date.nanos ;;
    group_label: "About User Hire Date"
    group_item_label: "Nanos"
  }

  dimension: about__user__hire_date__seconds {
    type: number
    sql: ${TABLE}.about.user.hire_date.seconds ;;
    group_label: "About User Hire Date"
    group_item_label: "Seconds"
  }

  dimension: about__user__last_name {
    type: string
    sql: ${TABLE}.about.user.last_name ;;
    group_label: "About User"
    group_item_label: "Last Name"
  }

  dimension: about__user__middle_name {
    type: string
    sql: ${TABLE}.about.user.middle_name ;;
    group_label: "About User"
    group_item_label: "Middle Name"
  }

  dimension: about__user__office_address__city {
    type: string
    sql: ${TABLE}.about.user.office_address.city ;;
    group_label: "About User Office Address"
    group_item_label: "City"
  }

  dimension: about__user__office_address__country_or_region {
    type: string
    sql: ${TABLE}.about.user.office_address.country_or_region ;;
    group_label: "About User Office Address"
    group_item_label: "Country or Region"
  }

  dimension: about__user__office_address__desk_name {
    type: string
    sql: ${TABLE}.about.user.office_address.desk_name ;;
    group_label: "About User Office Address"
    group_item_label: "Desk Name"
  }

  dimension: about__user__office_address__floor_name {
    type: string
    sql: ${TABLE}.about.user.office_address.floor_name ;;
    group_label: "About User Office Address"
    group_item_label: "Floor Name"
  }

  dimension: about__user__office_address__name {
    type: string
    sql: ${TABLE}.about.user.office_address.name ;;
    group_label: "About User Office Address"
    group_item_label: "Name"
  }

  dimension: about__user__office_address__region_latitude {
    type: number
    sql: ${TABLE}.about.user.office_address.region_latitude ;;
    group_label: "About User Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__user__office_address__region_longitude {
    type: number
    sql: ${TABLE}.about.user.office_address.region_longitude ;;
    group_label: "About User Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__user__office_address__state {
    type: string
    sql: ${TABLE}.about.user.office_address.state ;;
    group_label: "About User Office Address"
    group_item_label: "State"
  }

  dimension: about__user__personal_address__city {
    type: string
    sql: ${TABLE}.about.user.personal_address.city ;;
    group_label: "About User Personal Address"
    group_item_label: "City"
  }

  dimension: about__user__personal_address__country_or_region {
    type: string
    sql: ${TABLE}.about.user.personal_address.country_or_region ;;
    group_label: "About User Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: about__user__personal_address__desk_name {
    type: string
    sql: ${TABLE}.about.user.personal_address.desk_name ;;
    group_label: "About User Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: about__user__personal_address__floor_name {
    type: string
    sql: ${TABLE}.about.user.personal_address.floor_name ;;
    group_label: "About User Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: about__user__personal_address__name {
    type: string
    sql: ${TABLE}.about.user.personal_address.name ;;
    group_label: "About User Personal Address"
    group_item_label: "Name"
  }

  dimension: about__user__personal_address__region_latitude {
    type: number
    sql: ${TABLE}.about.user.personal_address.region_latitude ;;
    group_label: "About User Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: about__user__personal_address__region_longitude {
    type: number
    sql: ${TABLE}.about.user.personal_address.region_longitude ;;
    group_label: "About User Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: about__user__personal_address__state {
    type: string
    sql: ${TABLE}.about.user.personal_address.state ;;
    group_label: "About User Personal Address"
    group_item_label: "State"
  }

  dimension: about__user__phone_numbers {
    hidden: yes
    sql: ${TABLE}.about.user.phone_numbers ;;
    group_label: "About User"
    group_item_label: "Phone Numbers"
  }

  dimension: about__user__product_object_id {
    type: string
    sql: ${TABLE}.about.user.product_object_id ;;
    group_label: "About User"
    group_item_label: "Product Object ID"
  }

  dimension: about__user__role_description {
    type: string
    sql: ${TABLE}.about.user.role_description ;;
    group_label: "About User"
    group_item_label: "Role Description"
  }

  dimension: about__user__role_name {
    type: string
    sql: ${TABLE}.about.user.role_name ;;
    group_label: "About User"
    group_item_label: "Role Name"
  }

  dimension: about__user__termination_date__nanos {
    type: number
    sql: ${TABLE}.about.user.termination_date.nanos ;;
    group_label: "About User Termination Date"
    group_item_label: "Nanos"
  }

  dimension: about__user__termination_date__seconds {
    type: number
    sql: ${TABLE}.about.user.termination_date.seconds ;;
    group_label: "About User Termination Date"
    group_item_label: "Seconds"
  }

  dimension: about__user__time_off {
    hidden: yes
    sql: ${TABLE}.about.user.time_off ;;
    group_label: "About User"
    group_item_label: "Time Off"
  }

  dimension: about__user__title {
    type: string
    sql: ${TABLE}.about.user.title ;;
    group_label: "About User"
    group_item_label: "Title"
  }

  dimension: about__user__user_authentication_status {
    type: number
    sql: ${TABLE}.about.user.user_authentication_status ;;
    group_label: "About User"
    group_item_label: "User Authentication Status"
  }

  dimension: about__user__user_display_name {
    type: string
    sql: ${TABLE}.about.user.user_display_name ;;
    group_label: "About User"
    group_item_label: "User Display Name"
  }

  dimension: about__user__user_role {
    type: number
    sql: ${TABLE}.about.user.user_role ;;
    group_label: "About User"
    group_item_label: "User Role"
  }

  dimension: about__user__userid {
    type: string
    sql: ${TABLE}.about.user.userid ;;
    group_label: "About User"
    group_item_label: "Userid"
  }

  dimension: about__user__windows_sid {
    type: string
    sql: ${TABLE}.about.user.windows_sid ;;
    group_label: "About User"
    group_item_label: "Windows Sid"
  }

  dimension: about__user_management_chain {
    hidden: yes
    sql: ${TABLE}.about.user_management_chain ;;
    group_label: "About"
    group_item_label: "User Management Chain"
  }

  dimension: action_details {
    type: string
    sql: ${TABLE}.action_details ;;
  }

  dimension: alert_state {
    type: number
    sql: ${TABLE}.alert_state ;;
  }

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: category_details {
    hidden: yes
    sql: ${TABLE}.category_details ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.confidence ;;
  }

  dimension: confidence_details {
    type: string
    sql: ${TABLE}.confidence_details ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: detection_fields {
    hidden: yes
    sql: ${TABLE}.detection_fields ;;
  }

  dimension: outcomes {
    hidden: yes
    sql: ${TABLE}.outcomes ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: priority_details {
    type: string
    sql: ${TABLE}.priority_details ;;
  }

  dimension: rule_author {
    type: string
    sql: ${TABLE}.rule_author ;;
  }

  dimension: rule_id {
    type: string
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_labels {
    hidden: yes
    sql: ${TABLE}.rule_labels ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
  }

  dimension: rule_set {
    type: string
    sql: ${TABLE}.rule_set ;;
  }

  dimension: rule_set_display_name {
    type: string
    sql: ${TABLE}.rule_set_display_name ;;
  }

  dimension: rule_type {
    type: string
    sql: ${TABLE}.rule_type ;;
  }

  dimension: rule_version {
    type: string
    sql: ${TABLE}.rule_version ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: threat_feed_name {
    type: string
    sql: ${TABLE}.threat_feed_name ;;
  }

  dimension: threat_id {
    type: string
    sql: ${TABLE}.threat_id ;;
  }

  dimension: threat_id_namespace {
    type: number
    value_format_name: id
    sql: ${TABLE}.threat_id_namespace ;;
  }

  dimension: threat_name {
    type: string
    sql: ${TABLE}.threat_name ;;
  }

  dimension: threat_status {
    type: number
    sql: ${TABLE}.threat_status ;;
  }

  dimension: url_back_to_product {
    type: string
    sql: ${TABLE}.url_back_to_product ;;
  }
}

view: entity_graph__relations__entity__nat_ip {
  dimension: entity_graph__relations__entity__nat_ip {
    type: string
    sql: entity_graph__relations__entity__nat_ip ;;
  }
}

view: entity_graph__entity__ip_location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: desk_name {
    type: string
    sql: ${TABLE}.desk_name ;;
  }

  dimension: floor_name {
    type: string
    sql: ${TABLE}.floor_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_latitude {
    type: number
    sql: ${TABLE}.region_latitude ;;
  }

  dimension: region_longitude {
    type: number
    sql: ${TABLE}.region_longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: entity_graph__entity__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__ip {
  dimension: entity_graph__metadata__threat__about__ip {
    type: string
    sql: entity_graph__metadata__threat__about__ip ;;
  }
}

view: entity_graph__metadata__threat__category {
  dimension: entity_graph__metadata__threat__category {
    type: number
    sql: entity_graph__metadata__threat__category ;;
  }
}

view: entity_graph__metadata__threat__about__mac {
  dimension: entity_graph__metadata__threat__about__mac {
    type: string
    sql: entity_graph__metadata__threat__about__mac ;;
  }
}

view: entity_graph__relations__entity__asset__ip {
  dimension: entity_graph__relations__entity__asset__ip {
    type: string
    sql: entity_graph__relations__entity__asset__ip ;;
  }
}

view: entity_graph__entity__ip_geo_artifact {
  dimension: first_seen_time__nanos {
    type: number
    sql: ${TABLE}.first_seen_time.nanos ;;
    group_label: "First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: first_seen_time__seconds {
    type: number
    sql: ${TABLE}.first_seen_time.seconds ;;
    group_label: "First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: last_seen_time__nanos {
    type: number
    sql: ${TABLE}.last_seen_time.nanos ;;
    group_label: "Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: last_seen_time__seconds {
    type: number
    sql: ${TABLE}.last_seen_time.seconds ;;
    group_label: "Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: location__city {
    type: string
    sql: ${TABLE}.location.city ;;
    group_label: "Location"
    group_item_label: "City"
  }

  dimension: location__country_or_region {
    type: string
    sql: ${TABLE}.location.country_or_region ;;
    group_label: "Location"
    group_item_label: "Country or Region"
  }

  dimension: location__desk_name {
    type: string
    sql: ${TABLE}.location.desk_name ;;
    group_label: "Location"
    group_item_label: "Desk Name"
  }

  dimension: location__floor_name {
    type: string
    sql: ${TABLE}.location.floor_name ;;
    group_label: "Location"
    group_item_label: "Floor Name"
  }

  dimension: location__name {
    type: string
    sql: ${TABLE}.location.name ;;
    group_label: "Location"
    group_item_label: "Name"
  }

  dimension: location__region_latitude {
    type: number
    sql: ${TABLE}.location.region_latitude ;;
    group_label: "Location"
    group_item_label: "Region Latitude"
  }

  dimension: location__region_longitude {
    type: number
    sql: ${TABLE}.location.region_longitude ;;
    group_label: "Location"
    group_item_label: "Region Longitude"
  }

  dimension: location__state {
    type: string
    sql: ${TABLE}.location.state ;;
    group_label: "Location"
    group_item_label: "State"
  }

  dimension: network__application_protocol {
    type: number
    sql: ${TABLE}.network.application_protocol ;;
    group_label: "Network"
    group_item_label: "Application Protocol"
  }

  dimension: network__application_protocol_version {
    type: string
    sql: ${TABLE}.network.application_protocol_version ;;
    group_label: "Network"
    group_item_label: "Application Protocol Version"
  }

  dimension: network__asn {
    type: string
    sql: ${TABLE}.network.asn ;;
    group_label: "Network"
    group_item_label: "Asn"
  }

  dimension: network__carrier_name {
    type: string
    sql: ${TABLE}.network.carrier_name ;;
    group_label: "Network"
    group_item_label: "Carrier Name"
  }

  dimension: network__community_id {
    type: string
    sql: ${TABLE}.network.community_id ;;
    group_label: "Network"
    group_item_label: "Community ID"
  }

  dimension: network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.network.dhcp.chaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.network.dhcp.ciaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.network.dhcp.client_hostname ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.network.dhcp.client_identifier ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: network__dhcp__file {
    type: string
    sql: ${TABLE}.network.dhcp.file ;;
    group_label: "Network Dhcp"
    group_item_label: "File"
  }

  dimension: network__dhcp__flags {
    type: number
    sql: ${TABLE}.network.dhcp.flags ;;
    group_label: "Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.network.dhcp.giaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: network__dhcp__hlen {
    type: number
    sql: ${TABLE}.network.dhcp.hlen ;;
    group_label: "Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: network__dhcp__hops {
    type: number
    sql: ${TABLE}.network.dhcp.hops ;;
    group_label: "Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: network__dhcp__htype {
    type: number
    sql: ${TABLE}.network.dhcp.htype ;;
    group_label: "Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.network.dhcp.lease_time_seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: network__dhcp__opcode {
    type: number
    sql: ${TABLE}.network.dhcp.opcode ;;
    group_label: "Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.network.dhcp.options ;;
    group_label: "Network Dhcp"
    group_item_label: "Options"
  }

  dimension: network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.network.dhcp.requested_address ;;
    group_label: "Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: network__dhcp__seconds {
    type: number
    sql: ${TABLE}.network.dhcp.seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.network.dhcp.siaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: network__dhcp__sname {
    type: string
    sql: ${TABLE}.network.dhcp.sname ;;
    group_label: "Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.network.dhcp.transaction_id ;;
    group_label: "Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: network__dhcp__type {
    type: number
    sql: ${TABLE}.network.dhcp.type ;;
    group_label: "Network Dhcp"
    group_item_label: "Type"
  }

  dimension: network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.network.dhcp.yiaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: network__direction {
    type: number
    sql: ${TABLE}.network.direction ;;
    group_label: "Network"
    group_item_label: "Direction"
  }

  dimension: network__dns__additional {
    hidden: yes
    sql: ${TABLE}.network.dns.additional ;;
    group_label: "Network Dns"
    group_item_label: "Additional"
  }

  dimension: network__dns__answers {
    hidden: yes
    sql: ${TABLE}.network.dns.answers ;;
    group_label: "Network Dns"
    group_item_label: "Answers"
  }

  dimension: network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.network.dns.authoritative ;;
    group_label: "Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: network__dns__authority {
    hidden: yes
    sql: ${TABLE}.network.dns.authority ;;
    group_label: "Network Dns"
    group_item_label: "Authority"
  }

  dimension: network__dns__id {
    type: number
    sql: ${TABLE}.network.dns.id ;;
    group_label: "Network Dns"
    group_item_label: "ID"
  }

  dimension: network__dns__opcode {
    type: number
    sql: ${TABLE}.network.dns.opcode ;;
    group_label: "Network Dns"
    group_item_label: "Opcode"
  }

  dimension: network__dns__questions {
    hidden: yes
    sql: ${TABLE}.network.dns.questions ;;
    group_label: "Network Dns"
    group_item_label: "Questions"
  }

  dimension: network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_available ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_desired ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: network__dns__response {
    type: yesno
    sql: ${TABLE}.network.dns.response ;;
    group_label: "Network Dns"
    group_item_label: "Response"
  }

  dimension: network__dns__response_code {
    type: number
    sql: ${TABLE}.network.dns.response_code ;;
    group_label: "Network Dns"
    group_item_label: "Response Code"
  }

  dimension: network__dns__truncated {
    type: yesno
    sql: ${TABLE}.network.dns.truncated ;;
    group_label: "Network Dns"
    group_item_label: "Truncated"
  }

  dimension: network__dns_domain {
    type: string
    sql: ${TABLE}.network.dns_domain ;;
    group_label: "Network"
    group_item_label: "Dns Domain"
  }

  dimension: network__email__bcc {
    hidden: yes
    sql: ${TABLE}.network.email.bcc ;;
    group_label: "Network Email"
    group_item_label: "Bcc"
  }

  dimension: network__email__bounce_address {
    type: string
    sql: ${TABLE}.network.email.bounce_address ;;
    group_label: "Network Email"
    group_item_label: "Bounce Address"
  }

  dimension: network__email__cc {
    hidden: yes
    sql: ${TABLE}.network.email.cc ;;
    group_label: "Network Email"
    group_item_label: "Cc"
  }

  dimension: network__email__from {
    type: string
    sql: ${TABLE}.network.email.`from` ;;
    group_label: "Network Email"
    group_item_label: "From"
  }

  dimension: network__email__mail_id {
    type: string
    sql: ${TABLE}.network.email.mail_id ;;
    group_label: "Network Email"
    group_item_label: "Mail ID"
  }

  dimension: network__email__reply_to {
    type: string
    sql: ${TABLE}.network.email.reply_to ;;
    group_label: "Network Email"
    group_item_label: "Reply To"
  }

  dimension: network__email__subject {
    hidden: yes
    sql: ${TABLE}.network.email.subject ;;
    group_label: "Network Email"
    group_item_label: "Subject"
  }

  dimension: network__email__to {
    hidden: yes
    sql: ${TABLE}.network.email.`to` ;;
    group_label: "Network Email"
    group_item_label: "To"
  }

  dimension: network__ftp__command {
    type: string
    sql: ${TABLE}.network.ftp.command ;;
    group_label: "Network Ftp"
    group_item_label: "Command"
  }

  dimension: network__http__method {
    type: string
    sql: ${TABLE}.network.http.method ;;
    group_label: "Network HTTP"
    group_item_label: "Method"
  }

  dimension: network__http__parsed_user_agent__annotation {
    hidden: yes
    sql: ${TABLE}.network.http.parsed_user_agent.annotation ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Annotation"
  }

  dimension: network__http__parsed_user_agent__browser {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser"
  }

  dimension: network__http__parsed_user_agent__browser_engine_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser_engine_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser Engine Version"
  }

  dimension: network__http__parsed_user_agent__browser_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser Version"
  }

  dimension: network__http__parsed_user_agent__carrier {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.carrier ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Carrier"
  }

  dimension: network__http__parsed_user_agent__device {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.device ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Device"
  }

  dimension: network__http__parsed_user_agent__device_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.device_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Device Version"
  }

  dimension: network__http__parsed_user_agent__family {
    type: number
    sql: ${TABLE}.network.http.parsed_user_agent.family ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Family"
  }

  dimension: network__http__parsed_user_agent__google_toolbar_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.google_toolbar_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Google Toolbar Version"
  }

  dimension: network__http__parsed_user_agent__java_configuration {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_configuration ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration"
  }

  dimension: network__http__parsed_user_agent__java_configuration_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_configuration_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration Version"
  }

  dimension: network__http__parsed_user_agent__java_profile {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_profile ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Profile"
  }

  dimension: network__http__parsed_user_agent__java_profile_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_profile_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Profile Version"
  }

  dimension: network__http__parsed_user_agent__locale {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.locale ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Locale"
  }

  dimension: network__http__parsed_user_agent__messaging {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.messaging ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Messaging"
  }

  dimension: network__http__parsed_user_agent__messaging_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.messaging_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Messaging Version"
  }

  dimension: network__http__parsed_user_agent__os {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.os ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "OS"
  }

  dimension: network__http__parsed_user_agent__os_variant {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.os_variant ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "OS Variant"
  }

  dimension: network__http__parsed_user_agent__platform {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.platform ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Platform"
  }

  dimension: network__http__parsed_user_agent__security {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.security ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Security"
  }

  dimension: network__http__parsed_user_agent__sub_family {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.sub_family ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Sub Family"
  }

  dimension: network__http__referral_url {
    type: string
    sql: ${TABLE}.network.http.referral_url ;;
    group_label: "Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: network__http__response_code {
    type: number
    sql: ${TABLE}.network.http.response_code ;;
    group_label: "Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: network__http__user_agent {
    type: string
    sql: ${TABLE}.network.http.user_agent ;;
    group_label: "Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: network__ip_protocol {
    type: number
    sql: ${TABLE}.network.ip_protocol ;;
    group_label: "Network"
    group_item_label: "IP Protocol"
  }

  dimension: network__organization_name {
    type: string
    sql: ${TABLE}.network.organization_name ;;
    group_label: "Network"
    group_item_label: "Organization Name"
  }

  dimension: network__parent_session_id {
    type: string
    sql: ${TABLE}.network.parent_session_id ;;
    group_label: "Network"
    group_item_label: "Parent Session ID"
  }

  dimension: network__received_bytes {
    type: number
    sql: ${TABLE}.network.received_bytes ;;
    group_label: "Network"
    group_item_label: "Received Bytes"
  }

  dimension: network__received_packets {
    type: number
    sql: ${TABLE}.network.received_packets ;;
    group_label: "Network"
    group_item_label: "Received Packets"
  }

  dimension: network__sent_bytes {
    type: number
    sql: ${TABLE}.network.sent_bytes ;;
    group_label: "Network"
    group_item_label: "Sent Bytes"
  }

  dimension: network__sent_packets {
    type: number
    sql: ${TABLE}.network.sent_packets ;;
    group_label: "Network"
    group_item_label: "Sent Packets"
  }

  dimension: network__session_duration__nanos {
    type: number
    sql: ${TABLE}.network.session_duration.nanos ;;
    group_label: "Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: network__session_duration__seconds {
    type: number
    sql: ${TABLE}.network.session_duration.seconds ;;
    group_label: "Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: network__session_id {
    type: string
    sql: ${TABLE}.network.session_id ;;
    group_label: "Network"
    group_item_label: "Session ID"
  }

  dimension: network__smtp__helo {
    type: string
    sql: ${TABLE}.network.smtp.helo ;;
    group_label: "Network Smtp"
    group_item_label: "Helo"
  }

  dimension: network__smtp__is_tls {
    type: yesno
    sql: ${TABLE}.network.smtp.is_tls ;;
    group_label: "Network Smtp"
    group_item_label: "Is Tls"
  }

  dimension: network__smtp__is_webmail {
    type: yesno
    sql: ${TABLE}.network.smtp.is_webmail ;;
    group_label: "Network Smtp"
    group_item_label: "Is Webmail"
  }

  dimension: network__smtp__mail_from {
    type: string
    sql: ${TABLE}.network.smtp.mail_from ;;
    group_label: "Network Smtp"
    group_item_label: "Mail From"
  }

  dimension: network__smtp__message_path {
    type: string
    sql: ${TABLE}.network.smtp.message_path ;;
    group_label: "Network Smtp"
    group_item_label: "Message Path"
  }

  dimension: network__smtp__rcpt_to {
    hidden: yes
    sql: ${TABLE}.network.smtp.rcpt_to ;;
    group_label: "Network Smtp"
    group_item_label: "Rcpt To"
  }

  dimension: network__smtp__server_response {
    hidden: yes
    sql: ${TABLE}.network.smtp.server_response ;;
    group_label: "Network Smtp"
    group_item_label: "Server Response"
  }

  dimension: network__tls__cipher {
    type: string
    sql: ${TABLE}.network.tls.cipher ;;
    group_label: "Network Tls"
    group_item_label: "Cipher"
  }

  dimension: network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.issuer ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.md5 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.nanos ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.seconds ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.nanos ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.seconds ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.serial ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha1 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha256 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.subject ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.version ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.network.tls.client.ja3 ;;
    group_label: "Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: network__tls__client__server_name {
    type: string
    sql: ${TABLE}.network.tls.client.server_name ;;
    group_label: "Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.network.tls.client.supported_ciphers ;;
    group_label: "Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: network__tls__curve {
    type: string
    sql: ${TABLE}.network.tls.curve ;;
    group_label: "Network Tls"
    group_item_label: "Curve"
  }

  dimension: network__tls__established {
    type: yesno
    sql: ${TABLE}.network.tls.established ;;
    group_label: "Network Tls"
    group_item_label: "Established"
  }

  dimension: network__tls__next_protocol {
    type: string
    sql: ${TABLE}.network.tls.next_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: network__tls__resumed {
    type: yesno
    sql: ${TABLE}.network.tls.resumed ;;
    group_label: "Network Tls"
    group_item_label: "Resumed"
  }

  dimension: network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.issuer ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.md5 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.nanos ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.seconds ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.nanos ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.seconds ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.serial ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha1 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha256 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.subject ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.version ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.network.tls.server.ja3s ;;
    group_label: "Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: network__tls__version {
    type: string
    sql: ${TABLE}.network.tls.version ;;
    group_label: "Network Tls"
    group_item_label: "Version"
  }

  dimension: network__tls__version_protocol {
    type: string
    sql: ${TABLE}.network.tls.version_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }
}

view: entity_graph__entity__process__file__names {
  dimension: entity_graph__entity__process__file__names {
    type: string
    sql: entity_graph__entity__process__file__names ;;
  }
}

view: entity_graph__entity__domain__name_server {
  dimension: entity_graph__entity__domain__name_server {
    type: string
    sql: entity_graph__entity__domain__name_server ;;
  }
}

view: entity_graph__entity__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: entity_graph__entity__user__phone_numbers {
  dimension: entity_graph__entity__user__phone_numbers {
    type: string
    sql: entity_graph__entity__user__phone_numbers ;;
  }
}

view: entity_graph__metadata__source_labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__asset__mac {
  dimension: entity_graph__relations__entity__asset__mac {
    type: string
    sql: entity_graph__relations__entity__asset__mac ;;
  }
}

view: entity_graph__entity__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: permissions {
    hidden: yes
    sql: ${TABLE}.permissions ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: entity_graph__relations__entity__file__names {
  dimension: entity_graph__relations__entity__file__names {
    type: string
    sql: entity_graph__relations__entity__file__names ;;
  }
}

view: entity_graph__relations__entity__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__user__email_addresses {
  dimension: entity_graph__entity__user__email_addresses {
    type: string
    sql: entity_graph__entity__user__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__nat_ip {
  dimension: entity_graph__metadata__threat__about__nat_ip {
    type: string
    sql: entity_graph__metadata__threat__about__nat_ip ;;
  }
}

view: entity_graph__metadata__threat__outcomes {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__resource_ancestors {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__ahash {
    type: string
    sql: ${TABLE}.file.ahash ;;
    group_label: "File"
    group_item_label: "Ahash"
  }

  dimension: file__authentihash {
    type: string
    sql: ${TABLE}.file.authentihash ;;
    group_label: "File"
    group_item_label: "Authentihash"
  }

  dimension: file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.file.capabilities_tags ;;
    group_label: "File"
    group_item_label: "Capabilities Tags"
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__file_type {
    type: number
    sql: ${TABLE}.file.file_type ;;
    group_label: "File"
    group_item_label: "File Type"
  }

  dimension: file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.file.first_seen_time.nanos ;;
    group_label: "File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.file.first_seen_time.seconds ;;
    group_label: "File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.file.last_modification_time.nanos ;;
    group_label: "File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.file.last_modification_time.seconds ;;
    group_label: "File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.file.last_seen_time.nanos ;;
    group_label: "File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.file.last_seen_time.seconds ;;
    group_label: "File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__names {
    hidden: yes
    sql: ${TABLE}.file.names ;;
    group_label: "File"
    group_item_label: "Names"
  }

  dimension: file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_time.nanos ;;
    group_label: "File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_time.seconds ;;
    group_label: "File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.file.pe_file.entry_point ;;
    group_label: "File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.file.pe_file.entry_point_exiftool ;;
    group_label: "File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: file__pe_file__imphash {
    type: string
    sql: ${TABLE}.file.pe_file.imphash ;;
    group_label: "File Pe File"
    group_item_label: "Imphash"
  }

  dimension: file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.file.pe_file.imports ;;
    group_label: "File Pe File"
    group_item_label: "Imports"
  }

  dimension: file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resource ;;
    group_label: "File Pe File"
    group_item_label: "Resource"
  }

  dimension: file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_language_count ;;
    group_label: "File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_language_count_str ;;
    group_label: "File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_type_count ;;
    group_label: "File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_type_count_str ;;
    group_label: "File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.file.pe_file.section ;;
    group_label: "File Pe File"
    group_item_label: "Section"
  }

  dimension: file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.file.pe_file.signature_info.signer ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.file.pe_file.signature_info.signers ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.file.pe_file.signature_info.verification_message ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.file.pe_file.signature_info.verified ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: file__prevalence__day_count {
    type: number
    sql: ${TABLE}.file.prevalence.day_count ;;
    group_label: "File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: file__prevalence__day_max {
    type: number
    sql: ${TABLE}.file.prevalence.day_max ;;
    group_label: "File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.file.prevalence.day_max_sub_domains ;;
    group_label: "File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.file.prevalence.rolling_max ;;
    group_label: "File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.file.prevalence.rolling_max_sub_domains ;;
    group_label: "File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
  }

  dimension: file__ssdeep {
    type: string
    sql: ${TABLE}.file.ssdeep ;;
    group_label: "File"
    group_item_label: "Ssdeep"
  }

  dimension: file__vhash {
    type: string
    sql: ${TABLE}.file.vhash ;;
    group_label: "File"
    group_item_label: "Vhash"
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: entity_graph__relations__entity__asset__nat_ip {
  dimension: entity_graph__relations__entity__asset__nat_ip {
    type: string
    sql: entity_graph__relations__entity__asset__nat_ip ;;
  }
}

view: entity_graph__entity__file__capabilities_tags {
  dimension: entity_graph__entity__file__capabilities_tags {
    type: string
    sql: entity_graph__entity__file__capabilities_tags ;;
  }
}

view: entity_graph__entity__domain__tech__department {
  dimension: entity_graph__entity__domain__tech__department {
    type: string
    sql: entity_graph__entity__domain__tech__department ;;
  }
}

view: entity_graph__entity__domain__zone__department {
  dimension: entity_graph__entity__domain__zone__department {
    type: string
    sql: entity_graph__entity__domain__zone__department ;;
  }
}

view: entity_graph__entity__investigation__comments {
  dimension: entity_graph__entity__investigation__comments {
    type: string
    sql: entity_graph__entity__investigation__comments ;;
  }
}

view: entity_graph__entity__user__group_identifiers {
  dimension: entity_graph__entity__user__group_identifiers {
    type: string
    sql: entity_graph__entity__user__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__asset__ip {
  dimension: entity_graph__metadata__threat__about__asset__ip {
    type: string
    sql: entity_graph__metadata__threat__about__asset__ip ;;
  }
}

view: entity_graph__entity__group__email_addresses {
  dimension: entity_graph__entity__group__email_addresses {
    type: string
    sql: entity_graph__entity__group__email_addresses ;;
  }
}

view: entity_graph__entity__domain__admin__department {
  dimension: entity_graph__entity__domain__admin__department {
    type: string
    sql: entity_graph__entity__domain__admin__department ;;
  }
}

view: entity_graph__metadata__threat__about__asset__mac {
  dimension: entity_graph__metadata__threat__about__asset__mac {
    type: string
    sql: entity_graph__metadata__threat__about__asset__mac ;;
  }
}

view: entity_graph__metadata__threat__rule_labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__file__names {
  dimension: entity_graph__metadata__threat__about__file__names {
    type: string
    sql: entity_graph__metadata__threat__about__file__names ;;
  }
}

view: entity_graph__metadata__threat__about__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__category_details {
  dimension: entity_graph__metadata__threat__category_details {
    type: string
    sql: entity_graph__metadata__threat__category_details ;;
  }
}

view: entity_graph__relations__entity__user__department {
  dimension: entity_graph__relations__entity__user__department {
    type: string
    sql: entity_graph__relations__entity__user__department ;;
  }
}

view: entity_graph__entity__artifact__network__email__cc {
  dimension: entity_graph__entity__artifact__network__email__cc {
    type: string
    sql: entity_graph__entity__artifact__network__email__cc ;;
  }
}

view: entity_graph__entity__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__entity__domain__tech__phone_numbers {
  dimension: entity_graph__entity__domain__tech__phone_numbers {
    type: string
    sql: entity_graph__entity__domain__tech__phone_numbers ;;
  }
}

view: entity_graph__entity__domain__billing__department {
  dimension: entity_graph__entity__domain__billing__department {
    type: string
    sql: entity_graph__entity__domain__billing__department ;;
  }
}

view: entity_graph__entity__domain__zone__phone_numbers {
  dimension: entity_graph__entity__domain__zone__phone_numbers {
    type: string
    sql: entity_graph__entity__domain__zone__phone_numbers ;;
  }
}

view: entity_graph__entity__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__ip_location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: desk_name {
    type: string
    sql: ${TABLE}.desk_name ;;
  }

  dimension: floor_name {
    type: string
    sql: ${TABLE}.floor_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_latitude {
    type: number
    sql: ${TABLE}.region_latitude ;;
  }

  dimension: region_longitude {
    type: number
    sql: ${TABLE}.region_longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: entity_graph__relations__entity__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__artifact__network__email__bcc {
  dimension: entity_graph__entity__artifact__network__email__bcc {
    type: string
    sql: entity_graph__entity__artifact__network__email__bcc ;;
  }
}

view: entity_graph__entity__domain__admin__phone_numbers {
  dimension: entity_graph__entity__domain__admin__phone_numbers {
    type: string
    sql: entity_graph__entity__domain__admin__phone_numbers ;;
  }
}

view: entity_graph__entity__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
  }

  dimension: cvss_base_score {
    type: number
    sql: ${TABLE}.cvss_base_score ;;
  }

  dimension: cvss_vector {
    type: string
    sql: ${TABLE}.cvss_vector ;;
  }

  dimension: cvss_version {
    type: string
    sql: ${TABLE}.cvss_version ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: entity_graph__entity__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__asset__nat_ip {
  dimension: entity_graph__metadata__threat__about__asset__nat_ip {
    type: string
    sql: entity_graph__metadata__threat__about__asset__nat_ip ;;
  }
}

view: entity_graph__entity__artifact__network__email__to {
  dimension: entity_graph__entity__artifact__network__email__to {
    type: string
    sql: entity_graph__entity__artifact__network__email__to ;;
  }
}

view: entity_graph__entity__user_management_chain {
  dimension: account_type {
    type: number
    sql: ${TABLE}.account_type ;;
  }

  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_seen_time__nanos {
    type: number
    sql: ${TABLE}.first_seen_time.nanos ;;
    group_label: "First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: first_seen_time__seconds {
    type: number
    sql: ${TABLE}.first_seen_time.seconds ;;
    group_label: "First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: group_identifiers {
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__desk_name {
    type: string
    sql: ${TABLE}.office_address.desk_name ;;
    group_label: "Office Address"
    group_item_label: "Desk Name"
  }

  dimension: office_address__floor_name {
    type: string
    sql: ${TABLE}.office_address.floor_name ;;
    group_label: "Office Address"
    group_item_label: "Floor Name"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__region_latitude {
    type: number
    sql: ${TABLE}.office_address.region_latitude ;;
    group_label: "Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: office_address__region_longitude {
    type: number
    sql: ${TABLE}.office_address.region_longitude ;;
    group_label: "Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__desk_name {
    type: string
    sql: ${TABLE}.personal_address.desk_name ;;
    group_label: "Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: personal_address__floor_name {
    type: string
    sql: ${TABLE}.personal_address.floor_name ;;
    group_label: "Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__region_latitude {
    type: number
    sql: ${TABLE}.personal_address.region_latitude ;;
    group_label: "Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: personal_address__region_longitude {
    type: number
    sql: ${TABLE}.personal_address.region_longitude ;;
    group_label: "Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: entity_graph__entity__domain__tech__email_addresses {
  dimension: entity_graph__entity__domain__tech__email_addresses {
    type: string
    sql: entity_graph__entity__domain__tech__email_addresses ;;
  }
}

view: entity_graph__entity__domain__zone__email_addresses {
  dimension: entity_graph__entity__domain__zone__email_addresses {
    type: string
    sql: entity_graph__entity__domain__zone__email_addresses ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact {
  dimension: first_seen_time__nanos {
    type: number
    sql: ${TABLE}.first_seen_time.nanos ;;
    group_label: "First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: first_seen_time__seconds {
    type: number
    sql: ${TABLE}.first_seen_time.seconds ;;
    group_label: "First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: last_seen_time__nanos {
    type: number
    sql: ${TABLE}.last_seen_time.nanos ;;
    group_label: "Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: last_seen_time__seconds {
    type: number
    sql: ${TABLE}.last_seen_time.seconds ;;
    group_label: "Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: location__city {
    type: string
    sql: ${TABLE}.location.city ;;
    group_label: "Location"
    group_item_label: "City"
  }

  dimension: location__country_or_region {
    type: string
    sql: ${TABLE}.location.country_or_region ;;
    group_label: "Location"
    group_item_label: "Country or Region"
  }

  dimension: location__desk_name {
    type: string
    sql: ${TABLE}.location.desk_name ;;
    group_label: "Location"
    group_item_label: "Desk Name"
  }

  dimension: location__floor_name {
    type: string
    sql: ${TABLE}.location.floor_name ;;
    group_label: "Location"
    group_item_label: "Floor Name"
  }

  dimension: location__name {
    type: string
    sql: ${TABLE}.location.name ;;
    group_label: "Location"
    group_item_label: "Name"
  }

  dimension: location__region_latitude {
    type: number
    sql: ${TABLE}.location.region_latitude ;;
    group_label: "Location"
    group_item_label: "Region Latitude"
  }

  dimension: location__region_longitude {
    type: number
    sql: ${TABLE}.location.region_longitude ;;
    group_label: "Location"
    group_item_label: "Region Longitude"
  }

  dimension: location__state {
    type: string
    sql: ${TABLE}.location.state ;;
    group_label: "Location"
    group_item_label: "State"
  }

  dimension: network__application_protocol {
    type: number
    sql: ${TABLE}.network.application_protocol ;;
    group_label: "Network"
    group_item_label: "Application Protocol"
  }

  dimension: network__application_protocol_version {
    type: string
    sql: ${TABLE}.network.application_protocol_version ;;
    group_label: "Network"
    group_item_label: "Application Protocol Version"
  }

  dimension: network__asn {
    type: string
    sql: ${TABLE}.network.asn ;;
    group_label: "Network"
    group_item_label: "Asn"
  }

  dimension: network__carrier_name {
    type: string
    sql: ${TABLE}.network.carrier_name ;;
    group_label: "Network"
    group_item_label: "Carrier Name"
  }

  dimension: network__community_id {
    type: string
    sql: ${TABLE}.network.community_id ;;
    group_label: "Network"
    group_item_label: "Community ID"
  }

  dimension: network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.network.dhcp.chaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.network.dhcp.ciaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.network.dhcp.client_hostname ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.network.dhcp.client_identifier ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: network__dhcp__file {
    type: string
    sql: ${TABLE}.network.dhcp.file ;;
    group_label: "Network Dhcp"
    group_item_label: "File"
  }

  dimension: network__dhcp__flags {
    type: number
    sql: ${TABLE}.network.dhcp.flags ;;
    group_label: "Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.network.dhcp.giaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: network__dhcp__hlen {
    type: number
    sql: ${TABLE}.network.dhcp.hlen ;;
    group_label: "Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: network__dhcp__hops {
    type: number
    sql: ${TABLE}.network.dhcp.hops ;;
    group_label: "Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: network__dhcp__htype {
    type: number
    sql: ${TABLE}.network.dhcp.htype ;;
    group_label: "Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.network.dhcp.lease_time_seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: network__dhcp__opcode {
    type: number
    sql: ${TABLE}.network.dhcp.opcode ;;
    group_label: "Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.network.dhcp.options ;;
    group_label: "Network Dhcp"
    group_item_label: "Options"
  }

  dimension: network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.network.dhcp.requested_address ;;
    group_label: "Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: network__dhcp__seconds {
    type: number
    sql: ${TABLE}.network.dhcp.seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.network.dhcp.siaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: network__dhcp__sname {
    type: string
    sql: ${TABLE}.network.dhcp.sname ;;
    group_label: "Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.network.dhcp.transaction_id ;;
    group_label: "Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: network__dhcp__type {
    type: number
    sql: ${TABLE}.network.dhcp.type ;;
    group_label: "Network Dhcp"
    group_item_label: "Type"
  }

  dimension: network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.network.dhcp.yiaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: network__direction {
    type: number
    sql: ${TABLE}.network.direction ;;
    group_label: "Network"
    group_item_label: "Direction"
  }

  dimension: network__dns__additional {
    hidden: yes
    sql: ${TABLE}.network.dns.additional ;;
    group_label: "Network Dns"
    group_item_label: "Additional"
  }

  dimension: network__dns__answers {
    hidden: yes
    sql: ${TABLE}.network.dns.answers ;;
    group_label: "Network Dns"
    group_item_label: "Answers"
  }

  dimension: network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.network.dns.authoritative ;;
    group_label: "Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: network__dns__authority {
    hidden: yes
    sql: ${TABLE}.network.dns.authority ;;
    group_label: "Network Dns"
    group_item_label: "Authority"
  }

  dimension: network__dns__id {
    type: number
    sql: ${TABLE}.network.dns.id ;;
    group_label: "Network Dns"
    group_item_label: "ID"
  }

  dimension: network__dns__opcode {
    type: number
    sql: ${TABLE}.network.dns.opcode ;;
    group_label: "Network Dns"
    group_item_label: "Opcode"
  }

  dimension: network__dns__questions {
    hidden: yes
    sql: ${TABLE}.network.dns.questions ;;
    group_label: "Network Dns"
    group_item_label: "Questions"
  }

  dimension: network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_available ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_desired ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: network__dns__response {
    type: yesno
    sql: ${TABLE}.network.dns.response ;;
    group_label: "Network Dns"
    group_item_label: "Response"
  }

  dimension: network__dns__response_code {
    type: number
    sql: ${TABLE}.network.dns.response_code ;;
    group_label: "Network Dns"
    group_item_label: "Response Code"
  }

  dimension: network__dns__truncated {
    type: yesno
    sql: ${TABLE}.network.dns.truncated ;;
    group_label: "Network Dns"
    group_item_label: "Truncated"
  }

  dimension: network__dns_domain {
    type: string
    sql: ${TABLE}.network.dns_domain ;;
    group_label: "Network"
    group_item_label: "Dns Domain"
  }

  dimension: network__email__bcc {
    hidden: yes
    sql: ${TABLE}.network.email.bcc ;;
    group_label: "Network Email"
    group_item_label: "Bcc"
  }

  dimension: network__email__bounce_address {
    type: string
    sql: ${TABLE}.network.email.bounce_address ;;
    group_label: "Network Email"
    group_item_label: "Bounce Address"
  }

  dimension: network__email__cc {
    hidden: yes
    sql: ${TABLE}.network.email.cc ;;
    group_label: "Network Email"
    group_item_label: "Cc"
  }

  dimension: network__email__from {
    type: string
    sql: ${TABLE}.network.email.`from` ;;
    group_label: "Network Email"
    group_item_label: "From"
  }

  dimension: network__email__mail_id {
    type: string
    sql: ${TABLE}.network.email.mail_id ;;
    group_label: "Network Email"
    group_item_label: "Mail ID"
  }

  dimension: network__email__reply_to {
    type: string
    sql: ${TABLE}.network.email.reply_to ;;
    group_label: "Network Email"
    group_item_label: "Reply To"
  }

  dimension: network__email__subject {
    hidden: yes
    sql: ${TABLE}.network.email.subject ;;
    group_label: "Network Email"
    group_item_label: "Subject"
  }

  dimension: network__email__to {
    hidden: yes
    sql: ${TABLE}.network.email.`to` ;;
    group_label: "Network Email"
    group_item_label: "To"
  }

  dimension: network__ftp__command {
    type: string
    sql: ${TABLE}.network.ftp.command ;;
    group_label: "Network Ftp"
    group_item_label: "Command"
  }

  dimension: network__http__method {
    type: string
    sql: ${TABLE}.network.http.method ;;
    group_label: "Network HTTP"
    group_item_label: "Method"
  }

  dimension: network__http__parsed_user_agent__annotation {
    hidden: yes
    sql: ${TABLE}.network.http.parsed_user_agent.annotation ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Annotation"
  }

  dimension: network__http__parsed_user_agent__browser {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser"
  }

  dimension: network__http__parsed_user_agent__browser_engine_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser_engine_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser Engine Version"
  }

  dimension: network__http__parsed_user_agent__browser_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser Version"
  }

  dimension: network__http__parsed_user_agent__carrier {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.carrier ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Carrier"
  }

  dimension: network__http__parsed_user_agent__device {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.device ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Device"
  }

  dimension: network__http__parsed_user_agent__device_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.device_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Device Version"
  }

  dimension: network__http__parsed_user_agent__family {
    type: number
    sql: ${TABLE}.network.http.parsed_user_agent.family ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Family"
  }

  dimension: network__http__parsed_user_agent__google_toolbar_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.google_toolbar_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Google Toolbar Version"
  }

  dimension: network__http__parsed_user_agent__java_configuration {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_configuration ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration"
  }

  dimension: network__http__parsed_user_agent__java_configuration_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_configuration_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration Version"
  }

  dimension: network__http__parsed_user_agent__java_profile {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_profile ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Profile"
  }

  dimension: network__http__parsed_user_agent__java_profile_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_profile_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Profile Version"
  }

  dimension: network__http__parsed_user_agent__locale {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.locale ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Locale"
  }

  dimension: network__http__parsed_user_agent__messaging {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.messaging ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Messaging"
  }

  dimension: network__http__parsed_user_agent__messaging_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.messaging_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Messaging Version"
  }

  dimension: network__http__parsed_user_agent__os {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.os ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "OS"
  }

  dimension: network__http__parsed_user_agent__os_variant {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.os_variant ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "OS Variant"
  }

  dimension: network__http__parsed_user_agent__platform {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.platform ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Platform"
  }

  dimension: network__http__parsed_user_agent__security {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.security ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Security"
  }

  dimension: network__http__parsed_user_agent__sub_family {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.sub_family ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Sub Family"
  }

  dimension: network__http__referral_url {
    type: string
    sql: ${TABLE}.network.http.referral_url ;;
    group_label: "Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: network__http__response_code {
    type: number
    sql: ${TABLE}.network.http.response_code ;;
    group_label: "Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: network__http__user_agent {
    type: string
    sql: ${TABLE}.network.http.user_agent ;;
    group_label: "Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: network__ip_protocol {
    type: number
    sql: ${TABLE}.network.ip_protocol ;;
    group_label: "Network"
    group_item_label: "IP Protocol"
  }

  dimension: network__organization_name {
    type: string
    sql: ${TABLE}.network.organization_name ;;
    group_label: "Network"
    group_item_label: "Organization Name"
  }

  dimension: network__parent_session_id {
    type: string
    sql: ${TABLE}.network.parent_session_id ;;
    group_label: "Network"
    group_item_label: "Parent Session ID"
  }

  dimension: network__received_bytes {
    type: number
    sql: ${TABLE}.network.received_bytes ;;
    group_label: "Network"
    group_item_label: "Received Bytes"
  }

  dimension: network__received_packets {
    type: number
    sql: ${TABLE}.network.received_packets ;;
    group_label: "Network"
    group_item_label: "Received Packets"
  }

  dimension: network__sent_bytes {
    type: number
    sql: ${TABLE}.network.sent_bytes ;;
    group_label: "Network"
    group_item_label: "Sent Bytes"
  }

  dimension: network__sent_packets {
    type: number
    sql: ${TABLE}.network.sent_packets ;;
    group_label: "Network"
    group_item_label: "Sent Packets"
  }

  dimension: network__session_duration__nanos {
    type: number
    sql: ${TABLE}.network.session_duration.nanos ;;
    group_label: "Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: network__session_duration__seconds {
    type: number
    sql: ${TABLE}.network.session_duration.seconds ;;
    group_label: "Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: network__session_id {
    type: string
    sql: ${TABLE}.network.session_id ;;
    group_label: "Network"
    group_item_label: "Session ID"
  }

  dimension: network__smtp__helo {
    type: string
    sql: ${TABLE}.network.smtp.helo ;;
    group_label: "Network Smtp"
    group_item_label: "Helo"
  }

  dimension: network__smtp__is_tls {
    type: yesno
    sql: ${TABLE}.network.smtp.is_tls ;;
    group_label: "Network Smtp"
    group_item_label: "Is Tls"
  }

  dimension: network__smtp__is_webmail {
    type: yesno
    sql: ${TABLE}.network.smtp.is_webmail ;;
    group_label: "Network Smtp"
    group_item_label: "Is Webmail"
  }

  dimension: network__smtp__mail_from {
    type: string
    sql: ${TABLE}.network.smtp.mail_from ;;
    group_label: "Network Smtp"
    group_item_label: "Mail From"
  }

  dimension: network__smtp__message_path {
    type: string
    sql: ${TABLE}.network.smtp.message_path ;;
    group_label: "Network Smtp"
    group_item_label: "Message Path"
  }

  dimension: network__smtp__rcpt_to {
    hidden: yes
    sql: ${TABLE}.network.smtp.rcpt_to ;;
    group_label: "Network Smtp"
    group_item_label: "Rcpt To"
  }

  dimension: network__smtp__server_response {
    hidden: yes
    sql: ${TABLE}.network.smtp.server_response ;;
    group_label: "Network Smtp"
    group_item_label: "Server Response"
  }

  dimension: network__tls__cipher {
    type: string
    sql: ${TABLE}.network.tls.cipher ;;
    group_label: "Network Tls"
    group_item_label: "Cipher"
  }

  dimension: network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.issuer ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.md5 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.nanos ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.seconds ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.nanos ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.seconds ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.serial ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha1 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha256 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.subject ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.version ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.network.tls.client.ja3 ;;
    group_label: "Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: network__tls__client__server_name {
    type: string
    sql: ${TABLE}.network.tls.client.server_name ;;
    group_label: "Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.network.tls.client.supported_ciphers ;;
    group_label: "Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: network__tls__curve {
    type: string
    sql: ${TABLE}.network.tls.curve ;;
    group_label: "Network Tls"
    group_item_label: "Curve"
  }

  dimension: network__tls__established {
    type: yesno
    sql: ${TABLE}.network.tls.established ;;
    group_label: "Network Tls"
    group_item_label: "Established"
  }

  dimension: network__tls__next_protocol {
    type: string
    sql: ${TABLE}.network.tls.next_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: network__tls__resumed {
    type: yesno
    sql: ${TABLE}.network.tls.resumed ;;
    group_label: "Network Tls"
    group_item_label: "Resumed"
  }

  dimension: network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.issuer ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.md5 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.nanos ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.seconds ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.nanos ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.seconds ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.serial ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha1 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha256 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.subject ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.version ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.network.tls.server.ja3s ;;
    group_label: "Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: network__tls__version {
    type: string
    sql: ${TABLE}.network.tls.version ;;
    group_label: "Network Tls"
    group_item_label: "Version"
  }

  dimension: network__tls__version_protocol {
    type: string
    sql: ${TABLE}.network.tls.version_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }
}

view: entity_graph__relations__entity__process__file__names {
  dimension: entity_graph__relations__entity__process__file__names {
    type: string
    sql: entity_graph__relations__entity__process__file__names ;;
  }
}

view: entity_graph__relations__entity__domain__name_server {
  dimension: entity_graph__relations__entity__domain__name_server {
    type: string
    sql: entity_graph__relations__entity__domain__name_server ;;
  }
}

view: entity_graph__relations__entity__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: entity_graph__relations__entity__user__phone_numbers {
  dimension: entity_graph__relations__entity__user__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__user__phone_numbers ;;
  }
}

view: entity_graph__entity__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__entity__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process__command_line_history {
  dimension: entity_graph__entity__process__command_line_history {
    type: string
    sql: entity_graph__entity__process__command_line_history ;;
  }
}

view: entity_graph__entity__process_ancestors__file__names {
  dimension: entity_graph__entity__process_ancestors__file__names {
    type: string
    sql: entity_graph__entity__process_ancestors__file__names ;;
  }
}

view: entity_graph__entity__domain__admin__email_addresses {
  dimension: entity_graph__entity__domain__admin__email_addresses {
    type: string
    sql: entity_graph__entity__domain__admin__email_addresses ;;
  }
}

view: entity_graph__entity__domain__billing__phone_numbers {
  dimension: entity_graph__entity__domain__billing__phone_numbers {
    type: string
    sql: entity_graph__entity__domain__billing__phone_numbers ;;
  }
}

view: entity_graph__entity__domain__registrant__department {
  dimension: entity_graph__entity__domain__registrant__department {
    type: string
    sql: entity_graph__entity__domain__registrant__department ;;
  }
}

view: entity_graph__metadata__threat__detection_fields {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: permissions {
    hidden: yes
    sql: ${TABLE}.permissions ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: entity_graph__entity__artifact__network__smtp__rcpt_to {
  dimension: entity_graph__entity__artifact__network__smtp__rcpt_to {
    type: string
    sql: entity_graph__entity__artifact__network__smtp__rcpt_to ;;
  }
}

view: entity_graph__entity__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__entity__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__domain__tech__group_identifiers {
  dimension: entity_graph__entity__domain__tech__group_identifiers {
    type: string
    sql: entity_graph__entity__domain__tech__group_identifiers ;;
  }
}

view: entity_graph__entity__domain__zone__group_identifiers {
  dimension: entity_graph__entity__domain__zone__group_identifiers {
    type: string
    sql: entity_graph__entity__domain__zone__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__user__department {
  dimension: entity_graph__metadata__threat__about__user__department {
    type: string
    sql: entity_graph__metadata__threat__about__user__department ;;
  }
}

view: entity_graph__relations__entity__user__email_addresses {
  dimension: entity_graph__relations__entity__user__email_addresses {
    type: string
    sql: entity_graph__relations__entity__user__email_addresses ;;
  }
}

view: entity_graph__entity__artifact__network__email__subject {
  dimension: entity_graph__entity__artifact__network__email__subject {
    type: string
    sql: entity_graph__entity__artifact__network__email__subject ;;
  }
}

view: entity_graph__entity__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__file__pe_file__imports__functions {
  dimension: entity_graph__entity__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__entity__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__entity__process__file__capabilities_tags {
  dimension: entity_graph__entity__process__file__capabilities_tags {
    type: string
    sql: entity_graph__entity__process__file__capabilities_tags ;;
  }
}

view: entity_graph__entity__domain__admin__group_identifiers {
  dimension: entity_graph__entity__domain__admin__group_identifiers {
    type: string
    sql: entity_graph__entity__domain__admin__group_identifiers ;;
  }
}

view: entity_graph__entity__domain__billing__email_addresses {
  dimension: entity_graph__entity__domain__billing__email_addresses {
    type: string
    sql: entity_graph__entity__domain__billing__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__ip_location {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_or_region {
    type: string
    sql: ${TABLE}.country_or_region ;;
  }

  dimension: desk_name {
    type: string
    sql: ${TABLE}.desk_name ;;
  }

  dimension: floor_name {
    type: string
    sql: ${TABLE}.floor_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_latitude {
    type: number
    sql: ${TABLE}.region_latitude ;;
  }

  dimension: region_longitude {
    type: number
    sql: ${TABLE}.region_longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: entity_graph__metadata__threat__about__asset__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__resource_ancestors {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__ahash {
    type: string
    sql: ${TABLE}.file.ahash ;;
    group_label: "File"
    group_item_label: "Ahash"
  }

  dimension: file__authentihash {
    type: string
    sql: ${TABLE}.file.authentihash ;;
    group_label: "File"
    group_item_label: "Authentihash"
  }

  dimension: file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.file.capabilities_tags ;;
    group_label: "File"
    group_item_label: "Capabilities Tags"
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__file_type {
    type: number
    sql: ${TABLE}.file.file_type ;;
    group_label: "File"
    group_item_label: "File Type"
  }

  dimension: file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.file.first_seen_time.nanos ;;
    group_label: "File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.file.first_seen_time.seconds ;;
    group_label: "File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.file.last_modification_time.nanos ;;
    group_label: "File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.file.last_modification_time.seconds ;;
    group_label: "File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.file.last_seen_time.nanos ;;
    group_label: "File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.file.last_seen_time.seconds ;;
    group_label: "File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__names {
    hidden: yes
    sql: ${TABLE}.file.names ;;
    group_label: "File"
    group_item_label: "Names"
  }

  dimension: file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_time.nanos ;;
    group_label: "File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_time.seconds ;;
    group_label: "File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.file.pe_file.entry_point ;;
    group_label: "File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.file.pe_file.entry_point_exiftool ;;
    group_label: "File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: file__pe_file__imphash {
    type: string
    sql: ${TABLE}.file.pe_file.imphash ;;
    group_label: "File Pe File"
    group_item_label: "Imphash"
  }

  dimension: file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.file.pe_file.imports ;;
    group_label: "File Pe File"
    group_item_label: "Imports"
  }

  dimension: file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resource ;;
    group_label: "File Pe File"
    group_item_label: "Resource"
  }

  dimension: file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_language_count ;;
    group_label: "File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_language_count_str ;;
    group_label: "File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_type_count ;;
    group_label: "File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_type_count_str ;;
    group_label: "File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.file.pe_file.section ;;
    group_label: "File Pe File"
    group_item_label: "Section"
  }

  dimension: file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.file.pe_file.signature_info.signer ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.file.pe_file.signature_info.signers ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.file.pe_file.signature_info.verification_message ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.file.pe_file.signature_info.verified ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: file__prevalence__day_count {
    type: number
    sql: ${TABLE}.file.prevalence.day_count ;;
    group_label: "File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: file__prevalence__day_max {
    type: number
    sql: ${TABLE}.file.prevalence.day_max ;;
    group_label: "File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.file.prevalence.day_max_sub_domains ;;
    group_label: "File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.file.prevalence.rolling_max ;;
    group_label: "File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.file.prevalence.rolling_max_sub_domains ;;
    group_label: "File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
  }

  dimension: file__ssdeep {
    type: string
    sql: ${TABLE}.file.ssdeep ;;
    group_label: "File"
    group_item_label: "Ssdeep"
  }

  dimension: file__vhash {
    type: string
    sql: ${TABLE}.file.vhash ;;
    group_label: "File"
    group_item_label: "Vhash"
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: entity_graph__entity__domain__registrant__phone_numbers {
  dimension: entity_graph__entity__domain__registrant__phone_numbers {
    type: string
    sql: entity_graph__entity__domain__registrant__phone_numbers ;;
  }
}

view: entity_graph__entity__asset__software__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__file__capabilities_tags {
  dimension: entity_graph__relations__entity__file__capabilities_tags {
    type: string
    sql: entity_graph__relations__entity__file__capabilities_tags ;;
  }
}

view: entity_graph__relations__entity__domain__tech__department {
  dimension: entity_graph__relations__entity__domain__tech__department {
    type: string
    sql: entity_graph__relations__entity__domain__tech__department ;;
  }
}

view: entity_graph__relations__entity__domain__zone__department {
  dimension: entity_graph__relations__entity__domain__zone__department {
    type: string
    sql: entity_graph__relations__entity__domain__zone__department ;;
  }
}

view: entity_graph__relations__entity__investigation__comments {
  dimension: entity_graph__relations__entity__investigation__comments {
    type: string
    sql: entity_graph__relations__entity__investigation__comments ;;
  }
}

view: entity_graph__relations__entity__user__group_identifiers {
  dimension: entity_graph__relations__entity__user__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__user__group_identifiers ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__email__cc {
  dimension: entity_graph__entity__ip_geo_artifact__network__email__cc {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__email__cc ;;
  }
}

view: entity_graph__entity__artifact__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__user_management_chain__department {
  dimension: entity_graph__entity__user_management_chain__department {
    type: string
    sql: entity_graph__entity__user_management_chain__department ;;
  }
}

view: entity_graph__entity__domain__tech__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__domain__tech__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__tech__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__domain__billing__group_identifiers {
  dimension: entity_graph__entity__domain__billing__group_identifiers {
    type: string
    sql: entity_graph__entity__domain__billing__group_identifiers ;;
  }
}

view: entity_graph__entity__domain__zone__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__domain__zone__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__zone__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact {
  dimension: first_seen_time__nanos {
    type: number
    sql: ${TABLE}.first_seen_time.nanos ;;
    group_label: "First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: first_seen_time__seconds {
    type: number
    sql: ${TABLE}.first_seen_time.seconds ;;
    group_label: "First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: last_seen_time__nanos {
    type: number
    sql: ${TABLE}.last_seen_time.nanos ;;
    group_label: "Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: last_seen_time__seconds {
    type: number
    sql: ${TABLE}.last_seen_time.seconds ;;
    group_label: "Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: location__city {
    type: string
    sql: ${TABLE}.location.city ;;
    group_label: "Location"
    group_item_label: "City"
  }

  dimension: location__country_or_region {
    type: string
    sql: ${TABLE}.location.country_or_region ;;
    group_label: "Location"
    group_item_label: "Country or Region"
  }

  dimension: location__desk_name {
    type: string
    sql: ${TABLE}.location.desk_name ;;
    group_label: "Location"
    group_item_label: "Desk Name"
  }

  dimension: location__floor_name {
    type: string
    sql: ${TABLE}.location.floor_name ;;
    group_label: "Location"
    group_item_label: "Floor Name"
  }

  dimension: location__name {
    type: string
    sql: ${TABLE}.location.name ;;
    group_label: "Location"
    group_item_label: "Name"
  }

  dimension: location__region_latitude {
    type: number
    sql: ${TABLE}.location.region_latitude ;;
    group_label: "Location"
    group_item_label: "Region Latitude"
  }

  dimension: location__region_longitude {
    type: number
    sql: ${TABLE}.location.region_longitude ;;
    group_label: "Location"
    group_item_label: "Region Longitude"
  }

  dimension: location__state {
    type: string
    sql: ${TABLE}.location.state ;;
    group_label: "Location"
    group_item_label: "State"
  }

  dimension: network__application_protocol {
    type: number
    sql: ${TABLE}.network.application_protocol ;;
    group_label: "Network"
    group_item_label: "Application Protocol"
  }

  dimension: network__application_protocol_version {
    type: string
    sql: ${TABLE}.network.application_protocol_version ;;
    group_label: "Network"
    group_item_label: "Application Protocol Version"
  }

  dimension: network__asn {
    type: string
    sql: ${TABLE}.network.asn ;;
    group_label: "Network"
    group_item_label: "Asn"
  }

  dimension: network__carrier_name {
    type: string
    sql: ${TABLE}.network.carrier_name ;;
    group_label: "Network"
    group_item_label: "Carrier Name"
  }

  dimension: network__community_id {
    type: string
    sql: ${TABLE}.network.community_id ;;
    group_label: "Network"
    group_item_label: "Community ID"
  }

  dimension: network__dhcp__chaddr {
    type: string
    sql: ${TABLE}.network.dhcp.chaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Chaddr"
  }

  dimension: network__dhcp__ciaddr {
    type: string
    sql: ${TABLE}.network.dhcp.ciaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Ciaddr"
  }

  dimension: network__dhcp__client_hostname {
    type: string
    sql: ${TABLE}.network.dhcp.client_hostname ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Hostname"
  }

  dimension: network__dhcp__client_identifier {
    type: string
    sql: ${TABLE}.network.dhcp.client_identifier ;;
    group_label: "Network Dhcp"
    group_item_label: "Client Identifier"
  }

  dimension: network__dhcp__file {
    type: string
    sql: ${TABLE}.network.dhcp.file ;;
    group_label: "Network Dhcp"
    group_item_label: "File"
  }

  dimension: network__dhcp__flags {
    type: number
    sql: ${TABLE}.network.dhcp.flags ;;
    group_label: "Network Dhcp"
    group_item_label: "Flags"
  }

  dimension: network__dhcp__giaddr {
    type: string
    sql: ${TABLE}.network.dhcp.giaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Giaddr"
  }

  dimension: network__dhcp__hlen {
    type: number
    sql: ${TABLE}.network.dhcp.hlen ;;
    group_label: "Network Dhcp"
    group_item_label: "Hlen"
  }

  dimension: network__dhcp__hops {
    type: number
    sql: ${TABLE}.network.dhcp.hops ;;
    group_label: "Network Dhcp"
    group_item_label: "Hops"
  }

  dimension: network__dhcp__htype {
    type: number
    sql: ${TABLE}.network.dhcp.htype ;;
    group_label: "Network Dhcp"
    group_item_label: "Htype"
  }

  dimension: network__dhcp__lease_time_seconds {
    type: number
    sql: ${TABLE}.network.dhcp.lease_time_seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Lease Time Seconds"
  }

  dimension: network__dhcp__opcode {
    type: number
    sql: ${TABLE}.network.dhcp.opcode ;;
    group_label: "Network Dhcp"
    group_item_label: "Opcode"
  }

  dimension: network__dhcp__options {
    hidden: yes
    sql: ${TABLE}.network.dhcp.options ;;
    group_label: "Network Dhcp"
    group_item_label: "Options"
  }

  dimension: network__dhcp__requested_address {
    type: string
    sql: ${TABLE}.network.dhcp.requested_address ;;
    group_label: "Network Dhcp"
    group_item_label: "Requested Address"
  }

  dimension: network__dhcp__seconds {
    type: number
    sql: ${TABLE}.network.dhcp.seconds ;;
    group_label: "Network Dhcp"
    group_item_label: "Seconds"
  }

  dimension: network__dhcp__siaddr {
    type: string
    sql: ${TABLE}.network.dhcp.siaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Siaddr"
  }

  dimension: network__dhcp__sname {
    type: string
    sql: ${TABLE}.network.dhcp.sname ;;
    group_label: "Network Dhcp"
    group_item_label: "Sname"
  }

  dimension: network__dhcp__transaction_id {
    type: number
    sql: ${TABLE}.network.dhcp.transaction_id ;;
    group_label: "Network Dhcp"
    group_item_label: "Transaction ID"
  }

  dimension: network__dhcp__type {
    type: number
    sql: ${TABLE}.network.dhcp.type ;;
    group_label: "Network Dhcp"
    group_item_label: "Type"
  }

  dimension: network__dhcp__yiaddr {
    type: string
    sql: ${TABLE}.network.dhcp.yiaddr ;;
    group_label: "Network Dhcp"
    group_item_label: "Yiaddr"
  }

  dimension: network__direction {
    type: number
    sql: ${TABLE}.network.direction ;;
    group_label: "Network"
    group_item_label: "Direction"
  }

  dimension: network__dns__additional {
    hidden: yes
    sql: ${TABLE}.network.dns.additional ;;
    group_label: "Network Dns"
    group_item_label: "Additional"
  }

  dimension: network__dns__answers {
    hidden: yes
    sql: ${TABLE}.network.dns.answers ;;
    group_label: "Network Dns"
    group_item_label: "Answers"
  }

  dimension: network__dns__authoritative {
    type: yesno
    sql: ${TABLE}.network.dns.authoritative ;;
    group_label: "Network Dns"
    group_item_label: "Authoritative"
  }

  dimension: network__dns__authority {
    hidden: yes
    sql: ${TABLE}.network.dns.authority ;;
    group_label: "Network Dns"
    group_item_label: "Authority"
  }

  dimension: network__dns__id {
    type: number
    sql: ${TABLE}.network.dns.id ;;
    group_label: "Network Dns"
    group_item_label: "ID"
  }

  dimension: network__dns__opcode {
    type: number
    sql: ${TABLE}.network.dns.opcode ;;
    group_label: "Network Dns"
    group_item_label: "Opcode"
  }

  dimension: network__dns__questions {
    hidden: yes
    sql: ${TABLE}.network.dns.questions ;;
    group_label: "Network Dns"
    group_item_label: "Questions"
  }

  dimension: network__dns__recursion_available {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_available ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Available"
  }

  dimension: network__dns__recursion_desired {
    type: yesno
    sql: ${TABLE}.network.dns.recursion_desired ;;
    group_label: "Network Dns"
    group_item_label: "Recursion Desired"
  }

  dimension: network__dns__response {
    type: yesno
    sql: ${TABLE}.network.dns.response ;;
    group_label: "Network Dns"
    group_item_label: "Response"
  }

  dimension: network__dns__response_code {
    type: number
    sql: ${TABLE}.network.dns.response_code ;;
    group_label: "Network Dns"
    group_item_label: "Response Code"
  }

  dimension: network__dns__truncated {
    type: yesno
    sql: ${TABLE}.network.dns.truncated ;;
    group_label: "Network Dns"
    group_item_label: "Truncated"
  }

  dimension: network__dns_domain {
    type: string
    sql: ${TABLE}.network.dns_domain ;;
    group_label: "Network"
    group_item_label: "Dns Domain"
  }

  dimension: network__email__bcc {
    hidden: yes
    sql: ${TABLE}.network.email.bcc ;;
    group_label: "Network Email"
    group_item_label: "Bcc"
  }

  dimension: network__email__bounce_address {
    type: string
    sql: ${TABLE}.network.email.bounce_address ;;
    group_label: "Network Email"
    group_item_label: "Bounce Address"
  }

  dimension: network__email__cc {
    hidden: yes
    sql: ${TABLE}.network.email.cc ;;
    group_label: "Network Email"
    group_item_label: "Cc"
  }

  dimension: network__email__from {
    type: string
    sql: ${TABLE}.network.email.`from` ;;
    group_label: "Network Email"
    group_item_label: "From"
  }

  dimension: network__email__mail_id {
    type: string
    sql: ${TABLE}.network.email.mail_id ;;
    group_label: "Network Email"
    group_item_label: "Mail ID"
  }

  dimension: network__email__reply_to {
    type: string
    sql: ${TABLE}.network.email.reply_to ;;
    group_label: "Network Email"
    group_item_label: "Reply To"
  }

  dimension: network__email__subject {
    hidden: yes
    sql: ${TABLE}.network.email.subject ;;
    group_label: "Network Email"
    group_item_label: "Subject"
  }

  dimension: network__email__to {
    hidden: yes
    sql: ${TABLE}.network.email.`to` ;;
    group_label: "Network Email"
    group_item_label: "To"
  }

  dimension: network__ftp__command {
    type: string
    sql: ${TABLE}.network.ftp.command ;;
    group_label: "Network Ftp"
    group_item_label: "Command"
  }

  dimension: network__http__method {
    type: string
    sql: ${TABLE}.network.http.method ;;
    group_label: "Network HTTP"
    group_item_label: "Method"
  }

  dimension: network__http__parsed_user_agent__annotation {
    hidden: yes
    sql: ${TABLE}.network.http.parsed_user_agent.annotation ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Annotation"
  }

  dimension: network__http__parsed_user_agent__browser {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser"
  }

  dimension: network__http__parsed_user_agent__browser_engine_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser_engine_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser Engine Version"
  }

  dimension: network__http__parsed_user_agent__browser_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.browser_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Browser Version"
  }

  dimension: network__http__parsed_user_agent__carrier {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.carrier ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Carrier"
  }

  dimension: network__http__parsed_user_agent__device {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.device ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Device"
  }

  dimension: network__http__parsed_user_agent__device_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.device_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Device Version"
  }

  dimension: network__http__parsed_user_agent__family {
    type: number
    sql: ${TABLE}.network.http.parsed_user_agent.family ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Family"
  }

  dimension: network__http__parsed_user_agent__google_toolbar_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.google_toolbar_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Google Toolbar Version"
  }

  dimension: network__http__parsed_user_agent__java_configuration {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_configuration ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration"
  }

  dimension: network__http__parsed_user_agent__java_configuration_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_configuration_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Configuration Version"
  }

  dimension: network__http__parsed_user_agent__java_profile {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_profile ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Profile"
  }

  dimension: network__http__parsed_user_agent__java_profile_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.java_profile_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Java Profile Version"
  }

  dimension: network__http__parsed_user_agent__locale {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.locale ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Locale"
  }

  dimension: network__http__parsed_user_agent__messaging {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.messaging ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Messaging"
  }

  dimension: network__http__parsed_user_agent__messaging_version {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.messaging_version ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Messaging Version"
  }

  dimension: network__http__parsed_user_agent__os {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.os ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "OS"
  }

  dimension: network__http__parsed_user_agent__os_variant {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.os_variant ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "OS Variant"
  }

  dimension: network__http__parsed_user_agent__platform {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.platform ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Platform"
  }

  dimension: network__http__parsed_user_agent__security {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.security ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Security"
  }

  dimension: network__http__parsed_user_agent__sub_family {
    type: string
    sql: ${TABLE}.network.http.parsed_user_agent.sub_family ;;
    group_label: "Network HTTP Parsed User Agent"
    group_item_label: "Sub Family"
  }

  dimension: network__http__referral_url {
    type: string
    sql: ${TABLE}.network.http.referral_url ;;
    group_label: "Network HTTP"
    group_item_label: "Referral URL"
  }

  dimension: network__http__response_code {
    type: number
    sql: ${TABLE}.network.http.response_code ;;
    group_label: "Network HTTP"
    group_item_label: "Response Code"
  }

  dimension: network__http__user_agent {
    type: string
    sql: ${TABLE}.network.http.user_agent ;;
    group_label: "Network HTTP"
    group_item_label: "User Agent"
  }

  dimension: network__ip_protocol {
    type: number
    sql: ${TABLE}.network.ip_protocol ;;
    group_label: "Network"
    group_item_label: "IP Protocol"
  }

  dimension: network__organization_name {
    type: string
    sql: ${TABLE}.network.organization_name ;;
    group_label: "Network"
    group_item_label: "Organization Name"
  }

  dimension: network__parent_session_id {
    type: string
    sql: ${TABLE}.network.parent_session_id ;;
    group_label: "Network"
    group_item_label: "Parent Session ID"
  }

  dimension: network__received_bytes {
    type: number
    sql: ${TABLE}.network.received_bytes ;;
    group_label: "Network"
    group_item_label: "Received Bytes"
  }

  dimension: network__received_packets {
    type: number
    sql: ${TABLE}.network.received_packets ;;
    group_label: "Network"
    group_item_label: "Received Packets"
  }

  dimension: network__sent_bytes {
    type: number
    sql: ${TABLE}.network.sent_bytes ;;
    group_label: "Network"
    group_item_label: "Sent Bytes"
  }

  dimension: network__sent_packets {
    type: number
    sql: ${TABLE}.network.sent_packets ;;
    group_label: "Network"
    group_item_label: "Sent Packets"
  }

  dimension: network__session_duration__nanos {
    type: number
    sql: ${TABLE}.network.session_duration.nanos ;;
    group_label: "Network Session Duration"
    group_item_label: "Nanos"
  }

  dimension: network__session_duration__seconds {
    type: number
    sql: ${TABLE}.network.session_duration.seconds ;;
    group_label: "Network Session Duration"
    group_item_label: "Seconds"
  }

  dimension: network__session_id {
    type: string
    sql: ${TABLE}.network.session_id ;;
    group_label: "Network"
    group_item_label: "Session ID"
  }

  dimension: network__smtp__helo {
    type: string
    sql: ${TABLE}.network.smtp.helo ;;
    group_label: "Network Smtp"
    group_item_label: "Helo"
  }

  dimension: network__smtp__is_tls {
    type: yesno
    sql: ${TABLE}.network.smtp.is_tls ;;
    group_label: "Network Smtp"
    group_item_label: "Is Tls"
  }

  dimension: network__smtp__is_webmail {
    type: yesno
    sql: ${TABLE}.network.smtp.is_webmail ;;
    group_label: "Network Smtp"
    group_item_label: "Is Webmail"
  }

  dimension: network__smtp__mail_from {
    type: string
    sql: ${TABLE}.network.smtp.mail_from ;;
    group_label: "Network Smtp"
    group_item_label: "Mail From"
  }

  dimension: network__smtp__message_path {
    type: string
    sql: ${TABLE}.network.smtp.message_path ;;
    group_label: "Network Smtp"
    group_item_label: "Message Path"
  }

  dimension: network__smtp__rcpt_to {
    hidden: yes
    sql: ${TABLE}.network.smtp.rcpt_to ;;
    group_label: "Network Smtp"
    group_item_label: "Rcpt To"
  }

  dimension: network__smtp__server_response {
    hidden: yes
    sql: ${TABLE}.network.smtp.server_response ;;
    group_label: "Network Smtp"
    group_item_label: "Server Response"
  }

  dimension: network__tls__cipher {
    type: string
    sql: ${TABLE}.network.tls.cipher ;;
    group_label: "Network Tls"
    group_item_label: "Cipher"
  }

  dimension: network__tls__client__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.issuer ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__client__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.md5 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__client__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.nanos ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_after.seconds ;;
    group_label: "Network Tls Client Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.nanos ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__client__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.client.certificate.not_before.seconds ;;
    group_label: "Network Tls Client Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__client__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.serial ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__client__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha1 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__client__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.sha256 ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__client__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.subject ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__client__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.client.certificate.version ;;
    group_label: "Network Tls Client Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__client__ja3 {
    type: string
    sql: ${TABLE}.network.tls.client.ja3 ;;
    group_label: "Network Tls Client"
    group_item_label: "Ja3"
  }

  dimension: network__tls__client__server_name {
    type: string
    sql: ${TABLE}.network.tls.client.server_name ;;
    group_label: "Network Tls Client"
    group_item_label: "Server Name"
  }

  dimension: network__tls__client__supported_ciphers {
    hidden: yes
    sql: ${TABLE}.network.tls.client.supported_ciphers ;;
    group_label: "Network Tls Client"
    group_item_label: "Supported Ciphers"
  }

  dimension: network__tls__curve {
    type: string
    sql: ${TABLE}.network.tls.curve ;;
    group_label: "Network Tls"
    group_item_label: "Curve"
  }

  dimension: network__tls__established {
    type: yesno
    sql: ${TABLE}.network.tls.established ;;
    group_label: "Network Tls"
    group_item_label: "Established"
  }

  dimension: network__tls__next_protocol {
    type: string
    sql: ${TABLE}.network.tls.next_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Next Protocol"
  }

  dimension: network__tls__resumed {
    type: yesno
    sql: ${TABLE}.network.tls.resumed ;;
    group_label: "Network Tls"
    group_item_label: "Resumed"
  }

  dimension: network__tls__server__certificate__issuer {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.issuer ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Issuer"
  }

  dimension: network__tls__server__certificate__md5 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.md5 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Md5"
  }

  dimension: network__tls__server__certificate__not_after__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.nanos ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_after__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_after.seconds ;;
    group_label: "Network Tls Server Certificate Not After"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__not_before__nanos {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.nanos ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Nanos"
  }

  dimension: network__tls__server__certificate__not_before__seconds {
    type: number
    sql: ${TABLE}.network.tls.server.certificate.not_before.seconds ;;
    group_label: "Network Tls Server Certificate Not Before"
    group_item_label: "Seconds"
  }

  dimension: network__tls__server__certificate__serial {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.serial ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Serial"
  }

  dimension: network__tls__server__certificate__sha1 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha1 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha1"
  }

  dimension: network__tls__server__certificate__sha256 {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.sha256 ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Sha256"
  }

  dimension: network__tls__server__certificate__subject {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.subject ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Subject"
  }

  dimension: network__tls__server__certificate__version {
    type: string
    sql: ${TABLE}.network.tls.server.certificate.version ;;
    group_label: "Network Tls Server Certificate"
    group_item_label: "Version"
  }

  dimension: network__tls__server__ja3s {
    type: string
    sql: ${TABLE}.network.tls.server.ja3s ;;
    group_label: "Network Tls Server"
    group_item_label: "Ja3s"
  }

  dimension: network__tls__version {
    type: string
    sql: ${TABLE}.network.tls.version ;;
    group_label: "Network Tls"
    group_item_label: "Version"
  }

  dimension: network__tls__version_protocol {
    type: string
    sql: ${TABLE}.network.tls.version_protocol ;;
    group_label: "Network Tls"
    group_item_label: "Version Protocol"
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }
}

view: entity_graph__metadata__threat__about__process__file__names {
  dimension: entity_graph__metadata__threat__about__process__file__names {
    type: string
    sql: entity_graph__metadata__threat__about__process__file__names ;;
  }
}

view: entity_graph__metadata__threat__about__domain__name_server {
  dimension: entity_graph__metadata__threat__about__domain__name_server {
    type: string
    sql: entity_graph__metadata__threat__about__domain__name_server ;;
  }
}

view: entity_graph__metadata__threat__about__asset__hardware {
  dimension: cpu_clock_speed {
    type: number
    sql: ${TABLE}.cpu_clock_speed ;;
  }

  dimension: cpu_max_clock_speed {
    type: number
    sql: ${TABLE}.cpu_max_clock_speed ;;
  }

  dimension: cpu_model {
    type: string
    sql: ${TABLE}.cpu_model ;;
  }

  dimension: cpu_number_cores {
    type: number
    sql: ${TABLE}.cpu_number_cores ;;
  }

  dimension: cpu_platform {
    type: string
    sql: ${TABLE}.cpu_platform ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: ram {
    type: number
    sql: ${TABLE}.ram ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}.serial_number ;;
  }
}

view: entity_graph__metadata__threat__about__user__phone_numbers {
  dimension: entity_graph__metadata__threat__about__user__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__user__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__group__email_addresses {
  dimension: entity_graph__relations__entity__group__email_addresses {
    type: string
    sql: entity_graph__relations__entity__group__email_addresses ;;
  }
}

view: entity_graph__relations__entity__domain__admin__department {
  dimension: entity_graph__relations__entity__domain__admin__department {
    type: string
    sql: entity_graph__relations__entity__domain__admin__department ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__email__bcc {
  dimension: entity_graph__entity__ip_geo_artifact__network__email__bcc {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__email__bcc ;;
  }
}

view: entity_graph__entity__process__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__entity__domain__admin__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__domain__admin__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__admin__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__domain__registrant__email_addresses {
  dimension: entity_graph__entity__domain__registrant__email_addresses {
    type: string
    sql: entity_graph__entity__domain__registrant__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__asset__software {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: permissions {
    hidden: yes
    sql: ${TABLE}.permissions ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__email__to {
  dimension: entity_graph__entity__ip_geo_artifact__network__email__to {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__email__to ;;
  }
}

view: entity_graph__entity__artifact__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__artifact__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: entity_graph__entity__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__file__pe_file__signature_info__signer {
  dimension: entity_graph__entity__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__entity__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__entity__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__user__email_addresses {
  dimension: entity_graph__metadata__threat__about__user__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__user__email_addresses ;;
  }
}

view: entity_graph__relations__entity__artifact__network__email__cc {
  dimension: entity_graph__relations__entity__artifact__network__email__cc {
    type: string
    sql: entity_graph__relations__entity__artifact__network__email__cc ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__relations__entity__domain__tech__phone_numbers {
  dimension: entity_graph__relations__entity__domain__tech__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__domain__tech__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__domain__billing__department {
  dimension: entity_graph__relations__entity__domain__billing__department {
    type: string
    sql: entity_graph__relations__entity__domain__billing__department ;;
  }
}

view: entity_graph__relations__entity__domain__zone__phone_numbers {
  dimension: entity_graph__relations__entity__domain__zone__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__domain__zone__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__artifact__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__artifact__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__user_management_chain__phone_numbers {
  dimension: entity_graph__entity__user_management_chain__phone_numbers {
    type: string
    sql: entity_graph__entity__user_management_chain__phone_numbers ;;
  }
}

view: entity_graph__entity__domain__billing__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__domain__billing__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__billing__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__domain__registrant__group_identifiers {
  dimension: entity_graph__entity__domain__registrant__group_identifiers {
    type: string
    sql: entity_graph__entity__domain__registrant__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__resource_ancestors {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}.parent ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: resource_subtype {
    type: string
    sql: ${TABLE}.resource_subtype ;;
  }

  dimension: resource_type {
    type: number
    sql: ${TABLE}.resource_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors {
  dimension: access_mask {
    type: number
    sql: ${TABLE}.access_mask ;;
  }

  dimension: command_line {
    type: string
    sql: ${TABLE}.command_line ;;
  }

  dimension: command_line_history {
    hidden: yes
    sql: ${TABLE}.command_line_history ;;
  }

  dimension: file__ahash {
    type: string
    sql: ${TABLE}.file.ahash ;;
    group_label: "File"
    group_item_label: "Ahash"
  }

  dimension: file__authentihash {
    type: string
    sql: ${TABLE}.file.authentihash ;;
    group_label: "File"
    group_item_label: "Authentihash"
  }

  dimension: file__capabilities_tags {
    hidden: yes
    sql: ${TABLE}.file.capabilities_tags ;;
    group_label: "File"
    group_item_label: "Capabilities Tags"
  }

  dimension: file__file_metadata__pe__import_hash {
    type: string
    sql: ${TABLE}.file.file_metadata.pe.import_hash ;;
    group_label: "File File Metadata Pe"
    group_item_label: "Import Hash"
  }

  dimension: file__file_type {
    type: number
    sql: ${TABLE}.file.file_type ;;
    group_label: "File"
    group_item_label: "File Type"
  }

  dimension: file__first_seen_time__nanos {
    type: number
    sql: ${TABLE}.file.first_seen_time.nanos ;;
    group_label: "File First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: file__first_seen_time__seconds {
    type: number
    sql: ${TABLE}.file.first_seen_time.seconds ;;
    group_label: "File First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: file__full_path {
    type: string
    sql: ${TABLE}.file.full_path ;;
    group_label: "File"
    group_item_label: "Full Path"
  }

  dimension: file__last_modification_time__nanos {
    type: number
    sql: ${TABLE}.file.last_modification_time.nanos ;;
    group_label: "File Last Modification Time"
    group_item_label: "Nanos"
  }

  dimension: file__last_modification_time__seconds {
    type: number
    sql: ${TABLE}.file.last_modification_time.seconds ;;
    group_label: "File Last Modification Time"
    group_item_label: "Seconds"
  }

  dimension: file__last_seen_time__nanos {
    type: number
    sql: ${TABLE}.file.last_seen_time.nanos ;;
    group_label: "File Last Seen Time"
    group_item_label: "Nanos"
  }

  dimension: file__last_seen_time__seconds {
    type: number
    sql: ${TABLE}.file.last_seen_time.seconds ;;
    group_label: "File Last Seen Time"
    group_item_label: "Seconds"
  }

  dimension: file__md5 {
    type: string
    sql: ${TABLE}.file.md5 ;;
    group_label: "File"
    group_item_label: "Md5"
  }

  dimension: file__mime_type {
    type: string
    sql: ${TABLE}.file.mime_type ;;
    group_label: "File"
    group_item_label: "Mime Type"
  }

  dimension: file__names {
    hidden: yes
    sql: ${TABLE}.file.names ;;
    group_label: "File"
    group_item_label: "Names"
  }

  dimension: file__pe_file__compilation_exiftool_time__nanos {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_exiftool_time.nanos ;;
    group_label: "File Pe File Compilation Exiftool Time"
    group_item_label: "Nanos"
  }

  dimension: file__pe_file__compilation_exiftool_time__seconds {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_exiftool_time.seconds ;;
    group_label: "File Pe File Compilation Exiftool Time"
    group_item_label: "Seconds"
  }

  dimension: file__pe_file__compilation_time__nanos {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_time.nanos ;;
    group_label: "File Pe File Compilation Time"
    group_item_label: "Nanos"
  }

  dimension: file__pe_file__compilation_time__seconds {
    type: number
    sql: ${TABLE}.file.pe_file.compilation_time.seconds ;;
    group_label: "File Pe File Compilation Time"
    group_item_label: "Seconds"
  }

  dimension: file__pe_file__entry_point {
    type: number
    sql: ${TABLE}.file.pe_file.entry_point ;;
    group_label: "File Pe File"
    group_item_label: "Entry Point"
  }

  dimension: file__pe_file__entry_point_exiftool {
    type: number
    sql: ${TABLE}.file.pe_file.entry_point_exiftool ;;
    group_label: "File Pe File"
    group_item_label: "Entry Point Exiftool"
  }

  dimension: file__pe_file__imphash {
    type: string
    sql: ${TABLE}.file.pe_file.imphash ;;
    group_label: "File Pe File"
    group_item_label: "Imphash"
  }

  dimension: file__pe_file__imports {
    hidden: yes
    sql: ${TABLE}.file.pe_file.imports ;;
    group_label: "File Pe File"
    group_item_label: "Imports"
  }

  dimension: file__pe_file__resource {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resource ;;
    group_label: "File Pe File"
    group_item_label: "Resource"
  }

  dimension: file__pe_file__resources_language_count {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_language_count ;;
    group_label: "File Pe File"
    group_item_label: "Resources Language Count"
  }

  dimension: file__pe_file__resources_language_count_str {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_language_count_str ;;
    group_label: "File Pe File"
    group_item_label: "Resources Language Count Str"
  }

  dimension: file__pe_file__resources_type_count {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_type_count ;;
    group_label: "File Pe File"
    group_item_label: "Resources Type Count"
  }

  dimension: file__pe_file__resources_type_count_str {
    hidden: yes
    sql: ${TABLE}.file.pe_file.resources_type_count_str ;;
    group_label: "File Pe File"
    group_item_label: "Resources Type Count Str"
  }

  dimension: file__pe_file__section {
    hidden: yes
    sql: ${TABLE}.file.pe_file.section ;;
    group_label: "File Pe File"
    group_item_label: "Section"
  }

  dimension: file__pe_file__signature_info__signer {
    hidden: yes
    sql: ${TABLE}.file.pe_file.signature_info.signer ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Signer"
  }

  dimension: file__pe_file__signature_info__signers {
    hidden: yes
    sql: ${TABLE}.file.pe_file.signature_info.signers ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Signers"
  }

  dimension: file__pe_file__signature_info__verification_message {
    type: string
    sql: ${TABLE}.file.pe_file.signature_info.verification_message ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Verification Message"
  }

  dimension: file__pe_file__signature_info__verified {
    type: yesno
    sql: ${TABLE}.file.pe_file.signature_info.verified ;;
    group_label: "File Pe File Signature Info"
    group_item_label: "Verified"
  }

  dimension: file__prevalence__day_count {
    type: number
    sql: ${TABLE}.file.prevalence.day_count ;;
    group_label: "File Prevalence"
    group_item_label: "Day Count"
  }

  dimension: file__prevalence__day_max {
    type: number
    sql: ${TABLE}.file.prevalence.day_max ;;
    group_label: "File Prevalence"
    group_item_label: "Day Max"
  }

  dimension: file__prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.file.prevalence.day_max_sub_domains ;;
    group_label: "File Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: file__prevalence__rolling_max {
    type: number
    sql: ${TABLE}.file.prevalence.rolling_max ;;
    group_label: "File Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: file__prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.file.prevalence.rolling_max_sub_domains ;;
    group_label: "File Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: file__sha1 {
    type: string
    sql: ${TABLE}.file.sha1 ;;
    group_label: "File"
    group_item_label: "Sha1"
  }

  dimension: file__sha256 {
    type: string
    sql: ${TABLE}.file.sha256 ;;
    group_label: "File"
    group_item_label: "Sha256"
  }

  dimension: file__size {
    type: number
    sql: ${TABLE}.file.size ;;
    group_label: "File"
    group_item_label: "Size"
  }

  dimension: file__ssdeep {
    type: string
    sql: ${TABLE}.file.ssdeep ;;
    group_label: "File"
    group_item_label: "Ssdeep"
  }

  dimension: file__vhash {
    type: string
    sql: ${TABLE}.file.vhash ;;
    group_label: "File"
    group_item_label: "Vhash"
  }

  dimension: parent_pid {
    type: string
    sql: ${TABLE}.parent_pid ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }

  dimension: product_specific_parent_process_id {
    type: string
    sql: ${TABLE}.product_specific_parent_process_id ;;
  }

  dimension: product_specific_process_id {
    type: string
    sql: ${TABLE}.product_specific_process_id ;;
  }
}

view: entity_graph__relations__entity__artifact__network__email__bcc {
  dimension: entity_graph__relations__entity__artifact__network__email__bcc {
    type: string
    sql: entity_graph__relations__entity__artifact__network__email__bcc ;;
  }
}

view: entity_graph__relations__entity__domain__admin__phone_numbers {
  dimension: entity_graph__relations__entity__domain__admin__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__domain__admin__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
  }

  dimension: cvss_base_score {
    type: number
    sql: ${TABLE}.cvss_base_score ;;
  }

  dimension: cvss_vector {
    type: string
    sql: ${TABLE}.cvss_vector ;;
  }

  dimension: cvss_version {
    type: string
    sql: ${TABLE}.cvss_version ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: entity_graph__relations__entity__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__smtp__rcpt_to {
  dimension: entity_graph__entity__ip_geo_artifact__network__smtp__rcpt_to {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__smtp__rcpt_to ;;
  }
}

view: entity_graph__entity__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__process__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__metadata__threat__about__file__capabilities_tags {
  dimension: entity_graph__metadata__threat__about__file__capabilities_tags {
    type: string
    sql: entity_graph__metadata__threat__about__file__capabilities_tags ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__department {
  dimension: entity_graph__metadata__threat__about__domain__tech__department {
    type: string
    sql: entity_graph__metadata__threat__about__domain__tech__department ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__department {
  dimension: entity_graph__metadata__threat__about__domain__zone__department {
    type: string
    sql: entity_graph__metadata__threat__about__domain__zone__department ;;
  }
}

view: entity_graph__metadata__threat__about__investigation__comments {
  dimension: entity_graph__metadata__threat__about__investigation__comments {
    type: string
    sql: entity_graph__metadata__threat__about__investigation__comments ;;
  }
}

view: entity_graph__metadata__threat__about__user__group_identifiers {
  dimension: entity_graph__metadata__threat__about__user__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__user__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__artifact__network__email__to {
  dimension: entity_graph__relations__entity__artifact__network__email__to {
    type: string
    sql: entity_graph__relations__entity__artifact__network__email__to ;;
  }
}

view: entity_graph__relations__entity__user_management_chain {
  dimension: account_type {
    type: number
    sql: ${TABLE}.account_type ;;
  }

  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_seen_time__nanos {
    type: number
    sql: ${TABLE}.first_seen_time.nanos ;;
    group_label: "First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: first_seen_time__seconds {
    type: number
    sql: ${TABLE}.first_seen_time.seconds ;;
    group_label: "First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: group_identifiers {
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__desk_name {
    type: string
    sql: ${TABLE}.office_address.desk_name ;;
    group_label: "Office Address"
    group_item_label: "Desk Name"
  }

  dimension: office_address__floor_name {
    type: string
    sql: ${TABLE}.office_address.floor_name ;;
    group_label: "Office Address"
    group_item_label: "Floor Name"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__region_latitude {
    type: number
    sql: ${TABLE}.office_address.region_latitude ;;
    group_label: "Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: office_address__region_longitude {
    type: number
    sql: ${TABLE}.office_address.region_longitude ;;
    group_label: "Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__desk_name {
    type: string
    sql: ${TABLE}.personal_address.desk_name ;;
    group_label: "Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: personal_address__floor_name {
    type: string
    sql: ${TABLE}.personal_address.floor_name ;;
    group_label: "Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__region_latitude {
    type: number
    sql: ${TABLE}.personal_address.region_latitude ;;
    group_label: "Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: personal_address__region_longitude {
    type: number
    sql: ${TABLE}.personal_address.region_longitude ;;
    group_label: "Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: entity_graph__relations__entity__domain__tech__email_addresses {
  dimension: entity_graph__relations__entity__domain__tech__email_addresses {
    type: string
    sql: entity_graph__relations__entity__domain__tech__email_addresses ;;
  }
}

view: entity_graph__relations__entity__domain__zone__email_addresses {
  dimension: entity_graph__relations__entity__domain__zone__email_addresses {
    type: string
    sql: entity_graph__relations__entity__domain__zone__email_addresses ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__email__subject {
  dimension: entity_graph__entity__ip_geo_artifact__network__email__subject {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__email__subject ;;
  }
}

view: entity_graph__entity__artifact__network__smtp__server_response {
  dimension: entity_graph__entity__artifact__network__smtp__server_response {
    type: string
    sql: entity_graph__entity__artifact__network__smtp__server_response ;;
  }
}

view: entity_graph__entity__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__entity__user_management_chain__email_addresses {
  dimension: entity_graph__entity__user_management_chain__email_addresses {
    type: string
    sql: entity_graph__entity__user_management_chain__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__group__email_addresses {
  dimension: entity_graph__metadata__threat__about__group__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__group__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__department {
  dimension: entity_graph__metadata__threat__about__domain__admin__department {
    type: string
    sql: entity_graph__metadata__threat__about__domain__admin__department ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__relations__entity__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process__command_line_history {
  dimension: entity_graph__relations__entity__process__command_line_history {
    type: string
    sql: entity_graph__relations__entity__process__command_line_history ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__names {
  dimension: entity_graph__relations__entity__process_ancestors__file__names {
    type: string
    sql: entity_graph__relations__entity__process_ancestors__file__names ;;
  }
}

view: entity_graph__relations__entity__domain__admin__email_addresses {
  dimension: entity_graph__relations__entity__domain__admin__email_addresses {
    type: string
    sql: entity_graph__relations__entity__domain__admin__email_addresses ;;
  }
}

view: entity_graph__relations__entity__domain__billing__phone_numbers {
  dimension: entity_graph__relations__entity__domain__billing__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__domain__billing__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__department {
  dimension: entity_graph__relations__entity__domain__registrant__department {
    type: string
    sql: entity_graph__relations__entity__domain__registrant__department ;;
  }
}

view: entity_graph__entity__process__file__pe_file__imports__functions {
  dimension: entity_graph__entity__process__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__entity__process__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__entity__process_ancestors__command_line_history {
  dimension: entity_graph__entity__process_ancestors__command_line_history {
    type: string
    sql: entity_graph__entity__process_ancestors__command_line_history ;;
  }
}

view: entity_graph__entity__domain__tech__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__zone__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__registrant__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__domain__registrant__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__domain__registrant__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__artifact__network__smtp__rcpt_to {
  dimension: entity_graph__relations__entity__artifact__network__smtp__rcpt_to {
    type: string
    sql: entity_graph__relations__entity__artifact__network__smtp__rcpt_to ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__relations__entity__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__domain__tech__group_identifiers {
  dimension: entity_graph__relations__entity__domain__tech__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__domain__tech__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__domain__zone__group_identifiers {
  dimension: entity_graph__relations__entity__domain__zone__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__domain__zone__group_identifiers ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__resource_ancestors__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__resource_ancestors__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__user_management_chain__group_identifiers {
  dimension: entity_graph__entity__user_management_chain__group_identifiers {
    type: string
    sql: entity_graph__entity__user_management_chain__group_identifiers ;;
  }
}

view: entity_graph__entity__domain__admin__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__email__cc {
  dimension: entity_graph__metadata__threat__about__artifact__network__email__cc {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__email__cc ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__phone_numbers {
  dimension: entity_graph__metadata__threat__about__domain__tech__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__tech__phone_numbers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__department {
  dimension: entity_graph__metadata__threat__about__domain__billing__department {
    type: string
    sql: entity_graph__metadata__threat__about__domain__billing__department ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__phone_numbers {
  dimension: entity_graph__metadata__threat__about__domain__zone__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__zone__phone_numbers ;;
  }
}

view: entity_graph__metadata__threat__about__user__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__user__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__user__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__artifact__network__email__subject {
  dimension: entity_graph__relations__entity__artifact__network__email__subject {
    type: string
    sql: entity_graph__relations__entity__artifact__network__email__subject ;;
  }
}

view: entity_graph__relations__entity__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__imports__functions {
  dimension: entity_graph__relations__entity__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__relations__entity__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__relations__entity__process__file__capabilities_tags {
  dimension: entity_graph__relations__entity__process__file__capabilities_tags {
    type: string
    sql: entity_graph__relations__entity__process__file__capabilities_tags ;;
  }
}

view: entity_graph__relations__entity__domain__admin__group_identifiers {
  dimension: entity_graph__relations__entity__domain__admin__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__domain__admin__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__domain__billing__email_addresses {
  dimension: entity_graph__relations__entity__domain__billing__email_addresses {
    type: string
    sql: entity_graph__relations__entity__domain__billing__email_addresses ;;
  }
}

view: entity_graph__entity__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__entity__process_ancestors__file__capabilities_tags {
  dimension: entity_graph__entity__process_ancestors__file__capabilities_tags {
    type: string
    sql: entity_graph__entity__process_ancestors__file__capabilities_tags ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__email__bcc {
  dimension: entity_graph__metadata__threat__about__artifact__network__email__bcc {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__email__bcc ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__phone_numbers {
  dimension: entity_graph__metadata__threat__about__domain__admin__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__admin__phone_numbers ;;
  }
}

view: entity_graph__metadata__threat__about__asset__vulnerabilities {
  dimension: cve_description {
    type: string
    sql: ${TABLE}.cve_description ;;
  }

  dimension: cve_id {
    type: string
    sql: ${TABLE}.cve_id ;;
  }

  dimension: cvss_base_score {
    type: number
    sql: ${TABLE}.cvss_base_score ;;
  }

  dimension: cvss_vector {
    type: string
    sql: ${TABLE}.cvss_vector ;;
  }

  dimension: cvss_version {
    type: string
    sql: ${TABLE}.cvss_version ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: first_found__nanos {
    type: number
    sql: ${TABLE}.first_found.nanos ;;
    group_label: "First Found"
    group_item_label: "Nanos"
  }

  dimension: first_found__seconds {
    type: number
    sql: ${TABLE}.first_found.seconds ;;
    group_label: "First Found"
    group_item_label: "Seconds"
  }

  dimension: last_found__nanos {
    type: number
    sql: ${TABLE}.last_found.nanos ;;
    group_label: "Last Found"
    group_item_label: "Nanos"
  }

  dimension: last_found__seconds {
    type: number
    sql: ${TABLE}.last_found.seconds ;;
    group_label: "Last Found"
    group_item_label: "Seconds"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scan_end_time__nanos {
    type: number
    sql: ${TABLE}.scan_end_time.nanos ;;
    group_label: "Scan End Time"
    group_item_label: "Nanos"
  }

  dimension: scan_end_time__seconds {
    type: number
    sql: ${TABLE}.scan_end_time.seconds ;;
    group_label: "Scan End Time"
    group_item_label: "Seconds"
  }

  dimension: scan_start_time__nanos {
    type: number
    sql: ${TABLE}.scan_start_time.nanos ;;
    group_label: "Scan Start Time"
    group_item_label: "Nanos"
  }

  dimension: scan_start_time__seconds {
    type: number
    sql: ${TABLE}.scan_start_time.seconds ;;
    group_label: "Scan Start Time"
    group_item_label: "Seconds"
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.severity ;;
  }

  dimension: severity_details {
    type: string
    sql: ${TABLE}.severity_details ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: vendor_knowledge_base_article_id {
    type: string
    sql: ${TABLE}.vendor_knowledge_base_article_id ;;
  }

  dimension: vendor_vulnerability_id {
    type: string
    sql: ${TABLE}.vendor_vulnerability_id ;;
  }
}

view: entity_graph__metadata__threat__about__asset__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__asset__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__phone_numbers {
  dimension: entity_graph__relations__entity__domain__registrant__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__domain__registrant__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__asset__software__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: entity_graph__entity__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__domain__billing__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__email__to {
  dimension: entity_graph__metadata__threat__about__artifact__network__email__to {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__email__to ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain {
  dimension: account_type {
    type: number
    sql: ${TABLE}.account_type ;;
  }

  dimension: attribute__cloud__availability_zone {
    type: string
    sql: ${TABLE}.attribute.cloud.availability_zone ;;
    group_label: "Attribute Cloud"
    group_item_label: "Availability Zone"
  }

  dimension: attribute__cloud__environment {
    type: number
    sql: ${TABLE}.attribute.cloud.environment ;;
    group_label: "Attribute Cloud"
    group_item_label: "Environment"
  }

  dimension: attribute__cloud__project__id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__project__name {
    type: string
    sql: ${TABLE}.attribute.cloud.project.name ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__project__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.project.parent ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__project__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.project.product_object_id ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__project__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.project.resource_subtype ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__project__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.project.resource_type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__project__type {
    type: string
    sql: ${TABLE}.attribute.cloud.project.type ;;
    group_label: "Attribute Cloud Project"
    group_item_label: "Type"
  }

  dimension: attribute__cloud__vpc__id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "ID"
  }

  dimension: attribute__cloud__vpc__name {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.name ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Name"
  }

  dimension: attribute__cloud__vpc__parent {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.parent ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Parent"
  }

  dimension: attribute__cloud__vpc__product_object_id {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.product_object_id ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Product Object ID"
  }

  dimension: attribute__cloud__vpc__resource_subtype {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.resource_subtype ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Subtype"
  }

  dimension: attribute__cloud__vpc__resource_type {
    type: number
    sql: ${TABLE}.attribute.cloud.vpc.resource_type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Resource Type"
  }

  dimension: attribute__cloud__vpc__type {
    type: string
    sql: ${TABLE}.attribute.cloud.vpc.type ;;
    group_label: "Attribute Cloud Vpc"
    group_item_label: "Type"
  }

  dimension: attribute__creation_time__nanos {
    type: number
    sql: ${TABLE}.attribute.creation_time.nanos ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__creation_time__seconds {
    type: number
    sql: ${TABLE}.attribute.creation_time.seconds ;;
    group_label: "Attribute Creation Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__labels {
    hidden: yes
    sql: ${TABLE}.attribute.labels ;;
    group_label: "Attribute"
    group_item_label: "Labels"
  }

  dimension: attribute__last_update_time__nanos {
    type: number
    sql: ${TABLE}.attribute.last_update_time.nanos ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Nanos"
  }

  dimension: attribute__last_update_time__seconds {
    type: number
    sql: ${TABLE}.attribute.last_update_time.seconds ;;
    group_label: "Attribute Last Update Time"
    group_item_label: "Seconds"
  }

  dimension: attribute__permissions {
    hidden: yes
    sql: ${TABLE}.attribute.permissions ;;
    group_label: "Attribute"
    group_item_label: "Permissions"
  }

  dimension: attribute__roles {
    hidden: yes
    sql: ${TABLE}.attribute.roles ;;
    group_label: "Attribute"
    group_item_label: "Roles"
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: department {
    hidden: yes
    sql: ${TABLE}.department ;;
  }

  dimension: email_addresses {
    hidden: yes
    sql: ${TABLE}.email_addresses ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_seen_time__nanos {
    type: number
    sql: ${TABLE}.first_seen_time.nanos ;;
    group_label: "First Seen Time"
    group_item_label: "Nanos"
  }

  dimension: first_seen_time__seconds {
    type: number
    sql: ${TABLE}.first_seen_time.seconds ;;
    group_label: "First Seen Time"
    group_item_label: "Seconds"
  }

  dimension: group_identifiers {
    hidden: yes
    sql: ${TABLE}.group_identifiers ;;
  }

  dimension: groupid {
    type: string
    sql: ${TABLE}.groupid ;;
  }

  dimension: hire_date__nanos {
    type: number
    sql: ${TABLE}.hire_date.nanos ;;
    group_label: "Hire Date"
    group_item_label: "Nanos"
  }

  dimension: hire_date__seconds {
    type: number
    sql: ${TABLE}.hire_date.seconds ;;
    group_label: "Hire Date"
    group_item_label: "Seconds"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: office_address__city {
    type: string
    sql: ${TABLE}.office_address.city ;;
    group_label: "Office Address"
    group_item_label: "City"
  }

  dimension: office_address__country_or_region {
    type: string
    sql: ${TABLE}.office_address.country_or_region ;;
    group_label: "Office Address"
    group_item_label: "Country or Region"
  }

  dimension: office_address__desk_name {
    type: string
    sql: ${TABLE}.office_address.desk_name ;;
    group_label: "Office Address"
    group_item_label: "Desk Name"
  }

  dimension: office_address__floor_name {
    type: string
    sql: ${TABLE}.office_address.floor_name ;;
    group_label: "Office Address"
    group_item_label: "Floor Name"
  }

  dimension: office_address__name {
    type: string
    sql: ${TABLE}.office_address.name ;;
    group_label: "Office Address"
    group_item_label: "Name"
  }

  dimension: office_address__region_latitude {
    type: number
    sql: ${TABLE}.office_address.region_latitude ;;
    group_label: "Office Address"
    group_item_label: "Region Latitude"
  }

  dimension: office_address__region_longitude {
    type: number
    sql: ${TABLE}.office_address.region_longitude ;;
    group_label: "Office Address"
    group_item_label: "Region Longitude"
  }

  dimension: office_address__state {
    type: string
    sql: ${TABLE}.office_address.state ;;
    group_label: "Office Address"
    group_item_label: "State"
  }

  dimension: personal_address__city {
    type: string
    sql: ${TABLE}.personal_address.city ;;
    group_label: "Personal Address"
    group_item_label: "City"
  }

  dimension: personal_address__country_or_region {
    type: string
    sql: ${TABLE}.personal_address.country_or_region ;;
    group_label: "Personal Address"
    group_item_label: "Country or Region"
  }

  dimension: personal_address__desk_name {
    type: string
    sql: ${TABLE}.personal_address.desk_name ;;
    group_label: "Personal Address"
    group_item_label: "Desk Name"
  }

  dimension: personal_address__floor_name {
    type: string
    sql: ${TABLE}.personal_address.floor_name ;;
    group_label: "Personal Address"
    group_item_label: "Floor Name"
  }

  dimension: personal_address__name {
    type: string
    sql: ${TABLE}.personal_address.name ;;
    group_label: "Personal Address"
    group_item_label: "Name"
  }

  dimension: personal_address__region_latitude {
    type: number
    sql: ${TABLE}.personal_address.region_latitude ;;
    group_label: "Personal Address"
    group_item_label: "Region Latitude"
  }

  dimension: personal_address__region_longitude {
    type: number
    sql: ${TABLE}.personal_address.region_longitude ;;
    group_label: "Personal Address"
    group_item_label: "Region Longitude"
  }

  dimension: personal_address__state {
    type: string
    sql: ${TABLE}.personal_address.state ;;
    group_label: "Personal Address"
    group_item_label: "State"
  }

  dimension: phone_numbers {
    hidden: yes
    sql: ${TABLE}.phone_numbers ;;
  }

  dimension: product_object_id {
    type: string
    sql: ${TABLE}.product_object_id ;;
  }

  dimension: role_description {
    type: string
    sql: ${TABLE}.role_description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }

  dimension: termination_date__nanos {
    type: number
    sql: ${TABLE}.termination_date.nanos ;;
    group_label: "Termination Date"
    group_item_label: "Nanos"
  }

  dimension: termination_date__seconds {
    type: number
    sql: ${TABLE}.termination_date.seconds ;;
    group_label: "Termination Date"
    group_item_label: "Seconds"
  }

  dimension: time_off {
    hidden: yes
    sql: ${TABLE}.time_off ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_authentication_status {
    type: number
    sql: ${TABLE}.user_authentication_status ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  dimension: user_role {
    type: number
    sql: ${TABLE}.user_role ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  dimension: windows_sid {
    type: string
    sql: ${TABLE}.windows_sid ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__email_addresses {
  dimension: entity_graph__metadata__threat__about__domain__tech__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__domain__tech__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__email_addresses {
  dimension: entity_graph__metadata__threat__about__domain__zone__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__domain__zone__email_addresses ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__email__cc {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__email__cc {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__email__cc ;;
  }
}

view: entity_graph__relations__entity__artifact__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__department {
  dimension: entity_graph__relations__entity__user_management_chain__department {
    type: string
    sql: entity_graph__relations__entity__user_management_chain__department ;;
  }
}

view: entity_graph__relations__entity__domain__tech__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__domain__tech__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__tech__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__domain__billing__group_identifiers {
  dimension: entity_graph__relations__entity__domain__billing__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__domain__billing__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__domain__zone__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__domain__zone__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__zone__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__process__file__pe_file__signature_info__signer {
  dimension: entity_graph__entity__process__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__entity__process__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__entity__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__entity__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__metadata__threat__about__group__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__group__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process__command_line_history {
  dimension: entity_graph__metadata__threat__about__process__command_line_history {
    type: string
    sql: entity_graph__metadata__threat__about__process__command_line_history ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__names {
  dimension: entity_graph__metadata__threat__about__process_ancestors__file__names {
    type: string
    sql: entity_graph__metadata__threat__about__process_ancestors__file__names ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__email_addresses {
  dimension: entity_graph__metadata__threat__about__domain__admin__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__domain__admin__email_addresses ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__phone_numbers {
  dimension: entity_graph__metadata__threat__about__domain__billing__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__billing__phone_numbers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__department {
  dimension: entity_graph__metadata__threat__about__domain__registrant__department {
    type: string
    sql: entity_graph__metadata__threat__about__domain__registrant__department ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__email__bcc {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__email__bcc {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__email__bcc ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__relations__entity__domain__admin__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__domain__admin__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__admin__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__email_addresses {
  dimension: entity_graph__relations__entity__domain__registrant__email_addresses {
    type: string
    sql: entity_graph__relations__entity__domain__registrant__email_addresses ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__smtp__rcpt_to {
  dimension: entity_graph__metadata__threat__about__artifact__network__smtp__rcpt_to {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__smtp__rcpt_to ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__metadata__threat__about__resource__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__resource__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__group_identifiers {
  dimension: entity_graph__metadata__threat__about__domain__tech__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__tech__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__group_identifiers {
  dimension: entity_graph__metadata__threat__about__domain__zone__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__zone__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__email__to {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__email__to {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__email__to ;;
  }
}

view: entity_graph__relations__entity__artifact__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__artifact__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: entity_graph__relations__entity__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__signature_info__signer {
  dimension: entity_graph__relations__entity__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__relations__entity__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__relations__entity__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__smtp__server_response {
  dimension: entity_graph__entity__ip_geo_artifact__network__smtp__server_response {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__smtp__server_response ;;
  }
}

view: entity_graph__entity__domain__registrant__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__email__subject {
  dimension: entity_graph__metadata__threat__about__artifact__network__email__subject {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__email__subject ;;
  }
}

view: entity_graph__metadata__threat__about__cloud__vpc__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__cloud__vpc__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__imports__functions {
  dimension: entity_graph__metadata__threat__about__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__metadata__threat__about__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__capabilities_tags {
  dimension: entity_graph__metadata__threat__about__process__file__capabilities_tags {
    type: string
    sql: entity_graph__metadata__threat__about__process__file__capabilities_tags ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__group_identifiers {
  dimension: entity_graph__metadata__threat__about__domain__admin__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__admin__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__email_addresses {
  dimension: entity_graph__metadata__threat__about__domain__billing__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__domain__billing__email_addresses ;;
  }
}

view: entity_graph__relations__entity__artifact__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__artifact__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__phone_numbers {
  dimension: entity_graph__relations__entity__user_management_chain__phone_numbers {
    type: string
    sql: entity_graph__relations__entity__user_management_chain__phone_numbers ;;
  }
}

view: entity_graph__relations__entity__domain__billing__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__domain__billing__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__billing__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__group_identifiers {
  dimension: entity_graph__relations__entity__domain__registrant__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__domain__registrant__group_identifiers ;;
  }
}

view: entity_graph__entity__artifact__network__tls__client__supported_ciphers {
  dimension: entity_graph__entity__artifact__network__tls__client__supported_ciphers {
    type: string
    sql: entity_graph__entity__artifact__network__tls__client__supported_ciphers ;;
  }
}

view: entity_graph__entity__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__resource_ancestors__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__phone_numbers {
  dimension: entity_graph__metadata__threat__about__domain__registrant__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__registrant__phone_numbers ;;
  }
}

view: entity_graph__metadata__threat__about__asset__software__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__user__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__smtp__rcpt_to {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__smtp__rcpt_to {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__smtp__rcpt_to ;;
  }
}

view: entity_graph__relations__entity__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__cc {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__cc {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__cc ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__department {
  dimension: entity_graph__metadata__threat__about__user_management_chain__department {
    type: string
    sql: entity_graph__metadata__threat__about__user_management_chain__department ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__domain__tech__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__group_identifiers {
  dimension: entity_graph__metadata__threat__about__domain__billing__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__billing__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__domain__zone__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__asset__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__email__subject {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__email__subject {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__email__subject ;;
  }
}

view: entity_graph__relations__entity__artifact__network__smtp__server_response {
  dimension: entity_graph__relations__entity__artifact__network__smtp__server_response {
    type: string
    sql: entity_graph__relations__entity__artifact__network__smtp__server_response ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__email_addresses {
  dimension: entity_graph__relations__entity__user_management_chain__email_addresses {
    type: string
    sql: entity_graph__relations__entity__user_management_chain__email_addresses ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__bcc {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__bcc {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__bcc ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__domain__admin__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__email_addresses {
  dimension: entity_graph__metadata__threat__about__domain__registrant__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__domain__registrant__email_addresses ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__imports__functions {
  dimension: entity_graph__relations__entity__process__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__relations__entity__process__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__command_line_history {
  dimension: entity_graph__relations__entity__process_ancestors__command_line_history {
    type: string
    sql: entity_graph__relations__entity__process_ancestors__command_line_history ;;
  }
}

view: entity_graph__relations__entity__domain__tech__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__zone__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__domain__registrant__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__entity__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__imports__functions {
  dimension: entity_graph__entity__process_ancestors__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__entity__process_ancestors__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__to {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__to {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__to ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: entity_graph__metadata__threat__about__cloud__project__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__cloud__project__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__signature_info__signer {
  dimension: entity_graph__metadata__threat__about__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__metadata__threat__about__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__metadata__threat__about__group__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__resource_ancestors__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__resource_ancestors__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__group_identifiers {
  dimension: entity_graph__relations__entity__user_management_chain__group_identifiers {
    type: string
    sql: entity_graph__relations__entity__user_management_chain__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__domain__admin__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__process__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__resource__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__phone_numbers {
  dimension: entity_graph__metadata__threat__about__user_management_chain__phone_numbers {
    type: string
    sql: entity_graph__metadata__threat__about__user_management_chain__phone_numbers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__domain__billing__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__group_identifiers {
  dimension: entity_graph__metadata__threat__about__domain__registrant__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__domain__registrant__group_identifiers ;;
  }
}

view: entity_graph__relations__entity__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__capabilities_tags {
  dimension: entity_graph__relations__entity__process_ancestors__file__capabilities_tags {
    type: string
    sql: entity_graph__relations__entity__process_ancestors__file__capabilities_tags ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__rcpt_to {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__rcpt_to {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__rcpt_to ;;
  }
}

view: entity_graph__metadata__threat__about__cloud__vpc__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__domain__billing__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__subject {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__subject {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__subject ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__smtp__server_response {
  dimension: entity_graph__metadata__threat__about__artifact__network__smtp__server_response {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__smtp__server_response ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__email_addresses {
  dimension: entity_graph__metadata__threat__about__user_management_chain__email_addresses {
    type: string
    sql: entity_graph__metadata__threat__about__user_management_chain__email_addresses ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__signature_info__signer {
  dimension: entity_graph__relations__entity__process__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__relations__entity__process__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__relations__entity__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__tls__client__supported_ciphers {
  dimension: entity_graph__entity__ip_geo_artifact__network__tls__client__supported_ciphers {
    type: string
    sql: entity_graph__entity__ip_geo_artifact__network__tls__client__supported_ciphers ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__signature_info__signer {
  dimension: entity_graph__entity__process_ancestors__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__entity__process_ancestors__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__imports__functions {
  dimension: entity_graph__metadata__threat__about__process__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__metadata__threat__about__process__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__command_line_history {
  dimension: entity_graph__metadata__threat__about__process_ancestors__command_line_history {
    type: string
    sql: entity_graph__metadata__threat__about__process_ancestors__command_line_history ;;
  }
}

view: entity_graph__metadata__threat__about__domain__tech__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__zone__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__entity__process__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__answers {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__resource_ancestors__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__resource_ancestors__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__group_identifiers {
  dimension: entity_graph__metadata__threat__about__user_management_chain__group_identifiers {
    type: string
    sql: entity_graph__metadata__threat__about__user_management_chain__group_identifiers ;;
  }
}

view: entity_graph__metadata__threat__about__domain__admin__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__smtp__server_response {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__smtp__server_response {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__smtp__server_response ;;
  }
}

view: entity_graph__relations__entity__domain__registrant__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__artifact__network__http__parsed_user_agent__annotation {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__cloud__project__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__capabilities_tags {
  dimension: entity_graph__metadata__threat__about__process_ancestors__file__capabilities_tags {
    type: string
    sql: entity_graph__metadata__threat__about__process_ancestors__file__capabilities_tags ;;
  }
}

view: entity_graph__relations__entity__artifact__network__tls__client__supported_ciphers {
  dimension: entity_graph__relations__entity__artifact__network__tls__client__supported_ciphers {
    type: string
    sql: entity_graph__relations__entity__artifact__network__tls__client__supported_ciphers ;;
  }
}

view: entity_graph__relations__entity__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__resource_ancestors__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__authority {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__dhcp__options {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__domain__billing__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__additional {
  dimension: binary_data {
    type: string
    sql: ${TABLE}.binary_data ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__questions {
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: prevalence__day_count {
    type: number
    sql: ${TABLE}.prevalence.day_count ;;
    group_label: "Prevalence"
    group_item_label: "Day Count"
  }

  dimension: prevalence__day_max {
    type: number
    sql: ${TABLE}.prevalence.day_max ;;
    group_label: "Prevalence"
    group_item_label: "Day Max"
  }

  dimension: prevalence__day_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.day_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Day Max Sub Domains"
  }

  dimension: prevalence__rolling_max {
    type: number
    sql: ${TABLE}.prevalence.rolling_max ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max"
  }

  dimension: prevalence__rolling_max_sub_domains {
    type: number
    sql: ${TABLE}.prevalence.rolling_max_sub_domains ;;
    group_label: "Prevalence"
    group_item_label: "Rolling Max Sub Domains"
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signer {
  dimension: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__time_off {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: interval__end_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.end_time.nanos ;;
    group_label: "Interval End Time"
    group_item_label: "Nanos"
  }

  dimension: interval__end_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.end_time.seconds ;;
    group_label: "Interval End Time"
    group_item_label: "Seconds"
  }

  dimension: interval__start_time__nanos {
    type: number
    sql: ${TABLE}.`interval`.start_time.nanos ;;
    group_label: "Interval Start Time"
    group_item_label: "Nanos"
  }

  dimension: interval__start_time__seconds {
    type: number
    sql: ${TABLE}.`interval`.start_time.seconds ;;
    group_label: "Interval Start Time"
    group_item_label: "Seconds"
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__attribute__roles {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__attribute__labels {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__section {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: md5_hex {
    type: string
    sql: ${TABLE}.md5_hex ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw_size_bytes {
    type: number
    sql: ${TABLE}.raw_size_bytes ;;
  }

  dimension: virtual_size_bytes {
    type: number
    sql: ${TABLE}.virtual_size_bytes ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__relations__entity__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__imports__functions {
  dimension: entity_graph__relations__entity__process_ancestors__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__relations__entity__process_ancestors__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__server_response {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__server_response {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__server_response ;;
  }
}

view: entity_graph__metadata__threat__about__domain__registrant__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__tls__client__supported_ciphers {
  dimension: entity_graph__metadata__threat__about__artifact__network__tls__client__supported_ciphers {
    type: string
    sql: entity_graph__metadata__threat__about__artifact__network__tls__client__supported_ciphers ;;
  }
}

view: entity_graph__metadata__threat__about__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__resource_ancestors__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports {
  dimension: functions {
    hidden: yes
    sql: ${TABLE}.functions ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }
}

view: entity_graph__entity__ip_geo_artifact__network__http__parsed_user_agent__annotation {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resource {
  dimension: entropy {
    type: number
    sql: ${TABLE}.entropy ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: filetype_magic {
    type: string
    sql: ${TABLE}.filetype_magic ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.resource_type ;;
  }

  dimension: sha256_hex {
    type: string
    sql: ${TABLE}.sha256_hex ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__tls__client__supported_ciphers {
  dimension: entity_graph__relations__entity__ip_geo_artifact__network__tls__client__supported_ciphers {
    type: string
    sql: entity_graph__relations__entity__ip_geo_artifact__network__tls__client__supported_ciphers ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signer {
  dimension: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__metadata__threat__about__user_management_chain__attribute__permissions {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports__functions {
  dimension: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports__functions {
    type: string
    sql: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports__functions ;;
  }
}

view: entity_graph__relations__entity__process__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__entity__process_ancestors__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__artifact__network__http__parsed_user_agent__annotation {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__tls__client__supported_ciphers {
  dimension: entity_graph__metadata__threat__about__ip_geo_artifact__network__tls__client__supported_ciphers {
    type: string
    sql: entity_graph__metadata__threat__about__ip_geo_artifact__network__tls__client__supported_ciphers ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signer {
  dimension: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signer {
    type: string
    sql: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signer ;;
  }
}

view: entity_graph__metadata__threat__about__process__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__metadata__threat__about__artifact__network__http__parsed_user_agent__annotation {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_type_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__relations__entity__ip_geo_artifact__network__http__parsed_user_agent__annotation {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signers {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_language_count {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_type_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__ip_geo_artifact__network__http__parsed_user_agent__annotation {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_language_count_str {
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}
