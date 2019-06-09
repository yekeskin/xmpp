%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(teknorota_push).

-compile(export_all).

do_decode(<<"query">>,
	  <<"teknorota:xmpp:pushnotifications">>, El, Opts) ->
    decode_teknorota_push_query(<<"teknorota:xmpp:pushnotifications">>,
				Opts, El);
do_decode(<<"unregistered">>,
	  <<"teknorota:xmpp:pushnotifications">>, El, Opts) ->
    decode_teknorota_push_unregistered(<<"teknorota:xmpp:pushnotifications">>,
				       Opts, El);
do_decode(<<"registered">>,
	  <<"teknorota:xmpp:pushnotifications">>, El, Opts) ->
    decode_teknorota_push_registered(<<"teknorota:xmpp:pushnotifications">>,
				     Opts, El);
do_decode(<<"unregister">>,
	  <<"teknorota:xmpp:pushnotifications">>, El, Opts) ->
    decode_teknorota_push_unregister(<<"teknorota:xmpp:pushnotifications">>,
				     Opts, El);
do_decode(<<"register">>,
	  <<"teknorota:xmpp:pushnotifications">>, El, Opts) ->
    decode_teknorota_push_register(<<"teknorota:xmpp:pushnotifications">>,
				   Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"teknorota:xmpp:pushnotifications">>},
     {<<"unregistered">>,
      <<"teknorota:xmpp:pushnotifications">>},
     {<<"registered">>,
      <<"teknorota:xmpp:pushnotifications">>},
     {<<"unregister">>,
      <<"teknorota:xmpp:pushnotifications">>},
     {<<"register">>,
      <<"teknorota:xmpp:pushnotifications">>}].

do_encode({teknorota_push_register, _, _} = Register,
	  TopXMLNS) ->
    encode_teknorota_push_register(Register, TopXMLNS);
do_encode({teknorota_push_unregister, _} = Unregister,
	  TopXMLNS) ->
    encode_teknorota_push_unregister(Unregister, TopXMLNS);
do_encode({teknorota_push_registered} = Registered,
	  TopXMLNS) ->
    encode_teknorota_push_registered(Registered, TopXMLNS);
do_encode({teknorota_push_unregistered} = Unregistered,
	  TopXMLNS) ->
    encode_teknorota_push_unregistered(Unregistered,
				       TopXMLNS);
do_encode({teknorota_push_query, _, _} = Query,
	  TopXMLNS) ->
    encode_teknorota_push_query(Query, TopXMLNS).

do_get_name({teknorota_push_query, _, _}) ->
    <<"query">>;
do_get_name({teknorota_push_register, _, _}) ->
    <<"register">>;
do_get_name({teknorota_push_registered}) ->
    <<"registered">>;
do_get_name({teknorota_push_unregister, _}) ->
    <<"unregister">>;
do_get_name({teknorota_push_unregistered}) ->
    <<"unregistered">>.

do_get_ns({teknorota_push_query, _, _}) ->
    <<"teknorota:xmpp:pushnotifications">>;
do_get_ns({teknorota_push_register, _, _}) ->
    <<"teknorota:xmpp:pushnotifications">>;
do_get_ns({teknorota_push_registered}) ->
    <<"teknorota:xmpp:pushnotifications">>;
do_get_ns({teknorota_push_unregister, _}) ->
    <<"teknorota:xmpp:pushnotifications">>;
do_get_ns({teknorota_push_unregistered}) ->
    <<"teknorota:xmpp:pushnotifications">>.

pp(teknorota_push_register, 2) -> [token, type];
pp(teknorota_push_unregister, 1) -> [token];
pp(teknorota_push_registered, 0) -> [];
pp(teknorota_push_unregistered, 0) -> [];
pp(teknorota_push_query, 2) -> [register, unregister];
pp(_, _) -> no.

records() ->
    [{teknorota_push_register, 2},
     {teknorota_push_unregister, 1},
     {teknorota_push_registered, 0},
     {teknorota_push_unregistered, 0},
     {teknorota_push_query, 2}].

decode_teknorota_push_query(__TopXMLNS, __Opts,
			    {xmlel, <<"query">>, _attrs, _els}) ->
    {Unregister, Register} =
	decode_teknorota_push_query_els(__TopXMLNS, __Opts,
					_els, [], []),
    {teknorota_push_query, Register, Unregister}.

decode_teknorota_push_query_els(__TopXMLNS, __Opts, [],
				Unregister, Register) ->
    {lists:reverse(Unregister), lists:reverse(Register)};
decode_teknorota_push_query_els(__TopXMLNS, __Opts,
				[{xmlel, <<"register">>, _attrs, _} = _el
				 | _els],
				Unregister, Register) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:pushnotifications">> ->
	  decode_teknorota_push_query_els(__TopXMLNS, __Opts,
					  _els, Unregister,
					  [decode_teknorota_push_register(<<"teknorota:xmpp:pushnotifications">>,
									  __Opts,
									  _el)
					   | Register]);
      _ ->
	  decode_teknorota_push_query_els(__TopXMLNS, __Opts,
					  _els, Unregister, Register)
    end;
decode_teknorota_push_query_els(__TopXMLNS, __Opts,
				[{xmlel, <<"unregister">>, _attrs, _} = _el
				 | _els],
				Unregister, Register) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:pushnotifications">> ->
	  decode_teknorota_push_query_els(__TopXMLNS, __Opts,
					  _els,
					  [decode_teknorota_push_unregister(<<"teknorota:xmpp:pushnotifications">>,
									    __Opts,
									    _el)
					   | Unregister],
					  Register);
      _ ->
	  decode_teknorota_push_query_els(__TopXMLNS, __Opts,
					  _els, Unregister, Register)
    end;
decode_teknorota_push_query_els(__TopXMLNS, __Opts,
				[_ | _els], Unregister, Register) ->
    decode_teknorota_push_query_els(__TopXMLNS, __Opts,
				    _els, Unregister, Register).

encode_teknorota_push_query({teknorota_push_query,
			     Register, Unregister},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:pushnotifications">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_push_query_$unregister'(Unregister,
								__NewTopXMLNS,
								'encode_teknorota_push_query_$register'(Register,
													__NewTopXMLNS,
													[]))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_teknorota_push_query_$unregister'([],
					  __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_push_query_$unregister'([Unregister
					   | _els],
					  __TopXMLNS, _acc) ->
    'encode_teknorota_push_query_$unregister'(_els,
					      __TopXMLNS,
					      [encode_teknorota_push_unregister(Unregister,
										__TopXMLNS)
					       | _acc]).

'encode_teknorota_push_query_$register'([], __TopXMLNS,
					_acc) ->
    _acc;
'encode_teknorota_push_query_$register'([Register
					 | _els],
					__TopXMLNS, _acc) ->
    'encode_teknorota_push_query_$register'(_els,
					    __TopXMLNS,
					    [encode_teknorota_push_register(Register,
									    __TopXMLNS)
					     | _acc]).

decode_teknorota_push_unregistered(__TopXMLNS, __Opts,
				   {xmlel, <<"unregistered">>, _attrs, _els}) ->
    {teknorota_push_unregistered}.

encode_teknorota_push_unregistered({teknorota_push_unregistered},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:pushnotifications">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unregistered">>, _attrs, _els}.

decode_teknorota_push_registered(__TopXMLNS, __Opts,
				 {xmlel, <<"registered">>, _attrs, _els}) ->
    {teknorota_push_registered}.

encode_teknorota_push_registered({teknorota_push_registered},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:pushnotifications">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"registered">>, _attrs, _els}.

decode_teknorota_push_unregister(__TopXMLNS, __Opts,
				 {xmlel, <<"unregister">>, _attrs, _els}) ->
    Token =
	decode_teknorota_push_unregister_attrs(__TopXMLNS,
					       _attrs, undefined),
    {teknorota_push_unregister, Token}.

decode_teknorota_push_unregister_attrs(__TopXMLNS,
				       [{<<"token">>, _val} | _attrs],
				       _Token) ->
    decode_teknorota_push_unregister_attrs(__TopXMLNS,
					   _attrs, _val);
decode_teknorota_push_unregister_attrs(__TopXMLNS,
				       [_ | _attrs], Token) ->
    decode_teknorota_push_unregister_attrs(__TopXMLNS,
					   _attrs, Token);
decode_teknorota_push_unregister_attrs(__TopXMLNS, [],
				       Token) ->
    decode_teknorota_push_unregister_attr_token(__TopXMLNS,
						Token).

encode_teknorota_push_unregister({teknorota_push_unregister,
				  Token},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:pushnotifications">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_push_unregister_attr_token(Token,
						    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									       __TopXMLNS)),
    {xmlel, <<"unregister">>, _attrs, _els}.

decode_teknorota_push_unregister_attr_token(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_teknorota_push_unregister_attr_token(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_push_unregister_attr_token(<<>>,
					    _acc) ->
    _acc;
encode_teknorota_push_unregister_attr_token(_val,
					    _acc) ->
    [{<<"token">>, _val} | _acc].

decode_teknorota_push_register(__TopXMLNS, __Opts,
			       {xmlel, <<"register">>, _attrs, _els}) ->
    {Token, Type} =
	decode_teknorota_push_register_attrs(__TopXMLNS, _attrs,
					     undefined, undefined),
    {teknorota_push_register, Token, Type}.

decode_teknorota_push_register_attrs(__TopXMLNS,
				     [{<<"token">>, _val} | _attrs], _Token,
				     Type) ->
    decode_teknorota_push_register_attrs(__TopXMLNS, _attrs,
					 _val, Type);
decode_teknorota_push_register_attrs(__TopXMLNS,
				     [{<<"type">>, _val} | _attrs], Token,
				     _Type) ->
    decode_teknorota_push_register_attrs(__TopXMLNS, _attrs,
					 Token, _val);
decode_teknorota_push_register_attrs(__TopXMLNS,
				     [_ | _attrs], Token, Type) ->
    decode_teknorota_push_register_attrs(__TopXMLNS, _attrs,
					 Token, Type);
decode_teknorota_push_register_attrs(__TopXMLNS, [],
				     Token, Type) ->
    {decode_teknorota_push_register_attr_token(__TopXMLNS,
					       Token),
     decode_teknorota_push_register_attr_type(__TopXMLNS,
					      Type)}.

encode_teknorota_push_register({teknorota_push_register,
				Token, Type},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:pushnotifications">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_teknorota_push_register_attr_type(Type,
						      encode_teknorota_push_register_attr_token(Token,
												xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															   __TopXMLNS))),
    {xmlel, <<"register">>, _attrs, _els}.

decode_teknorota_push_register_attr_token(__TopXMLNS,
					  undefined) ->
    <<>>;
decode_teknorota_push_register_attr_token(__TopXMLNS,
					  _val) ->
    _val.

encode_teknorota_push_register_attr_token(<<>>, _acc) ->
    _acc;
encode_teknorota_push_register_attr_token(_val, _acc) ->
    [{<<"token">>, _val} | _acc].

decode_teknorota_push_register_attr_type(__TopXMLNS,
					 undefined) ->
    <<>>;
decode_teknorota_push_register_attr_type(__TopXMLNS,
					 _val) ->
    _val.

encode_teknorota_push_register_attr_type(<<>>, _acc) ->
    _acc;
encode_teknorota_push_register_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].
