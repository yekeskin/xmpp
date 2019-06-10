%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-record(text, {lang = <<>> :: binary(),
               data = <<>> :: binary()}).
-type text() :: #text{}.

-type iq_type() :: get | set | result | error.
-type message_type() :: chat | error | groupchat | headline | normal.
-type presence_type() :: available | error | probe | subscribe |
			 subscribed | unavailable | unsubscribe |
			 unsubscribed.

-record(iq, {id = <<>> :: binary(),
             type :: iq_type(),
             lang = <<>> :: binary(),
             from :: undefined | jid:jid(),
             to :: undefined | jid:jid(),
             sub_els = [] :: [xmpp_element() | fxml:xmlel()],
	     meta = #{} :: map()}).
-type iq() :: #iq{}.

-record(message, {id = <<>> :: binary(),
                  type = normal :: message_type(),
                  lang = <<>> :: binary(),
                  from :: undefined | jid:jid(),
                  to :: undefined | jid:jid(),
                  mtype = <<>> :: binary(),
                  ctype = <<>> :: binary(),
                  thumbnail = <<>> :: binary(),
                  direct = <<>> :: binary(),
                  subject = [] :: [#text{}],
                  body = [] :: [#text{}],
                  thread :: undefined | message_thread(),
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()],
		  meta = #{} :: map()}).
-type message() :: #message{}.

-record(presence, {id = <<>> :: binary(),
                   type = available :: presence_type(),
                   lang = <<>> :: binary(),
                   from :: undefined | jid:jid(),
                   to :: undefined | jid:jid(),
                   show :: undefined | 'away' | 'chat' | 'dnd' | 'xa',
                   status = [] :: [#text{}],
                   priority :: undefined | integer(),
                   sub_els = [] :: [xmpp_element() | fxml:xmlel()],
		   meta = #{} :: map()}).
-type presence() :: #presence{}.

-record(ps_affiliation, {xmlns = <<>> :: binary(),
			 node = <<>> :: binary(),
			 type :: member | none | outcast |
				 owner | publisher | publish_only,
			 jid :: undefined | jid:jid()}).
-type ps_affiliation() :: #ps_affiliation{}.

-type ps_error_type() :: 'closed-node' | 'configuration-required' |
			 'invalid-jid' | 'invalid-options' |
			 'invalid-payload' | 'invalid-subid' |
			 'item-forbidden' | 'item-required' | 'jid-required' |
			 'max-items-exceeded' | 'max-nodes-exceeded' |
			 'nodeid-required' | 'not-in-roster-group' |
			 'not-subscribed' | 'payload-too-big' |
			 'payload-required' | 'pending-subscription' |
			 'precondition-not-met' |
			 'presence-subscription-required' | 'subid-required' |
			 'too-many-subscriptions' | 'unsupported' |
			 'unsupported-access-model'.
-type ps_feature() :: 'access-authorize' | 'access-open' |
		      'access-presence' | 'access-roster' |
		      'access-whitelist' | 'auto-create' |
		      'auto-subscribe' | 'collections' | 'config-node' |
		      'create-and-configure' | 'create-nodes' |
		      'delete-items' | 'delete-nodes' |
		      'filtered-notifications' | 'get-pending' |
		      'instant-nodes' | 'item-ids' | 'last-published' |
		      'leased-subscription' | 'manage-subscriptions' |
		      'member-affiliation' | 'meta-data' |
		      'modify-affiliations' | 'multi-collection' |
		      'multi-subscribe' | 'outcast-affiliation' |
		      'persistent-items' | 'presence-notifications' |
		      'presence-subscribe' | 'publish' |
		      'publish-options' | 'publish-only-affiliation' |
		      'publisher-affiliation' | 'purge-nodes' |
		      'retract-items' | 'retrieve-affiliations' |
		      'retrieve-default' | 'retrieve-items' |
		      'retrieve-subscriptions' | 'subscribe' |
		      'subscription-options' | 'subscription-notifications' |
		      'multi-items'.
-record(ps_error, {type :: ps_error_type(), feature :: ps_feature()}).
-type ps_error() :: #ps_error{}.

-record(chatstate, {type :: active | composing | gone | inactive | paused}).
-type chatstate() :: #chatstate{}.

-record(csi, {type :: active | inactive}).
-type csi() :: #csi{}.

-record(hint, {type :: 'no-copy' | 'no-store' | 'no-storage' | 'store' |
		       'no-permanent-store' | 'no-permanent-storage'}).
-type hint() :: #hint{}.

-record(jingle_error, {reason :: 'out-of-order' | 'tie-break' |
				 'unknown-session' | 'unsupported-info' |
				 'security-required'}).
-type jingle_error() :: #jingle_error{}.

-record(jingle_ft_error, {reason :: 'file-not-available' | 'file-too-large'}).
-type jingle_ft_error() :: #jingle_ft_error{}.

-type xmpp_host() :: binary() | inet:ip_address() |
		     {binary() | inet:ip_address(), inet:port_number()}.

-record(avatar_data, {data = <<>> :: binary()}).
-type avatar_data() :: #avatar_data{}.

-record(teknorota_push_unregister, {token = <<>> :: binary()}).
-type teknorota_push_unregister() :: #teknorota_push_unregister{}.

-record(feature_register, {}).
-type feature_register() :: #feature_register{}.

-record(address, {type :: 'bcc' | 'cc' | 'noreply' | 'ofrom' | 'replyroom' | 'replyto' | 'to',
                  jid :: undefined | jid:jid(),
                  desc = <<>> :: binary(),
                  node = <<>> :: binary(),
                  delivered :: 'false' | 'true' | 'undefined'}).
-type address() :: #address{}.

-record(sasl_success, {text = <<>> :: binary()}).
-type sasl_success() :: #sasl_success{}.

-record(teknorota_subscription_get_invoices, {}).
-type teknorota_subscription_get_invoices() :: #teknorota_subscription_get_invoices{}.

-record(adhoc_note, {type = info :: 'error' | 'info' | 'warn',
                     data = <<>> :: binary()}).
-type adhoc_note() :: #adhoc_note{}.

-record(mam_result, {xmlns = <<>> :: binary(),
                     queryid = <<>> :: binary(),
                     id = <<>> :: binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mam_result() :: #mam_result{}.

-record(rsm_first, {index :: 'undefined' | non_neg_integer(),
                    data = <<>> :: binary()}).
-type rsm_first() :: #rsm_first{}.

-record(teknorota_register_verify_init, {id = <<>> :: binary(),
                                         phone = <<>> :: binary(),
                                         country = <<>> :: binary(),
                                         type = <<>> :: binary()}).
-type teknorota_register_verify_init() :: #teknorota_register_verify_init{}.

-record(streamhost, {jid :: jid:jid(),
                     host = <<>> :: binary(),
                     port = 1080 :: non_neg_integer()}).
-type streamhost() :: #streamhost{}.

-record(x509_challenge_failed, {}).
-type x509_challenge_failed() :: #x509_challenge_failed{}.

-record(teknorota_fileshare_download, {id = <<>> :: binary(),
                                       data = <<>> :: binary()}).
-type teknorota_fileshare_download() :: #teknorota_fileshare_download{}.

-record(carbons_enable, {}).
-type carbons_enable() :: #carbons_enable{}.

-record(mix_create, {channel = <<>> :: binary()}).
-type mix_create() :: #mix_create{}.

-record(teknorota_profile_name, {cdata = <<>> :: binary()}).
-type teknorota_profile_name() :: #teknorota_profile_name{}.

-record(receipt_response, {id = <<>> :: binary()}).
-type receipt_response() :: #receipt_response{}.

-record(expire, {seconds :: non_neg_integer(),
                 stored :: 'undefined' | non_neg_integer()}).
-type expire() :: #expire{}.

-record(mix_leave, {}).
-type mix_leave() :: #mix_leave{}.

-record(teknorota_register_create_invoice, {'package-id' = <<>> :: binary(),
                                            'payment-type' = <<>> :: binary(),
                                            'user-id' = <<>> :: binary()}).
-type teknorota_register_create_invoice() :: #teknorota_register_create_invoice{}.

-record(muc_unsubscribe, {nick = <<>> :: binary(),
                          jid :: undefined | jid:jid()}).
-type muc_unsubscribe() :: #muc_unsubscribe{}.

-record(ps_unsubscribe, {node = <<>> :: binary(),
                         jid :: jid:jid(),
                         subid = <<>> :: binary()}).
-type ps_unsubscribe() :: #ps_unsubscribe{}.

-record(teknorota_register_virtual_complete, {'user-id' = <<>> :: binary(),
                                              jid = <<>> :: binary(),
                                              password = <<>> :: binary()}).
-type teknorota_register_virtual_complete() :: #teknorota_register_virtual_complete{}.

-record(sm_resume, {h :: non_neg_integer(),
                    previd = <<>> :: binary(),
                    xmlns = <<>> :: binary()}).
-type sm_resume() :: #sm_resume{}.

-record(teknorota_subscription_check_invoice, {id = <<>> :: binary()}).
-type teknorota_subscription_check_invoice() :: #teknorota_subscription_check_invoice{}.

-record(carbons_private, {}).
-type carbons_private() :: #carbons_private{}.

-record(ping, {}).
-type ping() :: #ping{}.

-record(delay, {stamp :: erlang:timestamp(),
                from :: undefined | jid:jid(),
                desc = <<>> :: binary()}).
-type delay() :: #delay{}.

-record(muc_history, {maxchars :: 'undefined' | non_neg_integer(),
                      maxstanzas :: 'undefined' | non_neg_integer(),
                      seconds :: 'undefined' | non_neg_integer(),
                      since :: undefined | erlang:timestamp()}).
-type muc_history() :: #muc_history{}.

-record(thumbnail, {uri = <<>> :: binary(),
                    'media-type' = <<>> :: binary(),
                    width :: 'undefined' | non_neg_integer(),
                    height :: 'undefined' | non_neg_integer()}).
-type thumbnail() :: #thumbnail{}.

-record(teknorota_fileshare_upconfirm, {id = <<>> :: binary(),
                                        data = <<>> :: binary()}).
-type teknorota_fileshare_upconfirm() :: #teknorota_fileshare_upconfirm{}.

-record(privilege_perm, {access :: 'message' | 'presence' | 'roster',
                         type :: 'both' | 'get' | 'managed_entity' | 'none' | 'outgoing' | 'roster' | 'set'}).
-type privilege_perm() :: #privilege_perm{}.

-record(ibb_open, {sid = <<>> :: binary(),
                   'block-size' :: non_neg_integer(),
                   stanza = iq :: 'iq' | 'message'}).
-type ibb_open() :: #ibb_open{}.

-record(muc_decline, {reason = <<>> :: binary(),
                      from :: undefined | jid:jid(),
                      to :: undefined | jid:jid()}).
-type muc_decline() :: #muc_decline{}.

-record(upload_slot_0, {get :: binary(),
                        put :: binary(),
                        xmlns = <<>> :: binary()}).
-type upload_slot_0() :: #upload_slot_0{}.

-record(upload_request_0, {filename = <<>> :: binary(),
                           size :: pos_integer(),
                           'content-type' = <<>> :: binary(),
                           xmlns = <<>> :: binary()}).
-type upload_request_0() :: #upload_request_0{}.

-record(ibb_data, {sid = <<>> :: binary(),
                   seq :: non_neg_integer(),
                   data = <<>> :: binary()}).
-type ibb_data() :: #ibb_data{}.

-record(sm_a, {h :: non_neg_integer(),
               xmlns = <<>> :: binary()}).
-type sm_a() :: #sm_a{}.

-record(x509_csr, {name = <<>> :: binary(),
                   der = <<>> :: binary()}).
-type x509_csr() :: #x509_csr{}.

-record(teknorota_profile_set_success, {}).
-type teknorota_profile_set_success() :: #teknorota_profile_set_success{}.

-record(jingle_ft_received, {creator :: 'initiator' | 'responder' | 'undefined',
                             name = <<>> :: binary()}).
-type jingle_ft_received() :: #jingle_ft_received{}.

-record(starttls_proceed, {}).
-type starttls_proceed() :: #starttls_proceed{}.

-record(teknorota_push_unregistered, {}).
-type teknorota_push_unregistered() :: #teknorota_push_unregistered{}.

-record(sm_resumed, {h :: non_neg_integer(),
                     previd = <<>> :: binary(),
                     xmlns = <<>> :: binary()}).
-type sm_resumed() :: #sm_resumed{}.

-record(teknorota_profile_lastupdated, {cdata = <<>> :: binary()}).
-type teknorota_profile_lastupdated() :: #teknorota_profile_lastupdated{}.

-record(x509_request, {transaction = <<>> :: binary(),
                       csr :: #x509_csr{},
                       cert :: 'undefined' | binary(),
                       signature :: 'undefined' | binary()}).
-type x509_request() :: #x509_request{}.

-record(stream_start, {from :: undefined | jid:jid(),
                       to :: undefined | jid:jid(),
                       id = <<>> :: binary(),
                       version :: 'undefined' | {non_neg_integer(),non_neg_integer()},
                       xmlns = <<>> :: binary(),
                       stream_xmlns = <<>> :: binary(),
                       db_xmlns = <<>> :: binary(),
                       lang = <<>> :: binary()}).
-type stream_start() :: #stream_start{}.

-record(muc_subscribe, {nick = <<>> :: binary(),
                        password = <<>> :: binary(),
                        jid :: undefined | jid:jid(),
                        events = [] :: [binary()]}).
-type muc_subscribe() :: #muc_subscribe{}.

-record(jingle_ibb_transport, {sid = <<>> :: binary(),
                               'block-size' :: non_neg_integer(),
                               stanza = iq :: 'iq' | 'message'}).
-type jingle_ibb_transport() :: #jingle_ibb_transport{}.

-record(stanza_id, {by :: jid:jid(),
                    id = <<>> :: binary()}).
-type stanza_id() :: #stanza_id{}.

-record(teknorota_push_registered, {}).
-type teknorota_push_registered() :: #teknorota_push_registered{}.

-record(forwarded, {delay :: 'undefined' | #delay{},
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type forwarded() :: #forwarded{}.

-record(privilege, {perms = [] :: [#privilege_perm{}],
                    forwarded :: 'undefined' | #forwarded{}}).
-type privilege() :: #privilege{}.

-record(message_thread, {parent = <<>> :: binary(),
                         data = <<>> :: binary()}).
-type message_thread() :: #message_thread{}.

-record(jingle_content, {creator :: 'initiator' | 'responder',
                         disposition = <<>> :: binary(),
                         name = <<>> :: binary(),
                         senders = both :: 'both' | 'initiator' | 'none' | 'responder',
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_content() :: #jingle_content{}.

-record(sasl_challenge, {text = <<>> :: binary()}).
-type sasl_challenge() :: #sasl_challenge{}.

-record(teknorota_register_package, {id = <<>> :: binary(),
                                     name = <<>> :: binary(),
                                     price = <<>> :: binary(),
                                     'price-virtual' = <<>> :: binary(),
                                     currency = <<>> :: binary(),
                                     duration = <<>> :: binary()}).
-type teknorota_register_package() :: #teknorota_register_package{}.

-record(teknorota_register_packages, {packages = [] :: [#teknorota_register_package{}]}).
-type teknorota_register_packages() :: #teknorota_register_packages{}.

-record(handshake, {data = <<>> :: binary()}).
-type handshake() :: #handshake{}.

-record(db_feature, {errors = false :: boolean()}).
-type db_feature() :: #db_feature{}.

-record(x_conference, {jid :: jid:jid(),
                       password = <<>> :: binary(),
                       reason = <<>> :: binary(),
                       continue :: 'false' | 'true' | 'undefined',
                       thread = <<>> :: binary()}).
-type x_conference() :: #x_conference{}.

-record(private, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type private() :: #private{}.

-record(teknorota_subscription_invoice, {id = <<>> :: binary(),
                                         token = <<>> :: binary(),
                                         success = <<>> :: binary(),
                                         'package-id' = <<>> :: binary(),
                                         'package-price' = <<>> :: binary(),
                                         currency = <<>> :: binary(),
                                         charge = <<>> :: binary(),
                                         duration = <<>> :: binary(),
                                         'is-paid' = <<>> :: binary(),
                                         'created-at' = <<>> :: binary(),
                                         type = <<>> :: binary()}).
-type teknorota_subscription_invoice() :: #teknorota_subscription_invoice{}.

-record(teknorota_subscription_invoices, {invoices = [] :: [#teknorota_subscription_invoice{}]}).
-type teknorota_subscription_invoices() :: #teknorota_subscription_invoices{}.

-record(teknorota_register_verify_complete, {id = <<>> :: binary(),
                                             phone = <<>> :: binary(),
                                             country = <<>> :: binary(),
                                             code = <<>> :: binary(),
                                             jid = <<>> :: binary(),
                                             password = <<>> :: binary()}).
-type teknorota_register_verify_complete() :: #teknorota_register_verify_complete{}.

-record(ibb_close, {sid = <<>> :: binary()}).
-type ibb_close() :: #ibb_close{}.

-record(sm_enable, {max :: 'undefined' | non_neg_integer(),
                    resume = false :: boolean(),
                    xmlns = <<>> :: binary()}).
-type sm_enable() :: #sm_enable{}.

-record(starttls_failure, {}).
-type starttls_failure() :: #starttls_failure{}.

-record(gone, {uri = <<>> :: binary()}).
-type gone() :: #gone{}.

-record(hash, {algo = <<>> :: binary(),
               data = <<>> :: binary()}).
-type hash() :: #hash{}.

-record(jingle_ft_range, {offset = 0 :: non_neg_integer(),
                          length :: 'undefined' | non_neg_integer(),
                          hash = [] :: [#hash{}]}).
-type jingle_ft_range() :: #jingle_ft_range{}.

-record(delegation_query, {to :: jid:jid(),
                           delegate = [] :: [binary()]}).
-type delegation_query() :: #delegation_query{}.

-record(db_verify, {from = <<>> :: binary(),
                    to = <<>> :: binary(),
                    id = <<>> :: binary(),
                    type :: 'error' | 'invalid' | 'undefined' | 'valid',
                    key = <<>> :: binary(),
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type db_verify() :: #db_verify{}.

-record(nick, {name = <<>> :: binary()}).
-type nick() :: #nick{}.

-record(roster_item, {jid :: jid:jid(),
                      name = <<>> :: binary(),
                      groups = [] :: [binary()],
                      subscription = none :: 'both' | 'from' | 'none' | 'remove' | 'to',
                      ask :: 'subscribe' | 'undefined'}).
-type roster_item() :: #roster_item{}.

-record(roster_query, {items = [] :: [#roster_item{}],
                       ver :: 'undefined' | binary()}).
-type roster_query() :: #roster_query{}.

-record(feature_sm, {xmlns = <<>> :: binary()}).
-type feature_sm() :: #feature_sm{}.

-record(ps_item, {xmlns = <<>> :: binary(),
                  id = <<>> :: binary(),
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()],
                  node = <<>> :: binary(),
                  publisher = <<>> :: binary()}).
-type ps_item() :: #ps_item{}.

-record(ps_publish, {node = <<>> :: binary(),
                     items = [] :: [#ps_item{}]}).
-type ps_publish() :: #ps_publish{}.

-record(teknorota_subscription_info, {}).
-type teknorota_subscription_info() :: #teknorota_subscription_info{}.

-record(avatar_pointer, {bytes :: 'undefined' | non_neg_integer(),
                         id = <<>> :: binary(),
                         type = <<>> :: binary(),
                         height :: 'undefined' | non_neg_integer(),
                         width :: 'undefined' | non_neg_integer(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type avatar_pointer() :: #avatar_pointer{}.

-record(sm_r, {xmlns = <<>> :: binary()}).
-type sm_r() :: #sm_r{}.

-record(muc_actor, {jid :: undefined | jid:jid(),
                    nick = <<>> :: binary()}).
-type muc_actor() :: #muc_actor{}.

-record(stat_error, {code :: integer(),
                     reason = <<>> :: binary()}).
-type stat_error() :: #stat_error{}.

-record(stat, {name = <<>> :: binary(),
               units = <<>> :: binary(),
               value = <<>> :: binary(),
               error :: 'undefined' | #stat_error{}}).
-type stat() :: #stat{}.

-record(addresses, {list = [] :: [#address{}]}).
-type addresses() :: #addresses{}.

-record(teknorota_subscription_get_packages, {}).
-type teknorota_subscription_get_packages() :: #teknorota_subscription_get_packages{}.

-record(teknorota_profile_get, {jid = <<>> :: binary()}).
-type teknorota_profile_get() :: #teknorota_profile_get{}.

-record(starttls, {required = false :: boolean()}).
-type starttls() :: #starttls{}.

-record(last, {seconds :: 'undefined' | non_neg_integer(),
               status = <<>> :: binary()}).
-type last() :: #last{}.

-record(teknorota_fileshare_upload, {id = <<>> :: binary(),
                                     type = <<>> :: binary(),
                                     size = <<>> :: binary(),
                                     data = <<>> :: binary()}).
-type teknorota_fileshare_upload() :: #teknorota_fileshare_upload{}.

-record(teknorota_fileshare_query, {upload = [] :: [#teknorota_fileshare_upload{}],
                                    download = [] :: [#teknorota_fileshare_download{}],
                                    upconfirm = [] :: [#teknorota_fileshare_upconfirm{}]}).
-type teknorota_fileshare_query() :: #teknorota_fileshare_query{}.

-record(teknorota_register_virtual_init, {'user-id' = <<>> :: binary()}).
-type teknorota_register_virtual_init() :: #teknorota_register_virtual_init{}.

-record('see-other-host', {host :: binary() | inet:ip_address() | {binary() | inet:ip_address(),inet:port_number()}}).
-type 'see-other-host'() :: #'see-other-host'{}.

-record(compress, {methods = [] :: [binary()]}).
-type compress() :: #compress{}.

-record(redirect, {uri = <<>> :: binary()}).
-type redirect() :: #redirect{}.

-record(sm_enabled, {id = <<>> :: binary(),
                     location = <<>> :: binary(),
                     max :: 'undefined' | non_neg_integer(),
                     resume = false :: boolean(),
                     xmlns = <<>> :: binary()}).
-type sm_enabled() :: #sm_enabled{}.

-record(upload_file_too_large, {'max-file-size' :: 'undefined' | integer(),
                                xmlns = <<>> :: binary()}).
-type upload_file_too_large() :: #upload_file_too_large{}.

-record(legacy_auth, {username :: 'undefined' | binary(),
                      password :: 'undefined' | binary(),
                      digest :: 'undefined' | binary(),
                      resource :: 'undefined' | binary()}).
-type legacy_auth() :: #legacy_auth{}.

-record(teknorota_subscription_create_invoice, {'package-id' = <<>> :: binary(),
                                                'payment-type' = <<>> :: binary()}).
-type teknorota_subscription_create_invoice() :: #teknorota_subscription_create_invoice{}.

-record(ps_subscribe, {node = <<>> :: binary(),
                       jid :: jid:jid()}).
-type ps_subscribe() :: #ps_subscribe{}.

-record(teknorota_register_invoice, {id = <<>> :: binary(),
                                     token = <<>> :: binary(),
                                     success = <<>> :: binary()}).
-type teknorota_register_invoice() :: #teknorota_register_invoice{}.

-record(idle, {since :: erlang:timestamp()}).
-type idle() :: #idle{}.

-record(muc_unique, {name = <<>> :: binary()}).
-type muc_unique() :: #muc_unique{}.

-record(teknorota_subscription_package, {id = <<>> :: binary(),
                                         name = <<>> :: binary(),
                                         price = <<>> :: binary(),
                                         'price-virtual' = <<>> :: binary(),
                                         currency = <<>> :: binary(),
                                         duration = <<>> :: binary()}).
-type teknorota_subscription_package() :: #teknorota_subscription_package{}.

-record(teknorota_subscription_packages, {packages = [] :: [#teknorota_subscription_package{}]}).
-type teknorota_subscription_packages() :: #teknorota_subscription_packages{}.

-record(sasl_response, {text = <<>> :: binary()}).
-type sasl_response() :: #sasl_response{}.

-record(x509_revoke, {cert :: binary(),
                      signature :: binary()}).
-type x509_revoke() :: #x509_revoke{}.

-record(sasl_auth, {mechanism = <<>> :: binary(),
                    text = <<>> :: binary()}).
-type sasl_auth() :: #sasl_auth{}.

-record(teknorota_profile_hash, {cdata = <<>> :: binary()}).
-type teknorota_profile_hash() :: #teknorota_profile_hash{}.

-record(teknorota_profile_key, {cdata = <<>> :: binary()}).
-type teknorota_profile_key() :: #teknorota_profile_key{}.

-record(upload_retry, {stamp :: undefined | erlang:timestamp()}).
-type upload_retry() :: #upload_retry{}.

-record(feature_csi, {}).
-type feature_csi() :: #feature_csi{}.

-record(teknorota_profile_last_seen_el, {jid = <<>> :: binary(),
                                         cdata = <<>> :: binary()}).
-type teknorota_profile_last_seen_el() :: #teknorota_profile_last_seen_el{}.

-record(report, {reason :: 'abuse' | 'spam' | 'undefined',
                 text = [] :: [#text{}]}).
-type report() :: #report{}.

-record(block_item, {jid :: jid:jid(),
                     spam_report :: 'undefined' | #report{}}).
-type block_item() :: #block_item{}.

-record(unblock, {items = [] :: [#block_item{}]}).
-type unblock() :: #unblock{}.

-record(block, {items = [] :: [#block_item{}]}).
-type block() :: #block{}.

-record(disco_item, {jid :: jid:jid(),
                     name = <<>> :: binary(),
                     node = <<>> :: binary()}).
-type disco_item() :: #disco_item{}.

-record(compression, {methods = [] :: [binary()]}).
-type compression() :: #compression{}.

-record(muc_subscription, {jid :: undefined | jid:jid(),
                           nick = <<>> :: binary(),
                           events = [] :: [binary()]}).
-type muc_subscription() :: #muc_subscription{}.

-record(muc_subscriptions, {list = [] :: [#muc_subscription{}]}).
-type muc_subscriptions() :: #muc_subscriptions{}.

-record(x509_cert_chain, {name = <<>> :: binary(),
                          certs = [] :: [binary()]}).
-type x509_cert_chain() :: #x509_cert_chain{}.

-record(ps_subscription, {xmlns = <<>> :: binary(),
                          jid :: jid:jid(),
                          type :: 'none' | 'pending' | 'subscribed' | 'unconfigured' | 'undefined',
                          node = <<>> :: binary(),
                          subid = <<>> :: binary(),
                          expiry :: undefined | erlang:timestamp()}).
-type ps_subscription() :: #ps_subscription{}.

-record(teknorota_subscription, {'end' = <<>> :: binary(),
                                 remaining = <<>> :: binary()}).
-type teknorota_subscription() :: #teknorota_subscription{}.

-record(avatar_info, {bytes :: non_neg_integer(),
                      id = <<>> :: binary(),
                      type = <<>> :: binary(),
                      height :: 'undefined' | non_neg_integer(),
                      width :: 'undefined' | non_neg_integer(),
                      url = <<>> :: binary()}).
-type avatar_info() :: #avatar_info{}.

-record(avatar_meta, {info = [] :: [#avatar_info{}],
                      pointer :: 'undefined' | #avatar_pointer{}}).
-type avatar_meta() :: #avatar_meta{}.

-record(bob_data, {cid = <<>> :: binary(),
                   'max-age' :: 'undefined' | non_neg_integer(),
                   type = <<>> :: binary(),
                   data = <<>> :: binary()}).
-type bob_data() :: #bob_data{}.

-record(x509_register, {}).
-type x509_register() :: #x509_register{}.

-record(shim, {headers = [] :: [{binary(),binary()}]}).
-type shim() :: #shim{}.

-record(teknorota_profile_avatar, {cdata = <<>> :: binary()}).
-type teknorota_profile_avatar() :: #teknorota_profile_avatar{}.

-record(teknorota_profile_user, {jid = <<>> :: binary(),
                                 lastupdated = <<>> :: binary()}).
-type teknorota_profile_user() :: #teknorota_profile_user{}.

-record(teknorota_profile_get_updated, {users = [] :: [#teknorota_profile_user{}]}).
-type teknorota_profile_get_updated() :: #teknorota_profile_get_updated{}.

-record(teknorota_push_register, {token = <<>> :: binary(),
                                  type = <<>> :: binary()}).
-type teknorota_push_register() :: #teknorota_push_register{}.

-record(teknorota_push_query, {register = [] :: [#teknorota_push_register{}],
                               unregister = [] :: [#teknorota_push_unregister{}]}).
-type teknorota_push_query() :: #teknorota_push_query{}.

-record(muc_item, {actor :: 'undefined' | #muc_actor{},
                   continue :: 'undefined' | binary(),
                   reason = <<>> :: binary(),
                   affiliation :: 'admin' | 'member' | 'none' | 'outcast' | 'owner' | 'undefined',
                   role :: 'moderator' | 'none' | 'participant' | 'undefined' | 'visitor',
                   jid :: undefined | jid:jid(),
                   nick = <<>> :: binary()}).
-type muc_item() :: #muc_item{}.

-record(muc_admin, {items = [] :: [#muc_item{}]}).
-type muc_admin() :: #muc_admin{}.

-record(teknorota_profile_status, {cdata = <<>> :: binary()}).
-type teknorota_profile_status() :: #teknorota_profile_status{}.

-record(teknorota_profile_el, {jid = <<>> :: binary(),
                               name = [] :: [#teknorota_profile_name{}],
                               avatar = [] :: [#teknorota_profile_avatar{}],
                               key = [] :: [#teknorota_profile_key{}],
                               hash = [] :: [#teknorota_profile_hash{}],
                               status = [] :: [#teknorota_profile_status{}],
                               lastupdated = [] :: [#teknorota_profile_lastupdated{}]}).
-type teknorota_profile_el() :: #teknorota_profile_el{}.

-record(teknorota_profile_set, {name = [] :: [#teknorota_profile_name{}],
                                avatar = [] :: [#teknorota_profile_avatar{}],
                                key = [] :: [#teknorota_profile_key{}],
                                hash = [] :: [#teknorota_profile_hash{}],
                                status = [] :: [#teknorota_profile_status{}]}).
-type teknorota_profile_set() :: #teknorota_profile_set{}.

-record(teknorota_register_get_packages, {}).
-type teknorota_register_get_packages() :: #teknorota_register_get_packages{}.

-record(caps, {node = <<>> :: binary(),
               version = <<>> :: binary(),
               hash = <<>> :: binary(),
               exts = [] :: [binary()]}).
-type caps() :: #caps{}.

-record(muc, {history :: 'undefined' | #muc_history{},
              password :: 'undefined' | binary()}).
-type muc() :: #muc{}.

-record(stats, {list = [] :: [#stat{}],
                node = <<>> :: binary()}).
-type stats() :: #stats{}.

-record(ps_items, {xmlns = <<>> :: binary(),
                   node = <<>> :: binary(),
                   items = [] :: [#ps_item{}],
                   max_items :: 'undefined' | non_neg_integer(),
                   subid = <<>> :: binary(),
                   retract :: 'undefined' | binary()}).
-type ps_items() :: #ps_items{}.

-record(mam_prefs, {xmlns = <<>> :: binary(),
                    default :: 'always' | 'never' | 'roster' | 'undefined',
                    always :: undefined | [jid:jid()],
                    never :: undefined | [jid:jid()]}).
-type mam_prefs() :: #mam_prefs{}.

-record(stream_features, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stream_features() :: #stream_features{}.

-record(sic, {ip :: undefined | inet:ip_address(),
              port :: 'undefined' | non_neg_integer(),
              xmlns = <<>> :: binary()}).
-type sic() :: #sic{}.

-record(receipt_request, {}).
-type receipt_request() :: #receipt_request{}.

-record(vcard_email, {home = false :: boolean(),
                      work = false :: boolean(),
                      internet = false :: boolean(),
                      pref = false :: boolean(),
                      x400 = false :: boolean(),
                      userid :: 'undefined' | binary()}).
-type vcard_email() :: #vcard_email{}.

-record(db_result, {from = <<>> :: binary(),
                    to = <<>> :: binary(),
                    type :: 'error' | 'invalid' | 'undefined' | 'valid',
                    key = <<>> :: binary(),
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type db_result() :: #db_result{}.

-record(carbons_received, {forwarded :: #forwarded{}}).
-type carbons_received() :: #carbons_received{}.

-record(ps_retract, {node = <<>> :: binary(),
                     notify = false :: boolean(),
                     items = [] :: [#ps_item{}]}).
-type ps_retract() :: #ps_retract{}.

-record(vcard_geo, {lat :: 'undefined' | binary(),
                    lon :: 'undefined' | binary()}).
-type vcard_geo() :: #vcard_geo{}.

-record(sasl_failure, {reason :: 'aborted' | 'account-disabled' | 'bad-protocol' | 'credentials-expired' | 'encryption-required' | 'incorrect-encoding' | 'invalid-authzid' | 'invalid-mechanism' | 'malformed-request' | 'mechanism-too-weak' | 'not-authorized' | 'temporary-auth-failure' | 'undefined',
                       text = [] :: [#text{}]}).
-type sasl_failure() :: #sasl_failure{}.

-record(hash_used, {algo = <<>> :: binary()}).
-type hash_used() :: #hash_used{}.

-record(mix, {submission_id = <<>> :: binary(),
              jid :: undefined | jid:jid(),
              nick = <<>> :: binary()}).
-type mix() :: #mix{}.

-record(carbons_sent, {forwarded :: #forwarded{}}).
-type carbons_sent() :: #carbons_sent{}.

-record(mam_archived, {by :: jid:jid(),
                       id = <<>> :: binary()}).
-type mam_archived() :: #mam_archived{}.

-record(compress_failure, {reason :: 'processing-failed' | 'setup-failed' | 'undefined' | 'unsupported-method'}).
-type compress_failure() :: #compress_failure{}.

-record(origin_id, {id = <<>> :: binary()}).
-type origin_id() :: #origin_id{}.

-record(x509_ca_list, {certs = [] :: [binary()]}).
-type x509_ca_list() :: #x509_ca_list{}.

-record(mix_participant, {jid :: jid:jid(),
                          nick = <<>> :: binary()}).
-type mix_participant() :: #mix_participant{}.

-record(compressed, {}).
-type compressed() :: #compressed{}.

-record(block_list, {items = [] :: [#block_item{}]}).
-type block_list() :: #block_list{}.

-record(upload_slot, {get :: 'undefined' | binary(),
                      put :: 'undefined' | binary(),
                      xmlns = <<>> :: binary()}).
-type upload_slot() :: #upload_slot{}.

-record(xevent, {offline = false :: boolean(),
                 delivered = false :: boolean(),
                 displayed = false :: boolean(),
                 composing = false :: boolean(),
                 id :: 'undefined' | binary()}).
-type xevent() :: #xevent{}.

-record(sasl_abort, {}).
-type sasl_abort() :: #sasl_abort{}.

-record(jingle_ft_file, {date :: undefined | erlang:timestamp(),
                         desc = [] :: [#text{}],
                         hash = [] :: [#hash{}],
                         'hash-used' :: 'undefined' | #hash_used{},
                         'media-type' :: 'undefined' | binary(),
                         name :: 'undefined' | binary(),
                         size :: 'undefined' | non_neg_integer(),
                         range :: 'undefined' | #jingle_ft_range{}}).
-type jingle_ft_file() :: #jingle_ft_file{}.

-record(jingle_ft_checksum, {creator :: 'initiator' | 'responder' | 'undefined',
                             name = <<>> :: binary(),
                             file :: #jingle_ft_file{}}).
-type jingle_ft_checksum() :: #jingle_ft_checksum{}.

-record(jingle_ft_description, {file :: 'undefined' | #jingle_ft_file{}}).
-type jingle_ft_description() :: #jingle_ft_description{}.

-record(mix_client_leave, {channel :: undefined | jid:jid(),
                           leave :: #mix_leave{}}).
-type mix_client_leave() :: #mix_client_leave{}.

-record(legacy_auth_feature, {}).
-type legacy_auth_feature() :: #legacy_auth_feature{}.

-record(bind, {jid :: undefined | jid:jid(),
               resource = <<>> :: binary()}).
-type bind() :: #bind{}.

-record(rosterver_feature, {}).
-type rosterver_feature() :: #rosterver_feature{}.

-record(x509_challenge, {transaction = <<>> :: binary(),
                         uri = <<>> :: binary(),
                         signature :: binary()}).
-type x509_challenge() :: #x509_challenge{}.

-record(muc_invite, {reason = <<>> :: binary(),
                     from :: undefined | jid:jid(),
                     to :: undefined | jid:jid(),
                     continue :: 'undefined' | binary()}).
-type muc_invite() :: #muc_invite{}.

-record(vcard_xupdate, {hash :: 'undefined' | binary()}).
-type vcard_xupdate() :: #vcard_xupdate{}.

-record(bytestreams, {hosts = [] :: [#streamhost{}],
                      used :: undefined | jid:jid(),
                      activate :: undefined | jid:jid(),
                      dstaddr = <<>> :: binary(),
                      mode = tcp :: 'tcp' | 'udp',
                      sid = <<>> :: binary()}).
-type bytestreams() :: #bytestreams{}.

-record(teknorota_subscription_pay_invoice, {id = <<>> :: binary(),
                                             token = <<>> :: binary(),
                                             email = <<>> :: binary()}).
-type teknorota_subscription_pay_invoice() :: #teknorota_subscription_pay_invoice{}.

-record(teknorota_subscription_query, {subscription_info = [] :: [#teknorota_subscription_info{}],
                                       get_packages = [] :: [#teknorota_subscription_get_packages{}],
                                       create_invoice = [] :: [#teknorota_subscription_create_invoice{}],
                                       pay_invoice = [] :: [#teknorota_subscription_pay_invoice{}],
                                       check_invoice = [] :: [#teknorota_subscription_check_invoice{}],
                                       get_invoices = [] :: [#teknorota_subscription_get_invoices{}]}).
-type teknorota_subscription_query() :: #teknorota_subscription_query{}.

-record(upload_request, {filename :: binary(),
                         size :: non_neg_integer(),
                         'content-type' = <<>> :: binary(),
                         xmlns = <<>> :: binary()}).
-type upload_request() :: #upload_request{}.

-record(xdata_option, {label = <<>> :: binary(),
                       value :: binary()}).
-type xdata_option() :: #xdata_option{}.

-record(xdata_field, {label = <<>> :: binary(),
                      type :: 'boolean' | 'fixed' | 'hidden' | 'jid-multi' | 'jid-single' | 'list-multi' | 'list-single' | 'text-multi' | 'text-private' | 'text-single' | 'undefined',
                      var = <<>> :: binary(),
                      required = false :: boolean(),
                      desc = <<>> :: binary(),
                      values = [] :: [binary()],
                      options = [] :: [#xdata_option{}],
                      sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xdata_field() :: #xdata_field{}.

-record(push_disable, {jid :: jid:jid(),
                       node = <<>> :: binary()}).
-type push_disable() :: #push_disable{}.

-record(teknorota_register_check_invoice, {id = <<>> :: binary(),
                                           'user-id' = <<>> :: binary()}).
-type teknorota_register_check_invoice() :: #teknorota_register_check_invoice{}.

-record(jingle_s5b_candidate, {cid = <<>> :: binary(),
                               host :: inet:ip_address(),
                               port :: 'undefined' | non_neg_integer(),
                               jid :: jid:jid(),
                               type = direct :: 'assisted' | 'direct' | 'proxy' | 'tunnel',
                               priority :: non_neg_integer()}).
-type jingle_s5b_candidate() :: #jingle_s5b_candidate{}.

-record(jingle_s5b_transport, {sid = <<>> :: binary(),
                               dstaddr = <<>> :: binary(),
                               mode = tcp :: 'tcp' | 'udp',
                               candidates = [] :: [#jingle_s5b_candidate{}],
                               'candidate-used' :: 'undefined' | binary(),
                               activated :: 'undefined' | binary(),
                               error :: 'candidate-error' | 'proxy-error' | 'undefined'}).
-type jingle_s5b_transport() :: #jingle_s5b_transport{}.

-record(teknorota_register_pay_invoice, {id = <<>> :: binary(),
                                         token = <<>> :: binary(),
                                         email = <<>> :: binary(),
                                         'user-id' = <<>> :: binary()}).
-type teknorota_register_pay_invoice() :: #teknorota_register_pay_invoice{}.

-record(teknorota_register_query, {verify_init = [] :: [#teknorota_register_verify_init{}],
                                   verify_complete = [] :: [#teknorota_register_verify_complete{}],
                                   get_packages = [] :: [#teknorota_register_get_packages{}],
                                   create_invoice = [] :: [#teknorota_register_create_invoice{}],
                                   pay_invoice = [] :: [#teknorota_register_pay_invoice{}],
                                   check_invoice = [] :: [#teknorota_register_check_invoice{}],
                                   virtual_init = [] :: [#teknorota_register_virtual_init{}],
                                   virtual_complete = [] :: [#teknorota_register_virtual_complete{}]}).
-type teknorota_register_query() :: #teknorota_register_query{}.

-record(delegated, {ns = <<>> :: binary(),
                    attrs = [] :: [binary()]}).
-type delegated() :: #delegated{}.

-record(carbons_disable, {}).
-type carbons_disable() :: #carbons_disable{}.

-record(version, {name :: 'undefined' | binary(),
                  ver :: 'undefined' | binary(),
                  os :: 'undefined' | binary()}).
-type version() :: #version{}.

-record(adhoc_actions, {execute :: 'complete' | 'next' | 'prev' | 'undefined',
                        prev = false :: boolean(),
                        next = false :: boolean(),
                        complete = false :: boolean()}).
-type adhoc_actions() :: #adhoc_actions{}.

-record(teknorota_profile_get_existing, {users = [] :: [#teknorota_profile_user{}]}).
-type teknorota_profile_get_existing() :: #teknorota_profile_get_existing{}.

-record(vcard_org, {name :: 'undefined' | binary(),
                    units = [] :: [binary()]}).
-type vcard_org() :: #vcard_org{}.

-record(vcard_tel, {home = false :: boolean(),
                    work = false :: boolean(),
                    voice = false :: boolean(),
                    fax = false :: boolean(),
                    pager = false :: boolean(),
                    msg = false :: boolean(),
                    cell = false :: boolean(),
                    video = false :: boolean(),
                    bbs = false :: boolean(),
                    modem = false :: boolean(),
                    isdn = false :: boolean(),
                    pcs = false :: boolean(),
                    pref = false :: boolean(),
                    number :: 'undefined' | binary()}).
-type vcard_tel() :: #vcard_tel{}.

-record(rsm_set, {'after' :: 'undefined' | binary(),
                  before :: 'undefined' | binary(),
                  count :: 'undefined' | non_neg_integer(),
                  first :: 'undefined' | #rsm_first{},
                  index :: 'undefined' | non_neg_integer(),
                  last :: 'undefined' | binary(),
                  max :: 'undefined' | non_neg_integer()}).
-type rsm_set() :: #rsm_set{}.

-record(mam_fin, {xmlns = <<>> :: binary(),
                  id = <<>> :: binary(),
                  rsm :: 'undefined' | #rsm_set{},
                  stable :: 'false' | 'true' | 'undefined',
                  complete :: 'false' | 'true' | 'undefined'}).
-type mam_fin() :: #mam_fin{}.

-record(disco_items, {node = <<>> :: binary(),
                      items = [] :: [#disco_item{}],
                      rsm :: 'undefined' | #rsm_set{}}).
-type disco_items() :: #disco_items{}.

-record(vcard_name, {family :: 'undefined' | binary(),
                     given :: 'undefined' | binary(),
                     middle :: 'undefined' | binary(),
                     prefix :: 'undefined' | binary(),
                     suffix :: 'undefined' | binary()}).
-type vcard_name() :: #vcard_name{}.

-record(media_uri, {type = <<>> :: binary(),
                    uri = <<>> :: binary()}).
-type media_uri() :: #media_uri{}.

-record(media, {height :: 'undefined' | non_neg_integer(),
                width :: 'undefined' | non_neg_integer(),
                uri = [] :: [#media_uri{}]}).
-type media() :: #media{}.

-record(mix_destroy, {channel :: any()}).
-type mix_destroy() :: #mix_destroy{}.

-record(vcard_key, {type :: 'undefined' | binary(),
                    cred :: 'undefined' | binary()}).
-type vcard_key() :: #vcard_key{}.

-record(identity, {category = <<>> :: binary(),
                   type = <<>> :: binary(),
                   lang = <<>> :: binary(),
                   name = <<>> :: binary()}).
-type identity() :: #identity{}.

-record(muc_destroy, {xmlns = <<>> :: binary(),
                      jid :: undefined | jid:jid(),
                      reason = <<>> :: binary(),
                      password :: 'undefined' | binary()}).
-type muc_destroy() :: #muc_destroy{}.

-record(muc_user, {decline :: 'undefined' | #muc_decline{},
                   destroy :: 'undefined' | #muc_destroy{},
                   invites = [] :: [#muc_invite{}],
                   items = [] :: [#muc_item{}],
                   status_codes = [] :: [pos_integer()],
                   password :: 'undefined' | binary()}).
-type muc_user() :: #muc_user{}.

-record(bookmark_conference, {name = <<>> :: binary(),
                              jid :: jid:jid(),
                              autojoin = false :: boolean(),
                              nick :: 'undefined' | binary(),
                              password :: 'undefined' | binary()}).
-type bookmark_conference() :: #bookmark_conference{}.

-record(mix_setnick, {nick :: binary()}).
-type mix_setnick() :: #mix_setnick{}.

-record(xmpp_session, {optional = false :: boolean()}).
-type xmpp_session() :: #xmpp_session{}.

-record(bookmark_url, {name = <<>> :: binary(),
                       url = <<>> :: binary()}).
-type bookmark_url() :: #bookmark_url{}.

-record(bookmark_storage, {conference = [] :: [#bookmark_conference{}],
                           url = [] :: [#bookmark_url{}]}).
-type bookmark_storage() :: #bookmark_storage{}.

-record(oob_x, {url :: binary(),
                desc = <<>> :: binary(),
                sid = <<>> :: binary()}).
-type oob_x() :: #oob_x{}.

-record(vcard_sound, {phonetic :: 'undefined' | binary(),
                      binval :: 'undefined' | binary(),
                      extval :: 'undefined' | binary()}).
-type vcard_sound() :: #vcard_sound{}.

-record(vcard_photo, {type :: 'undefined' | binary(),
                      binval :: 'undefined' | binary(),
                      extval :: 'undefined' | binary()}).
-type vcard_photo() :: #vcard_photo{}.

-record(vcard_label, {home = false :: boolean(),
                      work = false :: boolean(),
                      postal = false :: boolean(),
                      parcel = false :: boolean(),
                      dom = false :: boolean(),
                      intl = false :: boolean(),
                      pref = false :: boolean(),
                      line = [] :: [binary()]}).
-type vcard_label() :: #vcard_label{}.

-record(vcard_adr, {home = false :: boolean(),
                    work = false :: boolean(),
                    postal = false :: boolean(),
                    parcel = false :: boolean(),
                    dom = false :: boolean(),
                    intl = false :: boolean(),
                    pref = false :: boolean(),
                    pobox :: 'undefined' | binary(),
                    extadd :: 'undefined' | binary(),
                    street :: 'undefined' | binary(),
                    locality :: 'undefined' | binary(),
                    region :: 'undefined' | binary(),
                    pcode :: 'undefined' | binary(),
                    ctry :: 'undefined' | binary()}).
-type vcard_adr() :: #vcard_adr{}.

-record(xdata, {type :: 'cancel' | 'form' | 'result' | 'submit',
                instructions = [] :: [binary()],
                title :: 'undefined' | binary(),
                reported :: 'undefined' | [#xdata_field{}],
                items = [] :: [[#xdata_field{}]],
                fields = [] :: [#xdata_field{}]}).
-type xdata() :: #xdata{}.

-record(push_enable, {jid :: jid:jid(),
                      node = <<>> :: binary(),
                      xdata :: 'undefined' | #xdata{}}).
-type push_enable() :: #push_enable{}.

-record(xcaptcha, {xdata :: #xdata{}}).
-type xcaptcha() :: #xcaptcha{}.

-record(adhoc_command, {node = <<>> :: binary(),
                        action = execute :: 'cancel' | 'complete' | 'execute' | 'next' | 'prev',
                        sid = <<>> :: binary(),
                        status :: 'canceled' | 'completed' | 'executing' | 'undefined',
                        lang = <<>> :: binary(),
                        actions :: 'undefined' | #adhoc_actions{},
                        notes = [] :: [#adhoc_note{}],
                        xdata :: 'undefined' | #xdata{}}).
-type adhoc_command() :: #adhoc_command{}.

-record(mam_query, {xmlns = <<>> :: binary(),
                    id = <<>> :: binary(),
                    start :: undefined | erlang:timestamp(),
                    'end' :: undefined | erlang:timestamp(),
                    with :: undefined | jid:jid(),
                    withtext :: 'undefined' | binary(),
                    rsm :: 'undefined' | #rsm_set{},
                    xdata :: 'undefined' | #xdata{}}).
-type mam_query() :: #mam_query{}.

-record(pubsub_owner, {affiliations :: 'undefined' | {binary(),[#ps_affiliation{}]},
                       configure :: 'undefined' | {binary(),'undefined' | #xdata{}},
                       default :: 'undefined' | {binary(),'undefined' | #xdata{}},
                       delete :: 'undefined' | {binary(),binary()},
                       purge :: 'undefined' | binary(),
                       subscriptions :: 'undefined' | {binary(),[#ps_subscription{}]}}).
-type pubsub_owner() :: #pubsub_owner{}.

-record(ps_options, {node = <<>> :: binary(),
                     jid :: undefined | jid:jid(),
                     subid = <<>> :: binary(),
                     xdata :: 'undefined' | #xdata{}}).
-type ps_options() :: #ps_options{}.

-record(pubsub, {subscriptions :: 'undefined' | {binary(),[#ps_subscription{}]},
                 subscription :: 'undefined' | #ps_subscription{},
                 affiliations :: 'undefined' | {binary(),[#ps_affiliation{}]},
                 publish :: 'undefined' | #ps_publish{},
                 publish_options :: 'undefined' | #xdata{},
                 subscribe :: 'undefined' | #ps_subscribe{},
                 unsubscribe :: 'undefined' | #ps_unsubscribe{},
                 options :: 'undefined' | #ps_options{},
                 items :: 'undefined' | #ps_items{},
                 retract :: 'undefined' | #ps_retract{},
                 create :: 'undefined' | binary(),
                 configure :: 'undefined' | {binary(),'undefined' | #xdata{}},
                 default :: 'undefined' | {binary(),'undefined' | #xdata{}},
                 delete :: 'undefined' | {binary(),binary()},
                 purge :: 'undefined' | binary(),
                 rsm :: 'undefined' | #rsm_set{}}).
-type pubsub() :: #pubsub{}.

-record(ps_event, {items :: 'undefined' | #ps_items{},
                   purge :: 'undefined' | binary(),
                   subscription :: 'undefined' | #ps_subscription{},
                   delete :: 'undefined' | {binary(),binary()},
                   create :: 'undefined' | binary(),
                   configuration :: 'undefined' | {binary(),'undefined' | #xdata{}}}).
-type ps_event() :: #ps_event{}.

-record(register, {registered = false :: boolean(),
                   remove = false :: boolean(),
                   instructions :: 'undefined' | binary(),
                   username :: 'undefined' | binary(),
                   nick :: 'undefined' | binary(),
                   password :: 'undefined' | binary(),
                   name :: 'undefined' | binary(),
                   first :: 'undefined' | binary(),
                   last :: 'undefined' | binary(),
                   email :: 'undefined' | binary(),
                   address :: 'undefined' | binary(),
                   city :: 'undefined' | binary(),
                   state :: 'undefined' | binary(),
                   zip :: 'undefined' | binary(),
                   phone :: 'undefined' | binary(),
                   url :: 'undefined' | binary(),
                   date :: 'undefined' | binary(),
                   misc :: 'undefined' | binary(),
                   text :: 'undefined' | binary(),
                   key :: 'undefined' | binary(),
                   xdata :: 'undefined' | #xdata{},
                   sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type register() :: #register{}.

-record(disco_info, {node = <<>> :: binary(),
                     identities = [] :: [#identity{}],
                     features = [] :: [binary()],
                     xdata = [] :: [#xdata{}]}).
-type disco_info() :: #disco_info{}.

-record(sasl_mechanisms, {list = [] :: [binary()]}).
-type sasl_mechanisms() :: #sasl_mechanisms{}.

-record(offline_item, {node = <<>> :: binary(),
                       action :: 'remove' | 'undefined' | 'view'}).
-type offline_item() :: #offline_item{}.

-record(offline, {items = [] :: [#offline_item{}],
                  purge = false :: boolean(),
                  fetch = false :: boolean()}).
-type offline() :: #offline{}.

-record(muc_owner, {destroy :: 'undefined' | #muc_destroy{},
                    config :: 'undefined' | #xdata{},
                    items = [] :: [#muc_item{}]}).
-type muc_owner() :: #muc_owner{}.

-record(search_item, {jid :: jid:jid(),
                      first :: 'undefined' | binary(),
                      last :: 'undefined' | binary(),
                      nick :: 'undefined' | binary(),
                      email :: 'undefined' | binary()}).
-type search_item() :: #search_item{}.

-record(search, {instructions :: 'undefined' | binary(),
                 first :: 'undefined' | binary(),
                 last :: 'undefined' | binary(),
                 nick :: 'undefined' | binary(),
                 email :: 'undefined' | binary(),
                 items = [] :: [#search_item{}],
                 xdata :: 'undefined' | #xdata{}}).
-type search() :: #search{}.

-record(delegation, {delegated = [] :: [#delegated{}],
                     forwarded :: 'undefined' | #forwarded{}}).
-type delegation() :: #delegation{}.

-record(push_notification, {xdata :: 'undefined' | #xdata{}}).
-type push_notification() :: #push_notification{}.

-record(jingle_reason, {reason :: atom(),
                        text = [] :: [#text{}],
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_reason() :: #jingle_reason{}.

-record(jingle, {action :: atom(),
                 sid = <<>> :: binary(),
                 initiator :: undefined | jid:jid(),
                 responder :: undefined | jid:jid(),
                 content = [] :: [#jingle_content{}],
                 reason :: 'undefined' | #jingle_reason{},
                 sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle() :: #jingle{}.

-record(mix_join, {id = <<>> :: binary(),
                   jid :: undefined | jid:jid(),
                   nick = <<>> :: binary(),
                   subscribe = [] :: [binary()]}).
-type mix_join() :: #mix_join{}.

-record(privacy_item, {order :: non_neg_integer(),
                       action :: 'allow' | 'deny',
                       type :: 'group' | 'jid' | 'subscription' | 'undefined',
                       value = <<>> :: binary(),
                       message = false :: boolean(),
                       iq = false :: boolean(),
                       presence_in = false :: boolean(),
                       presence_out = false :: boolean()}).
-type privacy_item() :: #privacy_item{}.

-record(privacy_list, {name = <<>> :: binary(),
                       items = [] :: [#privacy_item{}]}).
-type privacy_list() :: #privacy_list{}.

-record(privacy_query, {lists = [] :: [#privacy_list{}],
                        default :: 'none' | 'undefined' | binary(),
                        active :: 'none' | 'undefined' | binary()}).
-type privacy_query() :: #privacy_query{}.

-record(teknorota_profile_get_last_seen, {jid = <<>> :: binary()}).
-type teknorota_profile_get_last_seen() :: #teknorota_profile_get_last_seen{}.

-record(teknorota_profile_query, {set = [] :: [#teknorota_profile_set{}],
                                  get = [] :: [#teknorota_profile_get{}],
                                  last_seen = [] :: [#teknorota_profile_get_last_seen{}],
                                  existing = [] :: [#teknorota_profile_get_existing{}],
                                  updated = [] :: [#teknorota_profile_get_updated{}]}).
-type teknorota_profile_query() :: #teknorota_profile_query{}.

-record(sm_failed, {reason :: atom() | #gone{} | #redirect{},
                    text = [] :: [#text{}],
                    h :: 'undefined' | non_neg_integer(),
                    xmlns = <<>> :: binary()}).
-type sm_failed() :: #sm_failed{}.

-record(stanza_error, {type :: 'auth' | 'cancel' | 'continue' | 'modify' | 'wait',
                       code :: 'undefined' | non_neg_integer(),
                       by :: undefined | jid:jid(),
                       reason :: atom() | #gone{} | #redirect{},
                       text = [] :: [#text{}],
                       sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stanza_error() :: #stanza_error{}.

-record(stream_error, {reason :: atom() | #'see-other-host'{},
                       text = [] :: [#text{}]}).
-type stream_error() :: #stream_error{}.

-record(mix_client_join, {channel :: undefined | jid:jid(),
                          join :: #mix_join{}}).
-type mix_client_join() :: #mix_client_join{}.

-record(time, {tzo :: 'undefined' | {integer(),integer()},
               utc :: undefined | erlang:timestamp()}).
-type time() :: #time{}.

-record(vcard_logo, {type :: 'undefined' | binary(),
                     binval :: 'undefined' | binary(),
                     extval :: 'undefined' | binary()}).
-type vcard_logo() :: #vcard_logo{}.

-record(vcard_temp, {version :: 'undefined' | binary(),
                     fn :: 'undefined' | binary(),
                     n :: 'undefined' | #vcard_name{},
                     nickname :: 'undefined' | binary(),
                     photo :: 'undefined' | #vcard_photo{},
                     bday :: 'undefined' | binary(),
                     adr = [] :: [#vcard_adr{}],
                     label = [] :: [#vcard_label{}],
                     tel = [] :: [#vcard_tel{}],
                     email = [] :: [#vcard_email{}],
                     jabberid :: 'undefined' | binary(),
                     mailer :: 'undefined' | binary(),
                     tz :: 'undefined' | binary(),
                     geo :: 'undefined' | #vcard_geo{},
                     title :: 'undefined' | binary(),
                     role :: 'undefined' | binary(),
                     logo :: 'undefined' | #vcard_logo{},
                     org :: 'undefined' | #vcard_org{},
                     categories = [] :: [binary()],
                     note :: 'undefined' | binary(),
                     prodid :: 'undefined' | binary(),
                     rev :: 'undefined' | binary(),
                     sort_string :: 'undefined' | binary(),
                     sound :: 'undefined' | #vcard_sound{},
                     uid :: 'undefined' | binary(),
                     url :: 'undefined' | binary(),
                     class :: 'confidential' | 'private' | 'public' | 'undefined',
                     key :: 'undefined' | #vcard_key{},
                     desc :: 'undefined' | binary()}).
-type vcard_temp() :: #vcard_temp{}.

-type xmpp_element() :: teknorota_subscription_check_invoice() |
                        sm_a() |
                        privacy_query() |
                        teknorota_push_registered() |
                        delegation_query() |
                        oob_x() |
                        hash_used() |
                        avatar_info() |
                        mam_archived() |
                        disco_item() |
                        rsm_set() |
                        x509_challenge_failed() |
                        carbons_sent() |
                        db_verify() |
                        sasl_auth() |
                        idle() |
                        starttls_failure() |
                        teknorota_register_package() |
                        chatstate() |
                        message_thread() |
                        vcard_key() |
                        teknorota_push_register() |
                        teknorota_profile_el() |
                        legacy_auth_feature() |
                        stanza_error() |
                        teknorota_push_unregister() |
                        stat() |
                        disco_info() |
                        media() |
                        pubsub_owner() |
                        block_item() |
                        teknorota_profile_lastupdated() |
                        muc_history() |
                        feature_register() |
                        jingle() |
                        mix_join() |
                        teknorota_subscription_get_packages() |
                        stanza_id() |
                        sic() |
                        text() |
                        ps_item() |
                        search() |
                        sm_enable() |
                        teknorota_register_query() |
                        stream_start() |
                        muc_unsubscribe() |
                        x509_csr() |
                        teknorota_fileshare_query() |
                        db_feature() |
                        media_uri() |
                        jingle_ft_error() |
                        mam_result() |
                        stat_error() |
                        sasl_failure() |
                        muc_actor() |
                        upload_slot() |
                        teknorota_register_check_invoice() |
                        push_enable() |
                        teknorota_fileshare_download() |
                        feature_sm() |
                        teknorota_fileshare_upconfirm() |
                        identity() |
                        vcard_sound() |
                        teknorota_register_get_packages() |
                        compression() |
                        compressed() |
                        teknorota_profile_user() |
                        ps_subscription() |
                        teknorota_subscription_invoices() |
                        ibb_data() |
                        jingle_s5b_candidate() |
                        vcard_logo() |
                        ibb_open() |
                        avatar_data() |
                        teknorota_subscription_create_invoice() |
                        avatar_meta() |
                        search_item() |
                        upload_slot_0() |
                        receipt_request() |
                        teknorota_register_verify_complete() |
                        expire() |
                        muc_admin() |
                        sasl_challenge() |
                        teknorota_profile_avatar() |
                        teknorota_profile_key() |
                        hint() |
                        ping() |
                        ps_publish() |
                        legacy_auth() |
                        vcard_photo() |
                        teknorota_register_virtual_complete() |
                        offline_item() |
                        jingle_ft_range() |
                        gone() |
                        carbons_enable() |
                        csi() |
                        push_notification() |
                        muc() |
                        x509_cert_chain() |
                        streamhost() |
                        jingle_ft_description() |
                        mix() |
                        teknorota_profile_hash() |
                        sasl_mechanisms() |
                        vcard_org() |
                        xdata_field() |
                        upload_request_0() |
                        version() |
                        roster_query() |
                        vcard_xupdate() |
                        receipt_response() |
                        stream_features() |
                        mix_destroy() |
                        teknorota_fileshare_upload() |
                        muc_unique() |
                        handshake() |
                        x509_register() |
                        vcard_email() |
                        mix_participant() |
                        mam_prefs() |
                        bookmark_url() |
                        'see-other-host'() |
                        delegated() |
                        time() |
                        stats() |
                        adhoc_note() |
                        shim() |
                        origin_id() |
                        bookmark_storage() |
                        teknorota_subscription_package() |
                        addresses() |
                        teknorota_push_query() |
                        teknorota_register_verify_init() |
                        muc_invite() |
                        x509_ca_list() |
                        delegation() |
                        teknorota_profile_set() |
                        privilege_perm() |
                        presence() |
                        db_result() |
                        bob_data() |
                        ps_items() |
                        muc_subscriptions() |
                        x509_challenge() |
                        thumbnail() |
                        block_list() |
                        push_disable() |
                        teknorota_register_invoice() |
                        privacy_list() |
                        carbons_private() |
                        ps_options() |
                        jingle_s5b_transport() |
                        muc_subscribe() |
                        teknorota_subscription() |
                        x509_revoke() |
                        bind() |
                        sm_r() |
                        bookmark_conference() |
                        teknorota_subscription_query() |
                        ps_error() |
                        teknorota_subscription_info() |
                        jingle_error() |
                        ps_affiliation() |
                        vcard_temp() |
                        sm_resume() |
                        mix_leave() |
                        muc_owner() |
                        upload_request() |
                        teknorota_push_unregistered() |
                        starttls() |
                        feature_csi() |
                        adhoc_command() |
                        compress_failure() |
                        jingle_ft_received() |
                        redirect() |
                        xmpp_session() |
                        mix_setnick() |
                        teknorota_profile_get_updated() |
                        muc_destroy() |
                        rosterver_feature() |
                        teknorota_register_create_invoice() |
                        offline() |
                        report() |
                        roster_item() |
                        teknorota_profile_name() |
                        teknorota_register_pay_invoice() |
                        mam_query() |
                        teknorota_subscription_packages() |
                        last() |
                        starttls_proceed() |
                        ibb_close() |
                        jingle_ft_checksum() |
                        disco_items() |
                        bytestreams() |
                        block() |
                        unblock() |
                        muc_decline() |
                        vcard_geo() |
                        teknorota_profile_status() |
                        jingle_ft_file() |
                        upload_retry() |
                        teknorota_profile_get_existing() |
                        rsm_first() |
                        hash() |
                        teknorota_profile_query() |
                        message() |
                        private() |
                        carbons_received() |
                        muc_subscription() |
                        stream_error() |
                        avatar_pointer() |
                        ps_event() |
                        teknorota_subscription_get_invoices() |
                        vcard_adr() |
                        sm_enabled() |
                        teknorota_profile_get_last_seen() |
                        privacy_item() |
                        mix_client_join() |
                        register() |
                        jingle_ibb_transport() |
                        address() |
                        sm_failed() |
                        ps_unsubscribe() |
                        adhoc_actions() |
                        caps() |
                        mix_create() |
                        compress() |
                        ps_retract() |
                        xdata() |
                        teknorota_subscription_pay_invoice() |
                        pubsub() |
                        sasl_response() |
                        sasl_success() |
                        mix_client_leave() |
                        upload_file_too_large() |
                        muc_user() |
                        jingle_content() |
                        xcaptcha() |
                        nick() |
                        muc_item() |
                        mam_fin() |
                        forwarded() |
                        carbons_disable() |
                        vcard_tel() |
                        x_conference() |
                        teknorota_register_virtual_init() |
                        vcard_label() |
                        xevent() |
                        privilege() |
                        teknorota_subscription_invoice() |
                        jingle_reason() |
                        teknorota_profile_get() |
                        ps_subscribe() |
                        vcard_name() |
                        x509_request() |
                        iq() |
                        delay() |
                        sasl_abort() |
                        sm_resumed() |
                        xdata_option() |
                        teknorota_register_packages() |
                        teknorota_profile_set_success() |
                        teknorota_profile_last_seen_el().
