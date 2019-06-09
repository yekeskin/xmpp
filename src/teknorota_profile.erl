%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(teknorota_profile).

-compile(export_all).

do_decode(<<"query">>, <<"teknorota:xmpp:profile">>, El,
	  Opts) ->
    decode_teknorota_profile_query(<<"teknorota:xmpp:profile">>,
				   Opts, El);
do_decode(<<"get-updated-users">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_get_updated(<<"teknorota:xmpp:profile">>,
					 Opts, El);
do_decode(<<"user">>, <<"teknorota:xmpp:profile">>, El,
	  Opts) ->
    decode_teknorota_profile_user(<<"teknorota:xmpp:profile">>,
				  Opts, El);
do_decode(<<"get-existing-users">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_get_existing(<<"teknorota:xmpp:profile">>,
					  Opts, El);
do_decode(<<"last-seen">>, <<"teknorota:xmpp:profile">>,
	  El, Opts) ->
    decode_teknorota_profile_last_seen_el(<<"teknorota:xmpp:profile">>,
					  Opts, El);
do_decode(<<"get-last-seen">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_get_last_seen(<<"teknorota:xmpp:profile">>,
					   Opts, El);
do_decode(<<"profile">>, <<"teknorota:xmpp:profile">>,
	  El, Opts) ->
    decode_teknorota_profile_el(<<"teknorota:xmpp:profile">>,
				Opts, El);
do_decode(<<"get-profile">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_get(<<"teknorota:xmpp:profile">>,
				 Opts, El);
do_decode(<<"set-profile-success">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_set_success(<<"teknorota:xmpp:profile">>,
					 Opts, El);
do_decode(<<"set-profile">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_set(<<"teknorota:xmpp:profile">>,
				 Opts, El);
do_decode(<<"lastupdated">>,
	  <<"teknorota:xmpp:profile">>, El, Opts) ->
    decode_teknorota_profile_lastupdated(<<"teknorota:xmpp:profile">>,
					 Opts, El);
do_decode(<<"status">>, <<"teknorota:xmpp:profile">>,
	  El, Opts) ->
    decode_teknorota_profile_status(<<"teknorota:xmpp:profile">>,
				    Opts, El);
do_decode(<<"hash">>, <<"teknorota:xmpp:profile">>, El,
	  Opts) ->
    decode_teknorota_profile_hash(<<"teknorota:xmpp:profile">>,
				  Opts, El);
do_decode(<<"key">>, <<"teknorota:xmpp:profile">>, El,
	  Opts) ->
    decode_teknorota_profile_key(<<"teknorota:xmpp:profile">>,
				 Opts, El);
do_decode(<<"avatar">>, <<"teknorota:xmpp:profile">>,
	  El, Opts) ->
    decode_teknorota_profile_avatar(<<"teknorota:xmpp:profile">>,
				    Opts, El);
do_decode(<<"name">>, <<"teknorota:xmpp:profile">>, El,
	  Opts) ->
    decode_teknorota_profile_name(<<"teknorota:xmpp:profile">>,
				  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"teknorota:xmpp:profile">>},
     {<<"get-updated-users">>, <<"teknorota:xmpp:profile">>},
     {<<"user">>, <<"teknorota:xmpp:profile">>},
     {<<"get-existing-users">>,
      <<"teknorota:xmpp:profile">>},
     {<<"last-seen">>, <<"teknorota:xmpp:profile">>},
     {<<"get-last-seen">>, <<"teknorota:xmpp:profile">>},
     {<<"profile">>, <<"teknorota:xmpp:profile">>},
     {<<"get-profile">>, <<"teknorota:xmpp:profile">>},
     {<<"set-profile-success">>,
      <<"teknorota:xmpp:profile">>},
     {<<"set-profile">>, <<"teknorota:xmpp:profile">>},
     {<<"lastupdated">>, <<"teknorota:xmpp:profile">>},
     {<<"status">>, <<"teknorota:xmpp:profile">>},
     {<<"hash">>, <<"teknorota:xmpp:profile">>},
     {<<"key">>, <<"teknorota:xmpp:profile">>},
     {<<"avatar">>, <<"teknorota:xmpp:profile">>},
     {<<"name">>, <<"teknorota:xmpp:profile">>}].

do_encode({teknorota_profile_name, _} = Name,
	  TopXMLNS) ->
    encode_teknorota_profile_name(Name, TopXMLNS);
do_encode({teknorota_profile_avatar, _} = Avatar,
	  TopXMLNS) ->
    encode_teknorota_profile_avatar(Avatar, TopXMLNS);
do_encode({teknorota_profile_key, _} = Key, TopXMLNS) ->
    encode_teknorota_profile_key(Key, TopXMLNS);
do_encode({teknorota_profile_hash, _} = Hash,
	  TopXMLNS) ->
    encode_teknorota_profile_hash(Hash, TopXMLNS);
do_encode({teknorota_profile_status, _} = Status,
	  TopXMLNS) ->
    encode_teknorota_profile_status(Status, TopXMLNS);
do_encode({teknorota_profile_lastupdated, _} =
	      Lastupdated,
	  TopXMLNS) ->
    encode_teknorota_profile_lastupdated(Lastupdated,
					 TopXMLNS);
do_encode({teknorota_profile_set, _, _, _, _, _} =
	      Set_profile,
	  TopXMLNS) ->
    encode_teknorota_profile_set(Set_profile, TopXMLNS);
do_encode({teknorota_profile_set_success} =
	      Set_profile_success,
	  TopXMLNS) ->
    encode_teknorota_profile_set_success(Set_profile_success,
					 TopXMLNS);
do_encode({teknorota_profile_get, _} = Get_profile,
	  TopXMLNS) ->
    encode_teknorota_profile_get(Get_profile, TopXMLNS);
do_encode({teknorota_profile_el, _, _, _, _, _, _, _} =
	      Profile,
	  TopXMLNS) ->
    encode_teknorota_profile_el(Profile, TopXMLNS);
do_encode({teknorota_profile_get_last_seen, _} =
	      Get_last_seen,
	  TopXMLNS) ->
    encode_teknorota_profile_get_last_seen(Get_last_seen,
					   TopXMLNS);
do_encode({teknorota_profile_last_seen_el, _, _} =
	      Last_seen,
	  TopXMLNS) ->
    encode_teknorota_profile_last_seen_el(Last_seen,
					  TopXMLNS);
do_encode({teknorota_profile_get_existing, _} =
	      Get_existing_users,
	  TopXMLNS) ->
    encode_teknorota_profile_get_existing(Get_existing_users,
					  TopXMLNS);
do_encode({teknorota_profile_user, _, _} = User,
	  TopXMLNS) ->
    encode_teknorota_profile_user(User, TopXMLNS);
do_encode({teknorota_profile_get_updated, _} =
	      Get_updated_users,
	  TopXMLNS) ->
    encode_teknorota_profile_get_updated(Get_updated_users,
					 TopXMLNS);
do_encode({teknorota_profile_query, _, _, _, _, _} =
	      Query,
	  TopXMLNS) ->
    encode_teknorota_profile_query(Query, TopXMLNS).

do_get_name({teknorota_profile_avatar, _}) ->
    <<"avatar">>;
do_get_name({teknorota_profile_el, _, _, _, _, _, _,
	     _}) ->
    <<"profile">>;
do_get_name({teknorota_profile_get, _}) ->
    <<"get-profile">>;
do_get_name({teknorota_profile_get_existing, _}) ->
    <<"get-existing-users">>;
do_get_name({teknorota_profile_get_last_seen, _}) ->
    <<"get-last-seen">>;
do_get_name({teknorota_profile_get_updated, _}) ->
    <<"get-updated-users">>;
do_get_name({teknorota_profile_hash, _}) -> <<"hash">>;
do_get_name({teknorota_profile_key, _}) -> <<"key">>;
do_get_name({teknorota_profile_last_seen_el, _, _}) ->
    <<"last-seen">>;
do_get_name({teknorota_profile_lastupdated, _}) ->
    <<"lastupdated">>;
do_get_name({teknorota_profile_name, _}) -> <<"name">>;
do_get_name({teknorota_profile_query, _, _, _, _, _}) ->
    <<"query">>;
do_get_name({teknorota_profile_set, _, _, _, _, _}) ->
    <<"set-profile">>;
do_get_name({teknorota_profile_set_success}) ->
    <<"set-profile-success">>;
do_get_name({teknorota_profile_status, _}) ->
    <<"status">>;
do_get_name({teknorota_profile_user, _, _}) ->
    <<"user">>.

do_get_ns({teknorota_profile_avatar, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_el, _, _, _, _, _, _,
	   _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_get, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_get_existing, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_get_last_seen, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_get_updated, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_hash, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_key, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_last_seen_el, _, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_lastupdated, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_name, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_query, _, _, _, _, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_set, _, _, _, _, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_set_success}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_status, _}) ->
    <<"teknorota:xmpp:profile">>;
do_get_ns({teknorota_profile_user, _, _}) ->
    <<"teknorota:xmpp:profile">>.

pp(teknorota_profile_name, 1) -> [cdata];
pp(teknorota_profile_avatar, 1) -> [cdata];
pp(teknorota_profile_key, 1) -> [cdata];
pp(teknorota_profile_hash, 1) -> [cdata];
pp(teknorota_profile_status, 1) -> [cdata];
pp(teknorota_profile_lastupdated, 1) -> [cdata];
pp(teknorota_profile_set, 5) ->
    [name, avatar, key, hash, status];
pp(teknorota_profile_set_success, 0) -> [];
pp(teknorota_profile_get, 1) -> [jid];
pp(teknorota_profile_el, 7) ->
    [jid, name, avatar, key, hash, status, lastupdated];
pp(teknorota_profile_get_last_seen, 1) -> [jid];
pp(teknorota_profile_last_seen_el, 2) -> [jid, cdata];
pp(teknorota_profile_get_existing, 1) -> [users];
pp(teknorota_profile_user, 2) -> [jid, lastupdated];
pp(teknorota_profile_get_updated, 1) -> [users];
pp(teknorota_profile_query, 5) ->
    [set, get, last_seen, existing, updated];
pp(_, _) -> no.

records() ->
    [{teknorota_profile_name, 1},
     {teknorota_profile_avatar, 1},
     {teknorota_profile_key, 1}, {teknorota_profile_hash, 1},
     {teknorota_profile_status, 1},
     {teknorota_profile_lastupdated, 1},
     {teknorota_profile_set, 5},
     {teknorota_profile_set_success, 0},
     {teknorota_profile_get, 1}, {teknorota_profile_el, 7},
     {teknorota_profile_get_last_seen, 1},
     {teknorota_profile_last_seen_el, 2},
     {teknorota_profile_get_existing, 1},
     {teknorota_profile_user, 2},
     {teknorota_profile_get_updated, 1},
     {teknorota_profile_query, 5}].

decode_teknorota_profile_query(__TopXMLNS, __Opts,
			       {xmlel, <<"query">>, _attrs, _els}) ->
    {Updated, Get, Set, Existing, Last_seen} =
	decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					   _els, [], [], [], [], []),
    {teknorota_profile_query, Set, Get, Last_seen, Existing,
     Updated}.

decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [], Updated, Get, Set, Existing,
				   Last_seen) ->
    {lists:reverse(Updated), lists:reverse(Get),
     lists:reverse(Set), lists:reverse(Existing),
     lists:reverse(Last_seen)};
decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"set-profile">>, _attrs, _} = _el
				    | _els],
				   Updated, Get, Set, Existing, Last_seen) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get,
					     [decode_teknorota_profile_set(<<"teknorota:xmpp:profile">>,
									   __Opts,
									   _el)
					      | Set],
					     Existing, Last_seen);
      _ ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set, Existing,
					     Last_seen)
    end;
decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"get-profile">>, _attrs, _} = _el
				    | _els],
				   Updated, Get, Set, Existing, Last_seen) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated,
					     [decode_teknorota_profile_get(<<"teknorota:xmpp:profile">>,
									   __Opts,
									   _el)
					      | Get],
					     Set, Existing, Last_seen);
      _ ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set, Existing,
					     Last_seen)
    end;
decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"get-last-seen">>, _attrs, _} =
					_el
				    | _els],
				   Updated, Get, Set, Existing, Last_seen) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set, Existing,
					     [decode_teknorota_profile_get_last_seen(<<"teknorota:xmpp:profile">>,
										     __Opts,
										     _el)
					      | Last_seen]);
      _ ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set, Existing,
					     Last_seen)
    end;
decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"get-existing-users">>, _attrs,
				     _} =
					_el
				    | _els],
				   Updated, Get, Set, Existing, Last_seen) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set,
					     [decode_teknorota_profile_get_existing(<<"teknorota:xmpp:profile">>,
										    __Opts,
										    _el)
					      | Existing],
					     Last_seen);
      _ ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set, Existing,
					     Last_seen)
    end;
decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"get-updated-users">>, _attrs,
				     _} =
					_el
				    | _els],
				   Updated, Get, Set, Existing, Last_seen) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els,
					     [decode_teknorota_profile_get_updated(<<"teknorota:xmpp:profile">>,
										   __Opts,
										   _el)
					      | Updated],
					     Get, Set, Existing, Last_seen);
      _ ->
	  decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
					     _els, Updated, Get, Set, Existing,
					     Last_seen)
    end;
decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				   [_ | _els], Updated, Get, Set, Existing,
				   Last_seen) ->
    decode_teknorota_profile_query_els(__TopXMLNS, __Opts,
				       _els, Updated, Get, Set, Existing,
				       Last_seen).

encode_teknorota_profile_query({teknorota_profile_query,
				Set, Get, Last_seen, Existing, Updated},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_profile_query_$updated'(Updated,
								__NewTopXMLNS,
								'encode_teknorota_profile_query_$get'(Get,
												      __NewTopXMLNS,
												      'encode_teknorota_profile_query_$set'(Set,
																	    __NewTopXMLNS,
																	    'encode_teknorota_profile_query_$existing'(Existing,
																						       __NewTopXMLNS,
																						       'encode_teknorota_profile_query_$last_seen'(Last_seen,
																												   __NewTopXMLNS,
																												   [])))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_teknorota_profile_query_$updated'([],
					  __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_profile_query_$updated'([Updated
					   | _els],
					  __TopXMLNS, _acc) ->
    'encode_teknorota_profile_query_$updated'(_els,
					      __TopXMLNS,
					      [encode_teknorota_profile_get_updated(Updated,
										    __TopXMLNS)
					       | _acc]).

'encode_teknorota_profile_query_$get'([], __TopXMLNS,
				      _acc) ->
    _acc;
'encode_teknorota_profile_query_$get'([Get | _els],
				      __TopXMLNS, _acc) ->
    'encode_teknorota_profile_query_$get'(_els, __TopXMLNS,
					  [encode_teknorota_profile_get(Get,
									__TopXMLNS)
					   | _acc]).

'encode_teknorota_profile_query_$set'([], __TopXMLNS,
				      _acc) ->
    _acc;
'encode_teknorota_profile_query_$set'([Set | _els],
				      __TopXMLNS, _acc) ->
    'encode_teknorota_profile_query_$set'(_els, __TopXMLNS,
					  [encode_teknorota_profile_set(Set,
									__TopXMLNS)
					   | _acc]).

'encode_teknorota_profile_query_$existing'([],
					   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_profile_query_$existing'([Existing
					    | _els],
					   __TopXMLNS, _acc) ->
    'encode_teknorota_profile_query_$existing'(_els,
					       __TopXMLNS,
					       [encode_teknorota_profile_get_existing(Existing,
										      __TopXMLNS)
						| _acc]).

'encode_teknorota_profile_query_$last_seen'([],
					    __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_profile_query_$last_seen'([Last_seen
					     | _els],
					    __TopXMLNS, _acc) ->
    'encode_teknorota_profile_query_$last_seen'(_els,
						__TopXMLNS,
						[encode_teknorota_profile_get_last_seen(Last_seen,
											__TopXMLNS)
						 | _acc]).

decode_teknorota_profile_get_updated(__TopXMLNS, __Opts,
				     {xmlel, <<"get-updated-users">>, _attrs,
				      _els}) ->
    Users =
	decode_teknorota_profile_get_updated_els(__TopXMLNS,
						 __Opts, _els, []),
    {teknorota_profile_get_updated, Users}.

decode_teknorota_profile_get_updated_els(__TopXMLNS,
					 __Opts, [], Users) ->
    lists:reverse(Users);
decode_teknorota_profile_get_updated_els(__TopXMLNS,
					 __Opts,
					 [{xmlel, <<"user">>, _attrs, _} = _el
					  | _els],
					 Users) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_get_updated_els(__TopXMLNS,
						   __Opts, _els,
						   [decode_teknorota_profile_user(<<"teknorota:xmpp:profile">>,
										  __Opts,
										  _el)
						    | Users]);
      _ ->
	  decode_teknorota_profile_get_updated_els(__TopXMLNS,
						   __Opts, _els, Users)
    end;
decode_teknorota_profile_get_updated_els(__TopXMLNS,
					 __Opts, [_ | _els], Users) ->
    decode_teknorota_profile_get_updated_els(__TopXMLNS,
					     __Opts, _els, Users).

encode_teknorota_profile_get_updated({teknorota_profile_get_updated,
				      Users},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_profile_get_updated_$users'(Users,
								    __NewTopXMLNS,
								    [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"get-updated-users">>, _attrs, _els}.

'encode_teknorota_profile_get_updated_$users'([],
					      __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_profile_get_updated_$users'([Users
					       | _els],
					      __TopXMLNS, _acc) ->
    'encode_teknorota_profile_get_updated_$users'(_els,
						  __TopXMLNS,
						  [encode_teknorota_profile_user(Users,
										 __TopXMLNS)
						   | _acc]).

decode_teknorota_profile_user(__TopXMLNS, __Opts,
			      {xmlel, <<"user">>, _attrs, _els}) ->
    {Jid, Lastupdated} =
	decode_teknorota_profile_user_attrs(__TopXMLNS, _attrs,
					    undefined, undefined),
    {teknorota_profile_user, Jid, Lastupdated}.

decode_teknorota_profile_user_attrs(__TopXMLNS,
				    [{<<"jid">>, _val} | _attrs], _Jid,
				    Lastupdated) ->
    decode_teknorota_profile_user_attrs(__TopXMLNS, _attrs,
					_val, Lastupdated);
decode_teknorota_profile_user_attrs(__TopXMLNS,
				    [{<<"lastupdated">>, _val} | _attrs], Jid,
				    _Lastupdated) ->
    decode_teknorota_profile_user_attrs(__TopXMLNS, _attrs,
					Jid, _val);
decode_teknorota_profile_user_attrs(__TopXMLNS,
				    [_ | _attrs], Jid, Lastupdated) ->
    decode_teknorota_profile_user_attrs(__TopXMLNS, _attrs,
					Jid, Lastupdated);
decode_teknorota_profile_user_attrs(__TopXMLNS, [], Jid,
				    Lastupdated) ->
    {decode_teknorota_profile_user_attr_jid(__TopXMLNS,
					    Jid),
     decode_teknorota_profile_user_attr_lastupdated(__TopXMLNS,
						    Lastupdated)}.

encode_teknorota_profile_user({teknorota_profile_user,
			       Jid, Lastupdated},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_profile_user_attr_lastupdated(Lastupdated,
						       encode_teknorota_profile_user_attr_jid(Jid,
											      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															 __TopXMLNS))),
    {xmlel, <<"user">>, _attrs, _els}.

decode_teknorota_profile_user_attr_jid(__TopXMLNS,
				       undefined) ->
    <<>>;
decode_teknorota_profile_user_attr_jid(__TopXMLNS,
				       _val) ->
    _val.

encode_teknorota_profile_user_attr_jid(<<>>, _acc) ->
    _acc;
encode_teknorota_profile_user_attr_jid(_val, _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_profile_user_attr_lastupdated(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_teknorota_profile_user_attr_lastupdated(__TopXMLNS,
					       _val) ->
    _val.

encode_teknorota_profile_user_attr_lastupdated(<<>>,
					       _acc) ->
    _acc;
encode_teknorota_profile_user_attr_lastupdated(_val,
					       _acc) ->
    [{<<"lastupdated">>, _val} | _acc].

decode_teknorota_profile_get_existing(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"get-existing-users">>, _attrs,
				       _els}) ->
    Users =
	decode_teknorota_profile_get_existing_els(__TopXMLNS,
						  __Opts, _els, []),
    {teknorota_profile_get_existing, Users}.

decode_teknorota_profile_get_existing_els(__TopXMLNS,
					  __Opts, [], Users) ->
    lists:reverse(Users);
decode_teknorota_profile_get_existing_els(__TopXMLNS,
					  __Opts,
					  [{xmlel, <<"user">>, _attrs, _} = _el
					   | _els],
					  Users) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_get_existing_els(__TopXMLNS,
						    __Opts, _els,
						    [decode_teknorota_profile_user(<<"teknorota:xmpp:profile">>,
										   __Opts,
										   _el)
						     | Users]);
      _ ->
	  decode_teknorota_profile_get_existing_els(__TopXMLNS,
						    __Opts, _els, Users)
    end;
decode_teknorota_profile_get_existing_els(__TopXMLNS,
					  __Opts, [_ | _els], Users) ->
    decode_teknorota_profile_get_existing_els(__TopXMLNS,
					      __Opts, _els, Users).

encode_teknorota_profile_get_existing({teknorota_profile_get_existing,
				       Users},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_profile_get_existing_$users'(Users,
								     __NewTopXMLNS,
								     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"get-existing-users">>, _attrs, _els}.

'encode_teknorota_profile_get_existing_$users'([],
					       __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_profile_get_existing_$users'([Users
						| _els],
					       __TopXMLNS, _acc) ->
    'encode_teknorota_profile_get_existing_$users'(_els,
						   __TopXMLNS,
						   [encode_teknorota_profile_user(Users,
										  __TopXMLNS)
						    | _acc]).

decode_teknorota_profile_last_seen_el(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"last-seen">>, _attrs, _els}) ->
    Cdata =
	decode_teknorota_profile_last_seen_el_els(__TopXMLNS,
						  __Opts, _els, <<>>),
    Jid =
	decode_teknorota_profile_last_seen_el_attrs(__TopXMLNS,
						    _attrs, undefined),
    {teknorota_profile_last_seen_el, Jid, Cdata}.

decode_teknorota_profile_last_seen_el_els(__TopXMLNS,
					  __Opts, [], Cdata) ->
    decode_teknorota_profile_last_seen_el_cdata(__TopXMLNS,
						Cdata);
decode_teknorota_profile_last_seen_el_els(__TopXMLNS,
					  __Opts, [{xmlcdata, _data} | _els],
					  Cdata) ->
    decode_teknorota_profile_last_seen_el_els(__TopXMLNS,
					      __Opts, _els,
					      <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_last_seen_el_els(__TopXMLNS,
					  __Opts, [_ | _els], Cdata) ->
    decode_teknorota_profile_last_seen_el_els(__TopXMLNS,
					      __Opts, _els, Cdata).

decode_teknorota_profile_last_seen_el_attrs(__TopXMLNS,
					    [{<<"jid">>, _val} | _attrs],
					    _Jid) ->
    decode_teknorota_profile_last_seen_el_attrs(__TopXMLNS,
						_attrs, _val);
decode_teknorota_profile_last_seen_el_attrs(__TopXMLNS,
					    [_ | _attrs], Jid) ->
    decode_teknorota_profile_last_seen_el_attrs(__TopXMLNS,
						_attrs, Jid);
decode_teknorota_profile_last_seen_el_attrs(__TopXMLNS,
					    [], Jid) ->
    decode_teknorota_profile_last_seen_el_attr_jid(__TopXMLNS,
						   Jid).

encode_teknorota_profile_last_seen_el({teknorota_profile_last_seen_el,
				       Jid, Cdata},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els =
	encode_teknorota_profile_last_seen_el_cdata(Cdata, []),
    _attrs =
	encode_teknorota_profile_last_seen_el_attr_jid(Jid,
						       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										  __TopXMLNS)),
    {xmlel, <<"last-seen">>, _attrs, _els}.

decode_teknorota_profile_last_seen_el_attr_jid(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_teknorota_profile_last_seen_el_attr_jid(__TopXMLNS,
					       _val) ->
    _val.

encode_teknorota_profile_last_seen_el_attr_jid(<<>>,
					       _acc) ->
    _acc;
encode_teknorota_profile_last_seen_el_attr_jid(_val,
					       _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_profile_last_seen_el_cdata(__TopXMLNS,
					    <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"last-seen">>, __TopXMLNS}});
decode_teknorota_profile_last_seen_el_cdata(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_profile_last_seen_el_cdata(_val,
					    _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_profile_get_last_seen(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"get-last-seen">>, _attrs,
					_els}) ->
    Jid =
	decode_teknorota_profile_get_last_seen_attrs(__TopXMLNS,
						     _attrs, undefined),
    {teknorota_profile_get_last_seen, Jid}.

decode_teknorota_profile_get_last_seen_attrs(__TopXMLNS,
					     [{<<"jid">>, _val} | _attrs],
					     _Jid) ->
    decode_teknorota_profile_get_last_seen_attrs(__TopXMLNS,
						 _attrs, _val);
decode_teknorota_profile_get_last_seen_attrs(__TopXMLNS,
					     [_ | _attrs], Jid) ->
    decode_teknorota_profile_get_last_seen_attrs(__TopXMLNS,
						 _attrs, Jid);
decode_teknorota_profile_get_last_seen_attrs(__TopXMLNS,
					     [], Jid) ->
    decode_teknorota_profile_get_last_seen_attr_jid(__TopXMLNS,
						    Jid).

encode_teknorota_profile_get_last_seen({teknorota_profile_get_last_seen,
					Jid},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_profile_get_last_seen_attr_jid(Jid,
							xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										   __TopXMLNS)),
    {xmlel, <<"get-last-seen">>, _attrs, _els}.

decode_teknorota_profile_get_last_seen_attr_jid(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_profile_get_last_seen_attr_jid(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_profile_get_last_seen_attr_jid(<<>>,
						_acc) ->
    _acc;
encode_teknorota_profile_get_last_seen_attr_jid(_val,
						_acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_profile_el(__TopXMLNS, __Opts,
			    {xmlel, <<"profile">>, _attrs, _els}) ->
    {Avatar, Status, Lastupdated, Name, Hash, Key} =
	decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					_els, [], [], [], [], [], []),
    Jid = decode_teknorota_profile_el_attrs(__TopXMLNS,
					    _attrs, undefined),
    {teknorota_profile_el, Jid, Name, Avatar, Key, Hash,
     Status, Lastupdated}.

decode_teknorota_profile_el_els(__TopXMLNS, __Opts, [],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    {lists:reverse(Avatar), lists:reverse(Status),
     lists:reverse(Lastupdated), lists:reverse(Name),
     lists:reverse(Hash), lists:reverse(Key)};
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[{xmlel, <<"name">>, _attrs, _} = _el | _els],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  [decode_teknorota_profile_name(<<"teknorota:xmpp:profile">>,
									 __Opts,
									 _el)
					   | Name],
					  Hash, Key);
      _ ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash, Key)
    end;
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[{xmlel, <<"avatar">>, _attrs, _} = _el | _els],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els,
					  [decode_teknorota_profile_avatar(<<"teknorota:xmpp:profile">>,
									   __Opts,
									   _el)
					   | Avatar],
					  Status, Lastupdated, Name, Hash, Key);
      _ ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash, Key)
    end;
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[{xmlel, <<"key">>, _attrs, _} = _el | _els],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash,
					  [decode_teknorota_profile_key(<<"teknorota:xmpp:profile">>,
									__Opts,
									_el)
					   | Key]);
      _ ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash, Key)
    end;
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[{xmlel, <<"hash">>, _attrs, _} = _el | _els],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name,
					  [decode_teknorota_profile_hash(<<"teknorota:xmpp:profile">>,
									 __Opts,
									 _el)
					   | Hash],
					  Key);
      _ ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash, Key)
    end;
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[{xmlel, <<"status">>, _attrs, _} = _el | _els],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar,
					  [decode_teknorota_profile_status(<<"teknorota:xmpp:profile">>,
									   __Opts,
									   _el)
					   | Status],
					  Lastupdated, Name, Hash, Key);
      _ ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash, Key)
    end;
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[{xmlel, <<"lastupdated">>, _attrs, _} = _el
				 | _els],
				Avatar, Status, Lastupdated, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status,
					  [decode_teknorota_profile_lastupdated(<<"teknorota:xmpp:profile">>,
										__Opts,
										_el)
					   | Lastupdated],
					  Name, Hash, Key);
      _ ->
	  decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
					  _els, Avatar, Status, Lastupdated,
					  Name, Hash, Key)
    end;
decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				[_ | _els], Avatar, Status, Lastupdated, Name,
				Hash, Key) ->
    decode_teknorota_profile_el_els(__TopXMLNS, __Opts,
				    _els, Avatar, Status, Lastupdated, Name,
				    Hash, Key).

decode_teknorota_profile_el_attrs(__TopXMLNS,
				  [{<<"jid">>, _val} | _attrs], _Jid) ->
    decode_teknorota_profile_el_attrs(__TopXMLNS, _attrs,
				      _val);
decode_teknorota_profile_el_attrs(__TopXMLNS,
				  [_ | _attrs], Jid) ->
    decode_teknorota_profile_el_attrs(__TopXMLNS, _attrs,
				      Jid);
decode_teknorota_profile_el_attrs(__TopXMLNS, [],
				  Jid) ->
    decode_teknorota_profile_el_attr_jid(__TopXMLNS, Jid).

encode_teknorota_profile_el({teknorota_profile_el, Jid,
			     Name, Avatar, Key, Hash, Status, Lastupdated},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_profile_el_$avatar'(Avatar,
							    __NewTopXMLNS,
							    'encode_teknorota_profile_el_$status'(Status,
												  __NewTopXMLNS,
												  'encode_teknorota_profile_el_$lastupdated'(Lastupdated,
																	     __NewTopXMLNS,
																	     'encode_teknorota_profile_el_$name'(Name,
																						 __NewTopXMLNS,
																						 'encode_teknorota_profile_el_$hash'(Hash,
																										     __NewTopXMLNS,
																										     'encode_teknorota_profile_el_$key'(Key,
																															__NewTopXMLNS,
																															[]))))))),
    _attrs = encode_teknorota_profile_el_attr_jid(Jid,
						  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									     __TopXMLNS)),
    {xmlel, <<"profile">>, _attrs, _els}.

'encode_teknorota_profile_el_$avatar'([], __TopXMLNS,
				      _acc) ->
    _acc;
'encode_teknorota_profile_el_$avatar'([Avatar | _els],
				      __TopXMLNS, _acc) ->
    'encode_teknorota_profile_el_$avatar'(_els, __TopXMLNS,
					  [encode_teknorota_profile_avatar(Avatar,
									   __TopXMLNS)
					   | _acc]).

'encode_teknorota_profile_el_$status'([], __TopXMLNS,
				      _acc) ->
    _acc;
'encode_teknorota_profile_el_$status'([Status | _els],
				      __TopXMLNS, _acc) ->
    'encode_teknorota_profile_el_$status'(_els, __TopXMLNS,
					  [encode_teknorota_profile_status(Status,
									   __TopXMLNS)
					   | _acc]).

'encode_teknorota_profile_el_$lastupdated'([],
					   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_profile_el_$lastupdated'([Lastupdated
					    | _els],
					   __TopXMLNS, _acc) ->
    'encode_teknorota_profile_el_$lastupdated'(_els,
					       __TopXMLNS,
					       [encode_teknorota_profile_lastupdated(Lastupdated,
										     __TopXMLNS)
						| _acc]).

'encode_teknorota_profile_el_$name'([], __TopXMLNS,
				    _acc) ->
    _acc;
'encode_teknorota_profile_el_$name'([Name | _els],
				    __TopXMLNS, _acc) ->
    'encode_teknorota_profile_el_$name'(_els, __TopXMLNS,
					[encode_teknorota_profile_name(Name,
								       __TopXMLNS)
					 | _acc]).

'encode_teknorota_profile_el_$hash'([], __TopXMLNS,
				    _acc) ->
    _acc;
'encode_teknorota_profile_el_$hash'([Hash | _els],
				    __TopXMLNS, _acc) ->
    'encode_teknorota_profile_el_$hash'(_els, __TopXMLNS,
					[encode_teknorota_profile_hash(Hash,
								       __TopXMLNS)
					 | _acc]).

'encode_teknorota_profile_el_$key'([], __TopXMLNS,
				   _acc) ->
    _acc;
'encode_teknorota_profile_el_$key'([Key | _els],
				   __TopXMLNS, _acc) ->
    'encode_teknorota_profile_el_$key'(_els, __TopXMLNS,
				       [encode_teknorota_profile_key(Key,
								     __TopXMLNS)
					| _acc]).

decode_teknorota_profile_el_attr_jid(__TopXMLNS,
				     undefined) ->
    <<>>;
decode_teknorota_profile_el_attr_jid(__TopXMLNS,
				     _val) ->
    _val.

encode_teknorota_profile_el_attr_jid(<<>>, _acc) ->
    _acc;
encode_teknorota_profile_el_attr_jid(_val, _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_profile_get(__TopXMLNS, __Opts,
			     {xmlel, <<"get-profile">>, _attrs, _els}) ->
    Jid = decode_teknorota_profile_get_attrs(__TopXMLNS,
					     _attrs, undefined),
    {teknorota_profile_get, Jid}.

decode_teknorota_profile_get_attrs(__TopXMLNS,
				   [{<<"jid">>, _val} | _attrs], _Jid) ->
    decode_teknorota_profile_get_attrs(__TopXMLNS, _attrs,
				       _val);
decode_teknorota_profile_get_attrs(__TopXMLNS,
				   [_ | _attrs], Jid) ->
    decode_teknorota_profile_get_attrs(__TopXMLNS, _attrs,
				       Jid);
decode_teknorota_profile_get_attrs(__TopXMLNS, [],
				   Jid) ->
    decode_teknorota_profile_get_attr_jid(__TopXMLNS, Jid).

encode_teknorota_profile_get({teknorota_profile_get,
			      Jid},
			     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_teknorota_profile_get_attr_jid(Jid,
						   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									      __TopXMLNS)),
    {xmlel, <<"get-profile">>, _attrs, _els}.

decode_teknorota_profile_get_attr_jid(__TopXMLNS,
				      undefined) ->
    <<>>;
decode_teknorota_profile_get_attr_jid(__TopXMLNS,
				      _val) ->
    _val.

encode_teknorota_profile_get_attr_jid(<<>>, _acc) ->
    _acc;
encode_teknorota_profile_get_attr_jid(_val, _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_profile_set_success(__TopXMLNS, __Opts,
				     {xmlel, <<"set-profile-success">>, _attrs,
				      _els}) ->
    {teknorota_profile_set_success}.

encode_teknorota_profile_set_success({teknorota_profile_set_success},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"set-profile-success">>, _attrs, _els}.

decode_teknorota_profile_set(__TopXMLNS, __Opts,
			     {xmlel, <<"set-profile">>, _attrs, _els}) ->
    {Avatar, Status, Name, Hash, Key} =
	decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					 _els, [], [], [], [], []),
    {teknorota_profile_set, Name, Avatar, Key, Hash,
     Status}.

decode_teknorota_profile_set_els(__TopXMLNS, __Opts, [],
				 Avatar, Status, Name, Hash, Key) ->
    {lists:reverse(Avatar), lists:reverse(Status),
     lists:reverse(Name), lists:reverse(Hash),
     lists:reverse(Key)};
decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"name">>, _attrs, _} = _el | _els],
				 Avatar, Status, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status,
					   [decode_teknorota_profile_name(<<"teknorota:xmpp:profile">>,
									  __Opts,
									  _el)
					    | Name],
					   Hash, Key);
      _ ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name, Hash,
					   Key)
    end;
decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"avatar">>, _attrs, _} = _el
				  | _els],
				 Avatar, Status, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els,
					   [decode_teknorota_profile_avatar(<<"teknorota:xmpp:profile">>,
									    __Opts,
									    _el)
					    | Avatar],
					   Status, Name, Hash, Key);
      _ ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name, Hash,
					   Key)
    end;
decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"key">>, _attrs, _} = _el | _els],
				 Avatar, Status, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name, Hash,
					   [decode_teknorota_profile_key(<<"teknorota:xmpp:profile">>,
									 __Opts,
									 _el)
					    | Key]);
      _ ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name, Hash,
					   Key)
    end;
decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"hash">>, _attrs, _} = _el | _els],
				 Avatar, Status, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name,
					   [decode_teknorota_profile_hash(<<"teknorota:xmpp:profile">>,
									  __Opts,
									  _el)
					    | Hash],
					   Key);
      _ ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name, Hash,
					   Key)
    end;
decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"status">>, _attrs, _} = _el
				  | _els],
				 Avatar, Status, Name, Hash, Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:profile">> ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar,
					   [decode_teknorota_profile_status(<<"teknorota:xmpp:profile">>,
									    __Opts,
									    _el)
					    | Status],
					   Name, Hash, Key);
      _ ->
	  decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
					   _els, Avatar, Status, Name, Hash,
					   Key)
    end;
decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				 [_ | _els], Avatar, Status, Name, Hash, Key) ->
    decode_teknorota_profile_set_els(__TopXMLNS, __Opts,
				     _els, Avatar, Status, Name, Hash, Key).

encode_teknorota_profile_set({teknorota_profile_set,
			      Name, Avatar, Key, Hash, Status},
			     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_profile_set_$avatar'(Avatar,
							     __NewTopXMLNS,
							     'encode_teknorota_profile_set_$status'(Status,
												    __NewTopXMLNS,
												    'encode_teknorota_profile_set_$name'(Name,
																	 __NewTopXMLNS,
																	 'encode_teknorota_profile_set_$hash'(Hash,
																					      __NewTopXMLNS,
																					      'encode_teknorota_profile_set_$key'(Key,
																										  __NewTopXMLNS,
																										  [])))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"set-profile">>, _attrs, _els}.

'encode_teknorota_profile_set_$avatar'([], __TopXMLNS,
				       _acc) ->
    _acc;
'encode_teknorota_profile_set_$avatar'([Avatar | _els],
				       __TopXMLNS, _acc) ->
    'encode_teknorota_profile_set_$avatar'(_els, __TopXMLNS,
					   [encode_teknorota_profile_avatar(Avatar,
									    __TopXMLNS)
					    | _acc]).

'encode_teknorota_profile_set_$status'([], __TopXMLNS,
				       _acc) ->
    _acc;
'encode_teknorota_profile_set_$status'([Status | _els],
				       __TopXMLNS, _acc) ->
    'encode_teknorota_profile_set_$status'(_els, __TopXMLNS,
					   [encode_teknorota_profile_status(Status,
									    __TopXMLNS)
					    | _acc]).

'encode_teknorota_profile_set_$name'([], __TopXMLNS,
				     _acc) ->
    _acc;
'encode_teknorota_profile_set_$name'([Name | _els],
				     __TopXMLNS, _acc) ->
    'encode_teknorota_profile_set_$name'(_els, __TopXMLNS,
					 [encode_teknorota_profile_name(Name,
									__TopXMLNS)
					  | _acc]).

'encode_teknorota_profile_set_$hash'([], __TopXMLNS,
				     _acc) ->
    _acc;
'encode_teknorota_profile_set_$hash'([Hash | _els],
				     __TopXMLNS, _acc) ->
    'encode_teknorota_profile_set_$hash'(_els, __TopXMLNS,
					 [encode_teknorota_profile_hash(Hash,
									__TopXMLNS)
					  | _acc]).

'encode_teknorota_profile_set_$key'([], __TopXMLNS,
				    _acc) ->
    _acc;
'encode_teknorota_profile_set_$key'([Key | _els],
				    __TopXMLNS, _acc) ->
    'encode_teknorota_profile_set_$key'(_els, __TopXMLNS,
					[encode_teknorota_profile_key(Key,
								      __TopXMLNS)
					 | _acc]).

decode_teknorota_profile_lastupdated(__TopXMLNS, __Opts,
				     {xmlel, <<"lastupdated">>, _attrs,
				      _els}) ->
    Cdata =
	decode_teknorota_profile_lastupdated_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    {teknorota_profile_lastupdated, Cdata}.

decode_teknorota_profile_lastupdated_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_teknorota_profile_lastupdated_cdata(__TopXMLNS,
					       Cdata);
decode_teknorota_profile_lastupdated_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_teknorota_profile_lastupdated_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_lastupdated_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_teknorota_profile_lastupdated_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_teknorota_profile_lastupdated({teknorota_profile_lastupdated,
				      Cdata},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = encode_teknorota_profile_lastupdated_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"lastupdated">>, _attrs, _els}.

decode_teknorota_profile_lastupdated_cdata(__TopXMLNS,
					   <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"lastupdated">>, __TopXMLNS}});
decode_teknorota_profile_lastupdated_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_teknorota_profile_lastupdated_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_profile_status(__TopXMLNS, __Opts,
				{xmlel, <<"status">>, _attrs, _els}) ->
    Cdata = decode_teknorota_profile_status_els(__TopXMLNS,
						__Opts, _els, <<>>),
    {teknorota_profile_status, Cdata}.

decode_teknorota_profile_status_els(__TopXMLNS, __Opts,
				    [], Cdata) ->
    decode_teknorota_profile_status_cdata(__TopXMLNS,
					  Cdata);
decode_teknorota_profile_status_els(__TopXMLNS, __Opts,
				    [{xmlcdata, _data} | _els], Cdata) ->
    decode_teknorota_profile_status_els(__TopXMLNS, __Opts,
					_els, <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_status_els(__TopXMLNS, __Opts,
				    [_ | _els], Cdata) ->
    decode_teknorota_profile_status_els(__TopXMLNS, __Opts,
					_els, Cdata).

encode_teknorota_profile_status({teknorota_profile_status,
				 Cdata},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = encode_teknorota_profile_status_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"status">>, _attrs, _els}.

decode_teknorota_profile_status_cdata(__TopXMLNS,
				      <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"status">>, __TopXMLNS}});
decode_teknorota_profile_status_cdata(__TopXMLNS,
				      _val) ->
    _val.

encode_teknorota_profile_status_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_profile_hash(__TopXMLNS, __Opts,
			      {xmlel, <<"hash">>, _attrs, _els}) ->
    Cdata = decode_teknorota_profile_hash_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    {teknorota_profile_hash, Cdata}.

decode_teknorota_profile_hash_els(__TopXMLNS, __Opts,
				  [], Cdata) ->
    decode_teknorota_profile_hash_cdata(__TopXMLNS, Cdata);
decode_teknorota_profile_hash_els(__TopXMLNS, __Opts,
				  [{xmlcdata, _data} | _els], Cdata) ->
    decode_teknorota_profile_hash_els(__TopXMLNS, __Opts,
				      _els, <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_hash_els(__TopXMLNS, __Opts,
				  [_ | _els], Cdata) ->
    decode_teknorota_profile_hash_els(__TopXMLNS, __Opts,
				      _els, Cdata).

encode_teknorota_profile_hash({teknorota_profile_hash,
			       Cdata},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = encode_teknorota_profile_hash_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"hash">>, _attrs, _els}.

decode_teknorota_profile_hash_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"hash">>, __TopXMLNS}});
decode_teknorota_profile_hash_cdata(__TopXMLNS, _val) ->
    _val.

encode_teknorota_profile_hash_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_profile_key(__TopXMLNS, __Opts,
			     {xmlel, <<"key">>, _attrs, _els}) ->
    Cdata = decode_teknorota_profile_key_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    {teknorota_profile_key, Cdata}.

decode_teknorota_profile_key_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_teknorota_profile_key_cdata(__TopXMLNS, Cdata);
decode_teknorota_profile_key_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_teknorota_profile_key_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_key_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_teknorota_profile_key_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_teknorota_profile_key({teknorota_profile_key,
			      Cdata},
			     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = encode_teknorota_profile_key_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"key">>, _attrs, _els}.

decode_teknorota_profile_key_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"key">>, __TopXMLNS}});
decode_teknorota_profile_key_cdata(__TopXMLNS, _val) ->
    _val.

encode_teknorota_profile_key_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_profile_avatar(__TopXMLNS, __Opts,
				{xmlel, <<"avatar">>, _attrs, _els}) ->
    Cdata = decode_teknorota_profile_avatar_els(__TopXMLNS,
						__Opts, _els, <<>>),
    {teknorota_profile_avatar, Cdata}.

decode_teknorota_profile_avatar_els(__TopXMLNS, __Opts,
				    [], Cdata) ->
    decode_teknorota_profile_avatar_cdata(__TopXMLNS,
					  Cdata);
decode_teknorota_profile_avatar_els(__TopXMLNS, __Opts,
				    [{xmlcdata, _data} | _els], Cdata) ->
    decode_teknorota_profile_avatar_els(__TopXMLNS, __Opts,
					_els, <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_avatar_els(__TopXMLNS, __Opts,
				    [_ | _els], Cdata) ->
    decode_teknorota_profile_avatar_els(__TopXMLNS, __Opts,
					_els, Cdata).

encode_teknorota_profile_avatar({teknorota_profile_avatar,
				 Cdata},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = encode_teknorota_profile_avatar_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"avatar">>, _attrs, _els}.

decode_teknorota_profile_avatar_cdata(__TopXMLNS,
				      <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"avatar">>, __TopXMLNS}});
decode_teknorota_profile_avatar_cdata(__TopXMLNS,
				      _val) ->
    _val.

encode_teknorota_profile_avatar_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_profile_name(__TopXMLNS, __Opts,
			      {xmlel, <<"name">>, _attrs, _els}) ->
    Cdata = decode_teknorota_profile_name_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    {teknorota_profile_name, Cdata}.

decode_teknorota_profile_name_els(__TopXMLNS, __Opts,
				  [], Cdata) ->
    decode_teknorota_profile_name_cdata(__TopXMLNS, Cdata);
decode_teknorota_profile_name_els(__TopXMLNS, __Opts,
				  [{xmlcdata, _data} | _els], Cdata) ->
    decode_teknorota_profile_name_els(__TopXMLNS, __Opts,
				      _els, <<Cdata/binary, _data/binary>>);
decode_teknorota_profile_name_els(__TopXMLNS, __Opts,
				  [_ | _els], Cdata) ->
    decode_teknorota_profile_name_els(__TopXMLNS, __Opts,
				      _els, Cdata).

encode_teknorota_profile_name({teknorota_profile_name,
			       Cdata},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:profile">>,
				    [], __TopXMLNS),
    _els = encode_teknorota_profile_name_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_teknorota_profile_name_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"name">>, __TopXMLNS}});
decode_teknorota_profile_name_cdata(__TopXMLNS, _val) ->
    _val.

encode_teknorota_profile_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
