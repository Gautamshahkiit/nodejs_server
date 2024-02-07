CREATE TABLE account_preference_assoc
(
    account_id    openads_mediumint(9) NOT NULL,
    preference_id openads_mediumint(9) NOT NULL,
    value         VARCHAR NOT NULL,
    account_id    VARCHAR,
    preference_id VARCHAR,
    PRIMARY KEY (account_id ascending, preference_id ascending)
);
CREATE TABLE account_user_assoc
(
    account_id openads_mediumint(9) NOT NULL,
    user_id    openads_mediumint(9) NOT NULL,
    linked     VARCHAR NOT NULL,
    account_id VARCHAR,
    user_id    VARCHAR,
    user_id    VARCHAR,
    PRIMARY KEY (account_id ascending, user_id ascending)
        PRIMARY KEY (account_id ascending, user_id ascending)
);
CREATE TABLE account_user_permission_assoc
(
    account_id    openads_mediumint(9) NOT NULL,
    user_id       openads_mediumint(9) NOT NULL,
    permission_id openads_mediumint(9) NOT NULL,
    is_allowed    openads_tinyint(1) NOT NULL DEFAULT '1',
    account_id    VARCHAR,
    user_id       VARCHAR,
    permission_id VARCHAR,
    PRIMARY KEY (account_id ascending, user_id ascending, permission_id ascending)
);
CREATE TABLE accounts
(
    account_id   openads_mediumint(9) NOT NULL DEFAULT '0',
    account_type openads_varchar(16) NOT NULL,
    account_name openads_varchar(255),
    account_id   VARCHAR,
    account_type VARCHAR,
    PRIMARY KEY (account_id ascending)
        PRIMARY KEY (account_id ascending)
);
CREATE TABLE acls
(
    bannerid       openads_mediumint(9) NOT NULL DEFAULT '0',
    logical        openads_varchar(3) NOT NULL DEFAULT 'and',
    type           openads_varchar(255) NOT NULL,
    comparison     openads_char(2) NOT NULL DEFAULT '==',
    data           VARCHAR NOT NULL,
    executionorder openads_int(10) NOT NULL DEFAULT '0',
    bannerid       VARCHAR,
    bannerid       VARCHAR,
    executionorder VARCHAR,
);
CREATE TABLE acls_channel
(
    channelid      openads_mediumint(9) NOT NULL DEFAULT '0',
    logical        openads_varchar(3) NOT NULL DEFAULT 'and',
    type           openads_varchar(255) NOT NULL,
    comparison     openads_char(2) NOT NULL DEFAULT '==',
    data           VARCHAR NOT NULL,
    executionorder openads_int(10) NOT NULL DEFAULT '0',
    channelid      VARCHAR,
    channelid      VARCHAR,
    executionorder VARCHAR,
);
CREATE TABLE ad_category_assoc
(
    ad_category_assoc_id openads_int(10) NOT NULL DEFAULT '0',
    category_id          openads_int(10) NOT NULL,
    ad_id                openads_int(10) NOT NULL,
    ad_category_assoc_id VARCHAR,
    PRIMARY KEY (ad_category_assoc_id ascending)
);
CREATE TABLE ad_zone_assoc
(
    ad_zone_assoc_id openads_mediumint(9) NOT NULL DEFAULT '0',
    zone_id          openads_mediumint(9),
    ad_id            openads_mediumint(9),
    priority         VARCHAR DEFAULT '0',
    link_type        openads_smallint(6) NOT NULL DEFAULT '1',
    priority_factor  VARCHAR DEFAULT '0',
    to_be_delivered  openads_tinyint(1) NOT NULL DEFAULT '1',
    zone_id          VARCHAR,
    ad_id            VARCHAR,
    ad_zone_assoc_id VARCHAR,
    PRIMARY KEY (ad_zone_assoc_id ascending)
        PRIMARY KEY (ad_zone_assoc_id ascending)
        PRIMARY KEY (ad_zone_assoc_id ascending)
);
CREATE TABLE affiliates
(
    affiliateid      openads_mediumint(9) NOT NULL DEFAULT '0',
    agencyid         openads_mediumint(9) NOT NULL DEFAULT '0',
    name             openads_varchar(255) NOT NULL,
    mnemonic         openads_varchar(5) NOT NULL,
    comments         VARCHAR,
    contact          openads_varchar(255),
    email            openads_varchar(64) NOT NULL,
    website          openads_varchar(255),
    updated          VARCHAR NOT NULL,
    oac_country_code openads_char(2) NOT NULL,
    oac_language_id  openads_int(11),
    oac_category_id  openads_int(11),
    account_id       openads_mediumint(9),
    agencyid         VARCHAR,
    affiliateid      VARCHAR,
    account_id       VARCHAR,
    PRIMARY KEY (affiliateid ascending)
        PRIMARY KEY (affiliateid ascending)
        PRIMARY KEY (affiliateid ascending)
);
CREATE TABLE affiliates_extra
(
    affiliateid     openads_mediumint(9) NOT NULL,
    address         VARCHAR,
    city            openads_varchar(255),
    postcode        openads_varchar(64),
    country         openads_varchar(255),
    phone           openads_varchar(64),
    fax             openads_varchar(64),
    account_contact openads_varchar(255),
    payee_name      openads_varchar(255),
    tax_id          openads_varchar(64),
    mode_of_payment openads_varchar(64),
    currency        openads_varchar(64),
    unique_users    openads_int(11),
    unique_views    openads_int(11),
    page_rank       openads_int(11),
    category        openads_varchar(255),
    help_file       openads_varchar(255),
    affiliateid     VARCHAR,
    PRIMARY KEY (affiliateid ascending)
);
CREATE TABLE agency
(
    agencyid   openads_mediumint(9) NOT NULL DEFAULT '0',
    name       openads_varchar(255) NOT NULL,
    contact    openads_varchar(255),
    email      openads_varchar(64) NOT NULL,
    logout_url openads_varchar(255),
    updated    VARCHAR NOT NULL,
    account_id openads_mediumint(9),
    status     openads_smallint(6) NOT NULL DEFAULT '0',
    agencyid   VARCHAR,
    account_id VARCHAR,
    PRIMARY KEY (agencyid ascending)
        PRIMARY KEY (agencyid ascending)
);
CREATE TABLE application_variable
(
    name  openads_varchar(250) NOT NULL,
    value VARCHAR NOT NULL,
    name  VARCHAR,
    PRIMARY KEY (name ascending)
);
CREATE TABLE audit
(
    auditid               openads_mediumint(9) NOT NULL DEFAULT '0',
    actionid              openads_mediumint(9) NOT NULL,
    context               openads_varchar(200) NOT NULL,
    contextid             openads_mediumint(9),
    parentid              openads_mediumint(9),
    details               VARCHAR NOT NULL,
    userid                openads_mediumint(9) NOT NULL DEFAULT '0',
    username              openads_varchar(64),
    usertype              openads_tinyint(4) NOT NULL DEFAULT '0',
    updated               VARCHAR,
    account_id            openads_mediumint(9) NOT NULL,
    advertiser_account_id openads_mediumint(9),
    website_account_id    openads_mediumint(9),
    auditid               VARCHAR,
    parentid              VARCHAR,
    contextid             VARCHAR,
    updated               VARCHAR,
    usertype              VARCHAR,
    username              VARCHAR,
    context               VARCHAR,
    actionid              VARCHAR,
    account_id            VARCHAR,
    advertiser_account_id VARCHAR,
    website_account_id    VARCHAR,
    PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
        PRIMARY KEY (auditid ascending)
);
CREATE TABLE banners
(
    bannerid           openads_mediumint(9) NOT NULL DEFAULT '0',
    campaignid         openads_mediumint(9) NOT NULL DEFAULT '0',
    contenttype        openads_varchar(8) NOT NULL DEFAULT 'gif',
    pluginversion      openads_mediumint(9) NOT NULL DEFAULT '0',
    storagetype        openads_varchar(16) NOT NULL DEFAULT 'sql',
    filename           openads_varchar(255) NOT NULL,
    imageurl           openads_varchar(255) NOT NULL,
    htmltemplate       VARCHAR NOT NULL,
    htmlcache          VARCHAR NOT NULL,
    width              openads_smallint(6) NOT NULL DEFAULT '0',
    height             openads_smallint(6) NOT NULL DEFAULT '0',
    weight             openads_tinyint(4) NOT NULL DEFAULT '1',
    seq                openads_tinyint(4) NOT NULL DEFAULT '0',
    target             openads_varchar(16) NOT NULL,
    url                VARCHAR NOT NULL,
    alt                openads_varchar(255) NOT NULL,
    statustext         openads_varchar(255) NOT NULL,
    bannertext         VARCHAR NOT NULL,
    description        openads_varchar(255) NOT NULL,
    adserver           openads_varchar(255) NOT NULL,
    block              openads_int(11) NOT NULL DEFAULT '0',
    capping            openads_int(11) NOT NULL DEFAULT '0',
    session_capping    openads_int(11) NOT NULL DEFAULT '0',
    compiledlimitation VARCHAR NOT NULL,
    acl_plugins        VARCHAR,
    append             VARCHAR NOT NULL,
    bannertype         openads_tinyint(4) NOT NULL DEFAULT '0',
    alt_filename       openads_varchar(255) NOT NULL,
    alt_imageurl       openads_varchar(255) NOT NULL,
    alt_contenttype    openads_varchar(8) NOT NULL DEFAULT 'gif',
    comments           VARCHAR,
    updated            VARCHAR NOT NULL,
    acls_updated       VARCHAR NOT NULL DEFAULT '0000-00-00 00:00:00',
    keyword            openads_varchar(255) NOT NULL,
    transparent        openads_tinyint(1) NOT NULL DEFAULT '0',
    parameters         VARCHAR,
    status             openads_int(11) NOT NULL DEFAULT '0',
    ext_bannertype     openads_varchar(255),
    prepend            VARCHAR NOT NULL,
    iframe_friendly    openads_tinyint(1) NOT NULL DEFAULT '1',
    campaignid         VARCHAR,
    bannerid           VARCHAR,
    PRIMARY KEY (bannerid ascending)
        PRIMARY KEY (bannerid ascending)
);
CREATE TABLE campaigns
(
    campaignid            openads_mediumint(9) NOT NULL DEFAULT '0',
    campaignname          openads_varchar(255) NOT NULL,
    clientid              openads_mediumint(9) NOT NULL DEFAULT '0',
    views                 openads_int(11) DEFAULT '-1',
    clicks                openads_int(11) DEFAULT '-1',
    conversions           openads_int(11) DEFAULT '-1',
    priority              openads_int(11) NOT NULL DEFAULT '0',
    weight                openads_tinyint(4) NOT NULL DEFAULT '1',
    target_impression     openads_int(11) NOT NULL DEFAULT '0',
    target_click          openads_int(11) NOT NULL DEFAULT '0',
    target_conversion     openads_int(11) NOT NULL DEFAULT '0',
    anonymous             openads_enum('t','f') NOT NULL DEFAULT 'f',
    companion             openads_smallint(1) DEFAULT '0',
    comments              VARCHAR,
    revenue               openads_decimal(10,4),
    revenue_type          openads_smallint(6),
    updated               VARCHAR NOT NULL,
    block                 openads_int(11) NOT NULL DEFAULT '0',
    capping               openads_int(11) NOT NULL DEFAULT '0',
    session_capping       openads_int(11) NOT NULL DEFAULT '0',
    status                openads_int(11) NOT NULL DEFAULT '0',
    hosted_views          openads_int(11) NOT NULL DEFAULT '0',
    hosted_clicks         openads_int(11) NOT NULL DEFAULT '0',
    viewwindow            openads_mediumint(9) NOT NULL DEFAULT '0',
    clickwindow           openads_mediumint(9) NOT NULL DEFAULT '0',
    ecpm                  openads_decimal(10,4),
    min_impressions       openads_int(11) NOT NULL DEFAULT '0',
    ecpm_enabled          openads_tinyint(4) NOT NULL DEFAULT '0',
    activate_time         VARCHAR,
    expire_time           VARCHAR,
    type                  openads_tinyint(4) NOT NULL DEFAULT '0',
    show_capped_no_cookie openads_tinyint(4) NOT NULL DEFAULT '0',
    clientid              VARCHAR,
    campaignid            VARCHAR,
    PRIMARY KEY (campaignid ascending)
        PRIMARY KEY (campaignid ascending)
);
CREATE TABLE campaigns_trackers
(
    campaign_trackerid openads_mediumint(9) NOT NULL DEFAULT '0',
    campaignid         openads_mediumint(9) NOT NULL DEFAULT '0',
    trackerid          openads_mediumint(9) NOT NULL DEFAULT '0',
    status             openads_smallint(1) NOT NULL DEFAULT '4',
    campaignid         VARCHAR,
    trackerid          VARCHAR,
    campaign_trackerid VARCHAR,
    PRIMARY KEY (campaign_trackerid ascending)
        PRIMARY KEY (campaign_trackerid ascending)
        PRIMARY KEY (campaign_trackerid ascending)
);
CREATE TABLE category
(
    category_id openads_int(10) NOT NULL DEFAULT '0',
    name        openads_varchar(255),
    category_id VARCHAR,
    PRIMARY KEY (category_id ascending)
);
CREATE TABLE channel
(
    channelid          openads_mediumint(9) NOT NULL DEFAULT '0',
    agencyid           openads_mediumint(9) NOT NULL DEFAULT '0',
    affiliateid        openads_mediumint(9) NOT NULL DEFAULT '0',
    name               openads_varchar(255),
    description        openads_varchar(255),
    compiledlimitation VARCHAR NOT NULL,
    acl_plugins        VARCHAR,
    active             openads_smallint(1),
    comments           VARCHAR,
    updated            VARCHAR NOT NULL,
    acls_updated       VARCHAR NOT NULL DEFAULT '0000-00-00 00:00:00',
    channelid          VARCHAR,
    PRIMARY KEY (channelid ascending)
);
CREATE TABLE clients
(
    clientid              openads_mediumint(9) NOT NULL DEFAULT '0',
    agencyid              openads_mediumint(9) NOT NULL DEFAULT '0',
    clientname            openads_varchar(255) NOT NULL,
    contact               openads_varchar(255),
    email                 openads_varchar(64) NOT NULL,
    report                openads_enum('t','f') NOT NULL DEFAULT 'f',
    reportinterval        openads_mediumint(9) NOT NULL DEFAULT '7',
    reportlastdate        VARCHAR NOT NULL DEFAULT '0000-00-00',
    reportdeactivate      openads_enum('t','f') NOT NULL DEFAULT 'f',
    comments              VARCHAR,
    updated               VARCHAR NOT NULL,
    account_id            openads_mediumint(9),
    advertiser_limitation openads_tinyint(1) NOT NULL DEFAULT '0',
    type                  openads_tinyint(4) NOT NULL DEFAULT '0',
    clientid              VARCHAR,
    account_id            VARCHAR,
    agencyid              VARCHAR,
    type                  VARCHAR,
    PRIMARY KEY (clientid ascending)
        PRIMARY KEY (clientid ascending)
        PRIMARY KEY (clientid ascending)
);
CREATE TABLE data_intermediate_ad
(
    data_intermediate_ad_id openads_bigint(20) NOT NULL DEFAULT '0',
    date_time               VARCHAR NOT NULL,
    operation_interval      openads_int(10) NOT NULL,
    operation_interval_id   openads_int(10) NOT NULL,
    interval_start          VARCHAR NOT NULL,
    interval_end            VARCHAR NOT NULL,
    ad_id                   openads_int(10) NOT NULL,
    creative_id             openads_int(10) NOT NULL,
    zone_id                 openads_int(10) NOT NULL,
    requests                openads_int(10) NOT NULL DEFAULT '0',
    impressions             openads_int(10) NOT NULL DEFAULT '0',
    clicks                  openads_int(10) NOT NULL DEFAULT '0',
    conversions             openads_int(10) NOT NULL DEFAULT '0',
    total_basket_value      openads_decimal(10,4) NOT NULL DEFAULT '0.0000',
    total_num_items         openads_int(11) NOT NULL DEFAULT '0',
    updated                 VARCHAR NOT NULL,
    data_intermediate_ad_id VARCHAR,
    ad_id                   VARCHAR,
    date_time               VARCHAR,
    zone_id                 VARCHAR,
    date_time               VARCHAR,
    date_time               VARCHAR,
    interval_start          VARCHAR,
    PRIMARY KEY (data_intermediate_ad_id ascending)
        PRIMARY KEY (data_intermediate_ad_id ascending)
        PRIMARY KEY (data_intermediate_ad_id ascending)
        PRIMARY KEY (data_intermediate_ad_id ascending)
        PRIMARY KEY (data_intermediate_ad_id ascending)
);
CREATE TABLE data_intermediate_ad_connection
(
    data_intermediate_ad_connection_id openads_bigint(20) NOT NULL DEFAULT '0',
    server_raw_ip                      openads_varchar(16) NOT NULL,
    server_raw_tracker_impression_id   openads_bigint(20) NOT NULL,
    viewer_id                          openads_varchar(32),
    viewer_session_id                  openads_varchar(32),
    tracker_date_time                  VARCHAR NOT NULL,
    connection_date_time               VARCHAR,
    tracker_id                         openads_int(10) NOT NULL,
    ad_id                              openads_int(10) NOT NULL,
    creative_id                        openads_int(10) NOT NULL,
    zone_id                            openads_int(10) NOT NULL,
    tracker_channel                    openads_varchar(255),
    connection_channel                 openads_varchar(255),
    tracker_channel_ids                openads_varchar(64),
    connection_channel_ids             openads_varchar(64),
    tracker_language                   openads_varchar(13),
    connection_language                openads_varchar(13),
    tracker_ip_address                 openads_varchar(16),
    connection_ip_address              openads_varchar(16),
    tracker_host_name                  openads_varchar(255),
    connection_host_name               openads_varchar(255),
    tracker_country                    openads_char(2),
    connection_country                 openads_char(2),
    tracker_https                      openads_int(10),
    connection_https                   openads_int(10),
    tracker_domain                     openads_varchar(255),
    connection_domain                  openads_varchar(255),
    tracker_page                       openads_varchar(255),
    connection_page                    openads_varchar(255),
    tracker_query                      openads_varchar(255),
    connection_query                   openads_varchar(255),
    tracker_referer                    openads_varchar(255),
    connection_referer                 openads_varchar(255),
    tracker_search_term                openads_varchar(255),
    connection_search_term             openads_varchar(255),
    tracker_user_agent                 openads_varchar(255),
    connection_user_agent              openads_varchar(255),
    tracker_os                         openads_varchar(32),
    connection_os                      openads_varchar(32),
    tracker_browser                    openads_varchar(32),
    connection_browser                 openads_varchar(32),
    connection_action                  openads_int(10),
    connection_window                  openads_int(10),
    connection_status                  openads_int(10) NOT NULL DEFAULT '4',
    inside_window                      openads_tinyint(1) NOT NULL DEFAULT '0',
    comments                           VARCHAR,
    updated                            VARCHAR NOT NULL,
    tracker_date_time                  VARCHAR,
    tracker_id                         VARCHAR,
    ad_id                              VARCHAR,
    zone_id                            VARCHAR,
    viewer_id                          VARCHAR,
    data_intermediate_ad_connection_id VARCHAR,
    PRIMARY KEY (data_intermediate_ad_connection_id ascending)
        PRIMARY KEY (data_intermediate_ad_connection_id ascending)
        PRIMARY KEY (data_intermediate_ad_connection_id ascending)
        PRIMARY KEY (data_intermediate_ad_connection_id ascending)
        PRIMARY KEY (data_intermediate_ad_connection_id ascending)
        PRIMARY KEY (data_intermediate_ad_connection_id ascending)
);
CREATE TABLE data_intermediate_ad_variable_value
(
    data_intermediate_ad_variable_value_id openads_bigint(20) NOT NULL DEFAULT '0'
    data_intermediate_ad_connection_id     openads_bigint(20) NOT NULL,
    tracker_variable_id                    openads_int(11) NOT NULL,
    value                                  openads_varchar(50),
    data_intermediate_ad_connection_id     VARCHAR,
    tracker_variable_id                    VARCHAR,
    value                                  VARCHAR,
    data_intermediate_ad_variable_value_id VARCHAR,
    PRIMARY KEY (data_intermediate_ad_variable_value_id ascending)
        PRIMARY KEY (data_intermediate_ad_variable_value_id ascending)
        PRIMARY KEY (data_intermediate_ad_variable_value_id ascending)
        PRIMARY KEY (data_intermediate_ad_variable_value_id ascending)
);
CREATE TABLE data_raw_ad_click
(
    viewer_id         openads_varchar(32),
    viewer_session_id openads_varchar(32),
    date_time         VARCHAR NOT NULL,
    ad_id             openads_int(10) NOT NULL,
    creative_id       openads_int(10) NOT NULL,
    zone_id           openads_int(10) NOT NULL,
    channel           openads_varchar(255),
    channel_ids       openads_varchar(64),
    language          openads_varchar(32),
    ip_address        openads_varchar(16),
    host_name         openads_varchar(255),
    country           openads_char(2),
    https             openads_tinyint(1),
    domain            openads_varchar(255),
    page              openads_varchar(255),
    query             openads_varchar(255),
    referer           openads_varchar(255),
    search_term       openads_varchar(255),
    user_agent        openads_varchar(255),
    os                openads_varchar(32),
    browser           openads_varchar(32),
    max_https         openads_tinyint(1),
    geo_region        openads_varchar(50),
    geo_city          openads_varchar(50),
    geo_postal_code   openads_varchar(10),
    geo_latitude      openads_decimal(8,4),
    geo_longitude     openads_decimal(8,4),
    geo_dma_code      openads_varchar(50),
    geo_area_code     openads_varchar(50),
    geo_organisation  openads_varchar(50),
    geo_netspeed      openads_varchar(20),
    geo_continent     openads_varchar(13),
    viewer_id         VARCHAR,
    date_time         VARCHAR,
    ad_id             VARCHAR,
    zone_id           VARCHAR,
);
CREATE TABLE data_raw_ad_impression
(
    viewer_id         openads_varchar(32),
    viewer_session_id openads_varchar(32),
    date_time         VARCHAR NOT NULL,
    ad_id             openads_int(10) NOT NULL,
    creative_id       openads_int(10) NOT NULL,
    zone_id           openads_int(10) NOT NULL,
    channel           openads_varchar(255),
    channel_ids       openads_varchar(64),
    language          openads_varchar(32),
    ip_address        openads_varchar(16),
    host_name         openads_varchar(255),
    country           openads_char(2),
    https             openads_tinyint(1),
    domain            openads_varchar(255),
    page              openads_varchar(255),
    query             openads_varchar(255),
    referer           openads_varchar(255),
    search_term       openads_varchar(255),
    user_agent        openads_varchar(255),
    os                openads_varchar(32),
    browser           openads_varchar(32),
    max_https         openads_tinyint(1),
    geo_region        openads_varchar(50),
    geo_city          openads_varchar(50),
    geo_postal_code   openads_varchar(10),
    geo_latitude      openads_decimal(8,4),
    geo_longitude     openads_decimal(8,4),
    geo_dma_code      openads_varchar(50),
    geo_area_code     openads_varchar(50),
    geo_organisation  openads_varchar(50),
    geo_netspeed      openads_varchar(20),
    geo_continent     openads_varchar(13),
    viewer_id         VARCHAR,
    date_time         VARCHAR,
    ad_id             VARCHAR,
    zone_id           VARCHAR,
);
CREATE TABLE data_raw_ad_request
(
    viewer_id         openads_varchar(32),
    viewer_session_id openads_varchar(32),
    date_time         VARCHAR NOT NULL,
    ad_id             openads_int(10) NOT NULL,
    creative_id       openads_int(10) NOT NULL,
    zone_id           openads_int(10) NOT NULL,
    channel           openads_varchar(255),
    channel_ids       openads_varchar(64),
    language          openads_varchar(32),
    ip_address        openads_varchar(16),
    host_name         openads_varchar(255),
    https             openads_tinyint(1),
    domain            openads_varchar(255),
    page              openads_varchar(255),
    query             openads_varchar(255),
    referer           openads_varchar(255),
    search_term       openads_varchar(255),
    user_agent        openads_varchar(255),
    os                openads_varchar(32),
    browser           openads_varchar(32),
    max_https         openads_tinyint(1),
    viewer_id         VARCHAR,
    date_time         VARCHAR,
    ad_id             VARCHAR,
    zone_id           VARCHAR,
);
CREATE TABLE data_raw_tracker_impression
(
    server_raw_tracker_impression_id openads_bigint(20) NOT NULL DEFAULT '0',
    server_raw_ip                    openads_varchar(16) NOT NULL,
    viewer_id                        openads_varchar(32) NOT NULL,
    viewer_session_id                openads_varchar(32),
    date_time                        VARCHAR NOT NULL,
    tracker_id                       openads_int(10) NOT NULL,
    channel                          openads_varchar(255),
    channel_ids                      openads_varchar(64),
    language                         openads_varchar(32),
    ip_address                       openads_varchar(16),
    host_name                        openads_varchar(255),
    country                          openads_char(2),
    https                            openads_int(10),
    domain                           openads_varchar(255),
    page                             openads_varchar(255),
    query                            openads_varchar(255),
    referer                          openads_varchar(255),
    search_term                      openads_varchar(255),
    user_agent                       openads_varchar(255),
    os                               openads_varchar(32),
    browser                          openads_varchar(32),
    max_https                        openads_int(10),
    geo_region                       openads_varchar(50),
    geo_city                         openads_varchar(50),
    geo_postal_code                  openads_varchar(10),
    geo_latitude                     openads_decimal(8,4),
    geo_longitude                    openads_decimal(8,4),
    geo_dma_code                     openads_varchar(50),
    geo_area_code                    openads_varchar(50),
    geo_organisation                 openads_varchar(50),
    geo_netspeed                     openads_varchar(20),
    geo_continent                    openads_varchar(13),
    viewer_id                        VARCHAR,
    date_time                        VARCHAR,
    server_raw_tracker_impression_id VARCHAR,
    server_raw_ip                    VARCHAR,
    PRIMARY KEY (server_raw_tracker_impression_id ascending, server_raw_ip ascendi
        PRIMARY KEY (server_raw_tracker_impression_id ascending, server_raw_ip asc
        PRIMARY KEY (server_raw_tracker_impression_id ascending, server_raw_ip asc
);
CREATE TABLE data_raw_tracker_variable_value
(
    server_raw_tracker_impression_id openads_bigint(20) NOT NULL,
    server_raw_ip                    openads_varchar(16) NOT NULL,
    tracker_variable_id              openads_int(11) NOT NULL,
    date_time                        VARCHAR,
    value                            openads_varchar(50),
    server_raw_tracker_impression_id VARCHAR,
    server_raw_ip                    VARCHAR,
    tracker_variable_id              VARCHAR,
    PRIMARY KEY (server_raw_tracker_impression_id ascending, server_raw_ip ascendi
);
CREATE TABLE data_summary_ad_hourly
(
    data_summary_ad_hourly_id openads_bigint(20) NOT NULL DEFAULT '0',
    date_time                 VARCHAR NOT NULL,
    ad_id                     openads_int(10) NOT NULL,
    creative_id               openads_int(10) NOT NULL,
    zone_id                   openads_int(10) NOT NULL,
    requests                  openads_int(10) NOT NULL DEFAULT '0',
    impressions               openads_int(10) NOT NULL DEFAULT '0',
    clicks                    openads_int(10) NOT NULL DEFAULT '0',
    conversions               openads_int(10) NOT NULL DEFAULT '0',
    total_basket_value        openads_decimal(10,4),
    total_num_items           openads_int(11),
    total_revenue             openads_decimal(10,4),
    total_cost                openads_decimal(10,4),
    total_techcost            openads_decimal(10,4),
    updated                   VARCHAR NOT NULL,
    data_summary_ad_hourly_id VARCHAR,
    date_time                 VARCHAR,
    ad_id                     VARCHAR,
    date_time                 VARCHAR,
    zone_id                   VARCHAR,
    date_time                 VARCHAR,
    PRIMARY KEY (data_summary_ad_hourly_id ascending)
        PRIMARY KEY (data_summary_ad_hourly_id ascending)
        PRIMARY KEY (data_summary_ad_hourly_id ascending)
        PRIMARY KEY (data_summary_ad_hourly_id ascending)
);
CREATE TABLE data_summary_ad_zone_assoc
(
    data_summary_ad_zone_assoc_id openads_bigint(20) NOT NULL DEFAULT '0',
    operation_interval            openads_int(10) NOT NULL,
    operation_interval_id         openads_int(10) NOT NULL,
    interval_start                VARCHAR NOT NULL,
    interval_end                  VARCHAR NOT NULL,
    ad_id                         openads_int(10) NOT NULL,
    zone_id                       openads_int(10) NOT NULL,
    required_impressions          openads_int(10) NOT NULL,
    requested_impressions         openads_int(10) NOT NULL,
    priority                      VARCHAR NOT NULL,
    priority_factor               VARCHAR,
    priority_factor_limited       openads_smallint(6) NOT NULL DEFAULT '0',
    past_zone_traffic_fraction    VARCHAR,
    created                       VARCHAR NOT NULL,
    created_by                    openads_int(10) NOT NULL,
    expired                       VARCHAR,
    expired_by                    openads_int(10),
    to_be_delivered               openads_tinyint(1) NOT NULL DEFAULT '1',
    interval_start                VARCHAR,
    interval_end                  VARCHAR,
    ad_id                         VARCHAR,
    zone_id                       VARCHAR,
    expired                       VARCHAR,
    data_summary_ad_zone_assoc_id VARCHAR,
    PRIMARY KEY (data_summary_ad_zone_assoc_id ascending)
        PRIMARY KEY (data_summary_ad_zone_assoc_id ascending)
        PRIMARY KEY (data_summary_ad_zone_assoc_id ascending)
        PRIMARY KEY (data_summary_ad_zone_assoc_id ascending)
        PRIMARY KEY (data_summary_ad_zone_assoc_id ascending)
        PRIMARY KEY (data_summary_ad_zone_assoc_id ascending)
);
CREATE TABLE data_summary_channel_daily
(
    data_summary_channel_daily_id openads_bigint(20) NOT NULL DEFAULT '0',
    day                           VARCHAR NOT NULL,
    channel_id                    openads_int(10) NOT NULL,
    zone_id                       openads_int(10) NOT NULL,
    forecast_impressions          openads_int(10) NOT NULL DEFAULT '0',
    actual_impressions            openads_int(10) NOT NULL DEFAULT '0',
    day                           VARCHAR,
    channel_id                    VARCHAR,
    zone_id                       VARCHAR,
    data_summary_channel_daily_id VARCHAR,
    PRIMARY KEY (data_summary_channel_daily_id ascending)
        PRIMARY KEY (data_summary_channel_daily_id ascending)
        PRIMARY KEY (data_summary_channel_daily_id ascending)
        PRIMARY KEY (data_summary_channel_daily_id ascending)
);
CREATE TABLE data_summary_zone_impression_history
(
    data_summary_zone_impression_history_id openads_bigint(20) NOT NULL DEFAULT '0',
    operation_interval                      openads_int(10) NOT NULL,
    operation_interval_id                   openads_int(10) NOT NULL,
    interval_start                          VARCHAR NOT NULL,
    interval_end                            VARCHAR NOT NULL,
    zone_id                                 openads_int(10) NOT NULL,
    forecast_impressions                    openads_int(10),
    actual_impressions                      openads_int(10),
    est                                     openads_smallint(6),
    operation_interval_id                   VARCHAR,
    zone_id                                 VARCHAR,
    data_summary_zone_impression_history_id VARCHAR,
    PRIMARY KEY (data_summary_zone_impression_history_id ascending)
        PRIMARY KEY (data_summary_zone_impression_history_id ascending)
        PRIMARY KEY (data_summary_zone_impression_history_id ascending)
);
CREATE TABLE images
(
    filename openads_varchar(128) NOT NULL,
    contents VARCHAR NOT NULL,
    t_stamp  VARCHAR,
    filename VARCHAR,
    PRIMARY KEY (filename ascending)
);
CREATE TABLE log_maintenance_forecasting
(
    log_maintenance_forecasting_id openads_int(11) NOT NULL DEFAULT '0',
    start_run                      VARCHAR NOT NULL,
    end_run                        VARCHAR NOT NULL,
    operation_interval             openads_int(11) NOT NULL,
    duration                       openads_int(11) NOT NULL,
    updated_to                     VARCHAR,
    log_maintenance_forecasting_id VARCHAR,
    PRIMARY KEY (log_maintenance_forecasting_id ascending)
);
CREATE TABLE log_maintenance_priority
(
    log_maintenance_priority_id openads_int(11) NOT NULL DEFAULT '0',
    start_run                   VARCHAR NOT NULL,
    end_run                     VARCHAR NOT NULL,
    operation_interval          openads_int(11) NOT NULL,
    duration                    openads_int(11) NOT NULL,
    run_type                    openads_tinyint(3) NOT NULL,
    updated_to                  VARCHAR,
    log_maintenance_priority_id VARCHAR,
    PRIMARY KEY (log_maintenance_priority_id ascending)
);
CREATE TABLE log_maintenance_statistics
(
    log_maintenance_statistics_id openads_int(11) NOT NULL DEFAULT '0',
    start_run                     VARCHAR NOT NULL,
    end_run                       VARCHAR NOT NULL,
    duration                      openads_int(11) NOT NULL,
    adserver_run_type             openads_int(2),
    search_run_type               openads_int(2),
    tracker_run_type              openads_int(2),
    updated_to                    VARCHAR,
    log_maintenance_statistics_id VARCHAR,
    PRIMARY KEY (log_maintenance_statistics_id ascending)
);
CREATE TABLE password_recovery
(
    user_type   openads_varchar(64) NOT NULL,
    user_id     openads_int(10) NOT NULL,
    recovery_id openads_varchar(64) NOT NULL,
    updated     VARCHAR NOT NULL,
    user_type   VARCHAR,
    user_id     VARCHAR,
    recovery_id VARCHAR,
    PRIMARY KEY (user_type ascending, user_id ascending)
        PRIMARY KEY (user_type ascending, user_id ascending)
);
CREATE TABLE placement_zone_assoc
(
    placement_zone_assoc_id openads_mediumint(9) NOT NULL DEFAULT '0',
    zone_id                 openads_mediumint(9),
    placement_id            openads_mediumint(9),
    zone_id                 VARCHAR,
    placement_id            VARCHAR,
    placement_zone_assoc_id VARCHAR,
    PRIMARY KEY (placement_zone_assoc_id ascending)
        PRIMARY KEY (placement_zone_assoc_id ascending)
        PRIMARY KEY (placement_zone_assoc_id ascending)
);
CREATE TABLE preferences
(
    preference_id   openads_mediumint(9) NOT NULL DEFAULT '0',
    preference_name openads_varchar(64) NOT NULL,
    account_type    openads_varchar(16) NOT NULL,
    preference_id   VARCHAR,
    preference_name VARCHAR,
    account_type    VARCHAR,
    PRIMARY KEY (preference_id ascending)
        PRIMARY KEY (preference_id ascending)
        PRIMARY KEY (preference_id ascending)
);
CREATE TABLE session
(
    sessionid   openads_varchar(32) NOT NULL,
    sessiondata VARCHAR NOT NULL,
    lastused    VARCHAR,
    user_id     openads_mediumint(9),
    sessionid   VARCHAR,
    user_id     VARCHAR,
    lastused    VARCHAR,
    PRIMARY KEY (sessionid ascending)
        PRIMARY KEY (sessionid ascending)
        PRIMARY KEY (sessionid ascending)
);
CREATE TABLE targetstats
(
    day        VARCHAR NOT NULL DEFAULT '0000-00-00',
    campaignid openads_mediumint(9) NOT NULL DEFAULT '0',
    target     openads_int(11) NOT NULL DEFAULT '0',
    views      openads_int(11) NOT NULL DEFAULT '0',
    modified   openads_tinyint(4) NOT NULL DEFAULT '0',
);
CREATE TABLE tracker_append
(
    tracker_append_id openads_int(11) NOT NULL DEFAULT '0',
    tracker_id        openads_mediumint(9) NOT NULL DEFAULT '0',
    rank              openads_int(11) NOT NULL DEFAULT '0',
    tagcode           VARCHAR NOT NULL,
    paused            openads_enum('t','f') NOT NULL DEFAULT 'f',
    autotrack         openads_enum('t','f') NOT NULL DEFAULT 'f',
    tracker_id        VARCHAR,
    rank              VARCHAR,
    tracker_append_id VARCHAR,
    PRIMARY KEY (tracker_append_id ascending)
        PRIMARY KEY (tracker_append_id ascending)
);
CREATE TABLE trackers
(
    trackerid      openads_mediumint(9) NOT NULL DEFAULT '0',
    trackername    openads_varchar(255) NOT NULL,
    description    openads_varchar(255) NOT NULL,
    clientid       openads_mediumint(9) NOT NULL DEFAULT '0',
    viewwindow     openads_mediumint(9) NOT NULL DEFAULT '0',
    clickwindow    openads_mediumint(9) NOT NULL DEFAULT '0',
    blockwindow    openads_mediumint(9) NOT NULL DEFAULT '0',
    status         openads_smallint(1) NOT NULL DEFAULT '4',
    type           openads_smallint(1) NOT NULL DEFAULT '1',
    linkcampaigns  openads_enum('t','f') NOT NULL DEFAULT 'f',
    variablemethod openads_enum('default','js','dom','custom') NOT NULL DEFAULT 'default',
    appendcode     VARCHAR NOT NULL,
    updated        VARCHAR NOT NULL,
    clientid       VARCHAR,
    trackerid      VARCHAR,
    PRIMARY KEY (trackerid ascending)
        PRIMARY KEY (trackerid ascending)
);
CREATE TABLE userlog
(
    userlogid openads_mediumint(9) NOT NULL DEFAULT '0',
    timestamp openads_int(11) NOT NULL DEFAULT '0',
    usertype  openads_tinyint(4) NOT NULL DEFAULT '0',
    userid    openads_mediumint(9) NOT NULL DEFAULT '0',
    action    openads_mediumint(9) NOT NULL DEFAULT '0',
    object    openads_mediumint(9),
    details   VARCHAR,
    userlogid VARCHAR,
    PRIMARY KEY (userlogid ascending)
);
CREATE TABLE users
(
    user_id            openads_mediumint(9) NOT NULL DEFAULT '0',
    contact_name       openads_varchar(255) NOT NULL,
    email_address      openads_varchar(64) NOT NULL,
    username           openads_varchar(64) NOT NULL,
    password           openads_varchar(64) NOT NULL,
    language           openads_varchar(5),
    default_account_id openads_mediumint(9),
    comments           VARCHAR,
    active             openads_tinyint(1) NOT NULL DEFAULT '1',
    sso_user_id        openads_int(11),
    date_created       VARCHAR,
    date_last_login    VARCHAR,
    email_updated      VARCHAR,
    user_id            VARCHAR,
    username           VARCHAR,
    sso_user_id        VARCHAR,
    PRIMARY KEY (user_id ascending)
        PRIMARY KEY (user_id ascending)
        PRIMARY KEY (user_id ascending)
);
CREATE TABLE variable_publisher
(
    variable_id  openads_int(11) NOT NULL,
    publisher_id openads_int(11) NOT NULL,
    visible      openads_tinyint(1) NOT NULL,
    variable_id  VARCHAR,
    publisher_id VARCHAR,
    PRIMARY KEY (variable_id ascending, publisher_id ascending)
);
CREATE TABLE variables
(
    variableid      openads_mediumint(9) NOT NULL DEFAULT '0',
    trackerid       openads_mediumint(9) NOT NULL DEFAULT '0',
    name            openads_varchar(250) NOT NULL,
    description     openads_varchar(250),
    datatype        openads_enum('numeric','string','date') NOT NULL DEFAULT 'numeric',
    purpose         openads_enum('basket_value','num_items','post_code'),
    reject_if_empty openads_smallint(1) NOT NULL DEFAULT '0',
    is_unique       openads_int(11) NOT NULL DEFAULT '0',
    unique_window   openads_int(11) NOT NULL DEFAULT '0',
    variablecode    openads_varchar(255) NOT NULL,
    hidden          openads_enum('t','f') NOT NULL DEFAULT 'f',
    updated         VARCHAR NOT NULL,
    is_unique       VARCHAR,
    trackerid       VARCHAR,
    variableid      VARCHAR,
    PRIMARY KEY (variableid ascending)
        PRIMARY KEY (variableid ascending)
        PRIMARY KEY (variableid ascending)
);
CREATE TABLE zones
(
    zoneid                  openads_mediumint(9) NOT NULL DEFAULT '0',
    affiliateid             openads_mediumint(9),
    zonename                openads_varchar(245) NOT NULL,
    description             openads_varchar(255) NOT NULL,
    delivery                openads_smallint(6) NOT NULL DEFAULT '0',
    zonetype                openads_smallint(6) NOT NULL DEFAULT '0',
    category                VARCHAR NOT NULL,
    width                   openads_smallint(6) NOT NULL DEFAULT '0',
    height                  openads_smallint(6) NOT NULL DEFAULT '0',
    ad_selection            VARCHAR NOT NULL,
    chain                   VARCHAR NOT NULL,
    prepend                 VARCHAR NOT NULL,
    append                  VARCHAR NOT NULL,
    appendtype              openads_tinyint(4) NOT NULL DEFAULT '0',
    forceappend             openads_enum('t','f') DEFAULT 'f',
    inventory_forecast_type openads_smallint(6) NOT NULL DEFAULT '0',
    comments                VARCHAR,
    cost                    openads_decimal(10,4),
    cost_type               openads_smallint(6),
    cost_variable_id        openads_varchar(255),
    technology_cost         openads_decimal(10,4),
    technology_cost_type    openads_smallint(6),
    updated                 VARCHAR NOT NULL,
    block                   openads_int(11) NOT NULL DEFAULT '0',
    capping                 openads_int(11) NOT NULL DEFAULT '0',
    session_capping         openads_int(11) NOT NULL DEFAULT '0',
    what                    VARCHAR NOT NULL,
    rate                    openads_decimal(19,2),
    pricing                 openads_varchar(50) NOT NULL DEFAULT 'CPM',
    oac_category_id         openads_int(11),
    ext_adselection         openads_varchar(255),
    show_capped_no_cookie   openads_tinyint(4) NOT NULL DEFAULT '0',
    zonename                VARCHAR,
    zoneid                  VARCHAR,
    affiliateid             VARCHAR,
    zoneid                  VARCHAR,
    PRIMARY KEY (zoneid ascending)
        PRIMARY KEY (zoneid ascending)
        PRIMARY KEY (zoneid ascending)
);