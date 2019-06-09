%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(teknorota_register).

-compile(export_all).

do_decode(<<"query">>, <<"teknorota:xmpp:register">>,
	  El, Opts) ->
    decode_teknorota_register_query(<<"teknorota:xmpp:register">>,
				    Opts, El);
do_decode(<<"invoice">>, <<"teknorota:xmpp:register">>,
	  El, Opts) ->
    decode_teknorota_register_invoice(<<"teknorota:xmpp:register">>,
				      Opts, El);
do_decode(<<"virtual-complete">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_virtual_complete(<<"teknorota:xmpp:register">>,
					       Opts, El);
do_decode(<<"virtual-init">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_virtual_init(<<"teknorota:xmpp:register">>,
					   Opts, El);
do_decode(<<"check-invoice">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_check_invoice(<<"teknorota:xmpp:register">>,
					    Opts, El);
do_decode(<<"pay-invoice">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_pay_invoice(<<"teknorota:xmpp:register">>,
					  Opts, El);
do_decode(<<"create-invoice">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_create_invoice(<<"teknorota:xmpp:register">>,
					     Opts, El);
do_decode(<<"packages">>, <<"teknorota:xmpp:register">>,
	  El, Opts) ->
    decode_teknorota_register_packages(<<"teknorota:xmpp:register">>,
				       Opts, El);
do_decode(<<"package">>, <<"teknorota:xmpp:register">>,
	  El, Opts) ->
    decode_teknorota_register_package(<<"teknorota:xmpp:register">>,
				      Opts, El);
do_decode(<<"get-packages">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_get_packages(<<"teknorota:xmpp:register">>,
					   Opts, El);
do_decode(<<"verify-complete">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_verify_complete(<<"teknorota:xmpp:register">>,
					      Opts, El);
do_decode(<<"verify-init">>,
	  <<"teknorota:xmpp:register">>, El, Opts) ->
    decode_teknorota_register_verify_init(<<"teknorota:xmpp:register">>,
					  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"teknorota:xmpp:register">>},
     {<<"invoice">>, <<"teknorota:xmpp:register">>},
     {<<"virtual-complete">>, <<"teknorota:xmpp:register">>},
     {<<"virtual-init">>, <<"teknorota:xmpp:register">>},
     {<<"check-invoice">>, <<"teknorota:xmpp:register">>},
     {<<"pay-invoice">>, <<"teknorota:xmpp:register">>},
     {<<"create-invoice">>, <<"teknorota:xmpp:register">>},
     {<<"packages">>, <<"teknorota:xmpp:register">>},
     {<<"package">>, <<"teknorota:xmpp:register">>},
     {<<"get-packages">>, <<"teknorota:xmpp:register">>},
     {<<"verify-complete">>, <<"teknorota:xmpp:register">>},
     {<<"verify-init">>, <<"teknorota:xmpp:register">>}].

do_encode({teknorota_register_verify_init, _, _, _, _} =
	      Verify_init,
	  TopXMLNS) ->
    encode_teknorota_register_verify_init(Verify_init,
					  TopXMLNS);
do_encode({teknorota_register_verify_complete, _, _, _,
	   _, _, _} =
	      Verify_complete,
	  TopXMLNS) ->
    encode_teknorota_register_verify_complete(Verify_complete,
					      TopXMLNS);
do_encode({teknorota_register_get_packages} =
	      Get_packages,
	  TopXMLNS) ->
    encode_teknorota_register_get_packages(Get_packages,
					   TopXMLNS);
do_encode({teknorota_register_package, _, _, _, _, _,
	   _} =
	      Package,
	  TopXMLNS) ->
    encode_teknorota_register_package(Package, TopXMLNS);
do_encode({teknorota_register_packages, _} = Packages,
	  TopXMLNS) ->
    encode_teknorota_register_packages(Packages, TopXMLNS);
do_encode({teknorota_register_create_invoice, _, _, _} =
	      Create_invoice,
	  TopXMLNS) ->
    encode_teknorota_register_create_invoice(Create_invoice,
					     TopXMLNS);
do_encode({teknorota_register_pay_invoice, _, _, _, _} =
	      Pay_invoice,
	  TopXMLNS) ->
    encode_teknorota_register_pay_invoice(Pay_invoice,
					  TopXMLNS);
do_encode({teknorota_register_check_invoice, _, _} =
	      Check_invoice,
	  TopXMLNS) ->
    encode_teknorota_register_check_invoice(Check_invoice,
					    TopXMLNS);
do_encode({teknorota_register_virtual_init, _} =
	      Virtual_init,
	  TopXMLNS) ->
    encode_teknorota_register_virtual_init(Virtual_init,
					   TopXMLNS);
do_encode({teknorota_register_virtual_complete, _, _,
	   _} =
	      Virtual_complete,
	  TopXMLNS) ->
    encode_teknorota_register_virtual_complete(Virtual_complete,
					       TopXMLNS);
do_encode({teknorota_register_invoice, _, _, _} =
	      Invoice,
	  TopXMLNS) ->
    encode_teknorota_register_invoice(Invoice, TopXMLNS);
do_encode({teknorota_register_query, _, _, _, _, _, _,
	   _, _} =
	      Query,
	  TopXMLNS) ->
    encode_teknorota_register_query(Query, TopXMLNS).

do_get_name({teknorota_register_check_invoice, _, _}) ->
    <<"check-invoice">>;
do_get_name({teknorota_register_create_invoice, _, _,
	     _}) ->
    <<"create-invoice">>;
do_get_name({teknorota_register_get_packages}) ->
    <<"get-packages">>;
do_get_name({teknorota_register_invoice, _, _, _}) ->
    <<"invoice">>;
do_get_name({teknorota_register_package, _, _, _, _, _,
	     _}) ->
    <<"package">>;
do_get_name({teknorota_register_packages, _}) ->
    <<"packages">>;
do_get_name({teknorota_register_pay_invoice, _, _, _,
	     _}) ->
    <<"pay-invoice">>;
do_get_name({teknorota_register_query, _, _, _, _, _, _,
	     _, _}) ->
    <<"query">>;
do_get_name({teknorota_register_verify_complete, _, _,
	     _, _, _, _}) ->
    <<"verify-complete">>;
do_get_name({teknorota_register_verify_init, _, _, _,
	     _}) ->
    <<"verify-init">>;
do_get_name({teknorota_register_virtual_complete, _, _,
	     _}) ->
    <<"virtual-complete">>;
do_get_name({teknorota_register_virtual_init, _}) ->
    <<"virtual-init">>.

do_get_ns({teknorota_register_check_invoice, _, _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_create_invoice, _, _,
	   _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_get_packages}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_invoice, _, _, _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_package, _, _, _, _, _,
	   _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_packages, _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_pay_invoice, _, _, _,
	   _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_query, _, _, _, _, _, _,
	   _, _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_verify_complete, _, _, _,
	   _, _, _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_verify_init, _, _, _,
	   _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_virtual_complete, _, _,
	   _}) ->
    <<"teknorota:xmpp:register">>;
do_get_ns({teknorota_register_virtual_init, _}) ->
    <<"teknorota:xmpp:register">>.

pp(teknorota_register_verify_init, 4) ->
    [id, phone, country, type];
pp(teknorota_register_verify_complete, 6) ->
    [id, phone, country, code, jid, password];
pp(teknorota_register_get_packages, 0) -> [];
pp(teknorota_register_package, 6) ->
    [id, name, price, 'price-virtual', currency, duration];
pp(teknorota_register_packages, 1) -> [packages];
pp(teknorota_register_create_invoice, 3) ->
    ['package-id', 'payment-type', 'user-id'];
pp(teknorota_register_pay_invoice, 4) ->
    [id, token, email, 'user-id'];
pp(teknorota_register_check_invoice, 2) ->
    [id, 'user-id'];
pp(teknorota_register_virtual_init, 1) -> ['user-id'];
pp(teknorota_register_virtual_complete, 3) ->
    ['user-id', jid, password];
pp(teknorota_register_invoice, 3) ->
    [id, token, success];
pp(teknorota_register_query, 8) ->
    [verify_init, verify_complete, get_packages,
     create_invoice, pay_invoice, check_invoice,
     virtual_init, virtual_complete];
pp(_, _) -> no.

records() ->
    [{teknorota_register_verify_init, 4},
     {teknorota_register_verify_complete, 6},
     {teknorota_register_get_packages, 0},
     {teknorota_register_package, 6},
     {teknorota_register_packages, 1},
     {teknorota_register_create_invoice, 3},
     {teknorota_register_pay_invoice, 4},
     {teknorota_register_check_invoice, 2},
     {teknorota_register_virtual_init, 1},
     {teknorota_register_virtual_complete, 3},
     {teknorota_register_invoice, 3},
     {teknorota_register_query, 8}].

decode_teknorota_register_query(__TopXMLNS, __Opts,
				{xmlel, <<"query">>, _attrs, _els}) ->
    {Get_packages, Virtual_init, Verify_init,
     Virtual_complete, Check_invoice, Pay_invoice,
     Create_invoice, Verify_complete} =
	decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					    _els, [], [], [], [], [], [], [],
					    []),
    {teknorota_register_query, Verify_init, Verify_complete,
     Get_packages, Create_invoice, Pay_invoice,
     Check_invoice, Virtual_init, Virtual_complete}.

decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [], Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    {lists:reverse(Get_packages),
     lists:reverse(Virtual_init), lists:reverse(Verify_init),
     lists:reverse(Virtual_complete),
     lists:reverse(Check_invoice),
     lists:reverse(Pay_invoice),
     lists:reverse(Create_invoice),
     lists:reverse(Verify_complete)};
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"verify-init">>, _attrs, _} = _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      [decode_teknorota_register_verify_init(<<"teknorota:xmpp:register">>,
										     __Opts,
										     _el)
					       | Verify_init],
					      Virtual_complete, Check_invoice,
					      Pay_invoice, Create_invoice,
					      Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"verify-complete">>, _attrs, _} =
					 _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice,
					      [decode_teknorota_register_verify_complete(<<"teknorota:xmpp:register">>,
											 __Opts,
											 _el)
					       | Verify_complete]);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"get-packages">>, _attrs, _} =
					 _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els,
					      [decode_teknorota_register_get_packages(<<"teknorota:xmpp:register">>,
										      __Opts,
										      _el)
					       | Get_packages],
					      Virtual_init, Verify_init,
					      Virtual_complete, Check_invoice,
					      Pay_invoice, Create_invoice,
					      Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"create-invoice">>, _attrs, _} =
					 _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      [decode_teknorota_register_create_invoice(<<"teknorota:xmpp:register">>,
											__Opts,
											_el)
					       | Create_invoice],
					      Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"pay-invoice">>, _attrs, _} = _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice,
					      [decode_teknorota_register_pay_invoice(<<"teknorota:xmpp:register">>,
										     __Opts,
										     _el)
					       | Pay_invoice],
					      Create_invoice, Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"check-invoice">>, _attrs, _} =
					 _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      [decode_teknorota_register_check_invoice(<<"teknorota:xmpp:register">>,
										       __Opts,
										       _el)
					       | Check_invoice],
					      Pay_invoice, Create_invoice,
					      Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"virtual-init">>, _attrs, _} =
					 _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages,
					      [decode_teknorota_register_virtual_init(<<"teknorota:xmpp:register">>,
										      __Opts,
										      _el)
					       | Virtual_init],
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"virtual-complete">>, _attrs,
				      _} =
					 _el
				     | _els],
				    Get_packages, Virtual_init, Verify_init,
				    Virtual_complete, Check_invoice,
				    Pay_invoice, Create_invoice,
				    Verify_complete) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init,
					      [decode_teknorota_register_virtual_complete(<<"teknorota:xmpp:register">>,
											  __Opts,
											  _el)
					       | Virtual_complete],
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete);
      _ ->
	  decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					      _els, Get_packages, Virtual_init,
					      Verify_init, Virtual_complete,
					      Check_invoice, Pay_invoice,
					      Create_invoice, Verify_complete)
    end;
decode_teknorota_register_query_els(__TopXMLNS, __Opts,
				    [_ | _els], Get_packages, Virtual_init,
				    Verify_init, Virtual_complete,
				    Check_invoice, Pay_invoice, Create_invoice,
				    Verify_complete) ->
    decode_teknorota_register_query_els(__TopXMLNS, __Opts,
					_els, Get_packages, Virtual_init,
					Verify_init, Virtual_complete,
					Check_invoice, Pay_invoice,
					Create_invoice, Verify_complete).

encode_teknorota_register_query({teknorota_register_query,
				 Verify_init, Verify_complete, Get_packages,
				 Create_invoice, Pay_invoice, Check_invoice,
				 Virtual_init, Virtual_complete},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_register_query_$get_packages'(Get_packages,
								      __NewTopXMLNS,
								      'encode_teknorota_register_query_$virtual_init'(Virtual_init,
														      __NewTopXMLNS,
														      'encode_teknorota_register_query_$verify_init'(Verify_init,
																				     __NewTopXMLNS,
																				     'encode_teknorota_register_query_$virtual_complete'(Virtual_complete,
																											 __NewTopXMLNS,
																											 'encode_teknorota_register_query_$check_invoice'(Check_invoice,
																																	  __NewTopXMLNS,
																																	  'encode_teknorota_register_query_$pay_invoice'(Pay_invoice,
																																							 __NewTopXMLNS,
																																							 'encode_teknorota_register_query_$create_invoice'(Create_invoice,
																																													   __NewTopXMLNS,
																																													   'encode_teknorota_register_query_$verify_complete'(Verify_complete,
																																																			      __NewTopXMLNS,
																																																			      []))))))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_teknorota_register_query_$get_packages'([],
						__TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$get_packages'([Get_packages
						 | _els],
						__TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$get_packages'(_els,
						    __TopXMLNS,
						    [encode_teknorota_register_get_packages(Get_packages,
											    __TopXMLNS)
						     | _acc]).

'encode_teknorota_register_query_$virtual_init'([],
						__TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$virtual_init'([Virtual_init
						 | _els],
						__TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$virtual_init'(_els,
						    __TopXMLNS,
						    [encode_teknorota_register_virtual_init(Virtual_init,
											    __TopXMLNS)
						     | _acc]).

'encode_teknorota_register_query_$verify_init'([],
					       __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$verify_init'([Verify_init
						| _els],
					       __TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$verify_init'(_els,
						   __TopXMLNS,
						   [encode_teknorota_register_verify_init(Verify_init,
											  __TopXMLNS)
						    | _acc]).

'encode_teknorota_register_query_$virtual_complete'([],
						    __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$virtual_complete'([Virtual_complete
						     | _els],
						    __TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$virtual_complete'(_els,
							__TopXMLNS,
							[encode_teknorota_register_virtual_complete(Virtual_complete,
												    __TopXMLNS)
							 | _acc]).

'encode_teknorota_register_query_$check_invoice'([],
						 __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$check_invoice'([Check_invoice
						  | _els],
						 __TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$check_invoice'(_els,
						     __TopXMLNS,
						     [encode_teknorota_register_check_invoice(Check_invoice,
											      __TopXMLNS)
						      | _acc]).

'encode_teknorota_register_query_$pay_invoice'([],
					       __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$pay_invoice'([Pay_invoice
						| _els],
					       __TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$pay_invoice'(_els,
						   __TopXMLNS,
						   [encode_teknorota_register_pay_invoice(Pay_invoice,
											  __TopXMLNS)
						    | _acc]).

'encode_teknorota_register_query_$create_invoice'([],
						  __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$create_invoice'([Create_invoice
						   | _els],
						  __TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$create_invoice'(_els,
						      __TopXMLNS,
						      [encode_teknorota_register_create_invoice(Create_invoice,
												__TopXMLNS)
						       | _acc]).

'encode_teknorota_register_query_$verify_complete'([],
						   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_query_$verify_complete'([Verify_complete
						    | _els],
						   __TopXMLNS, _acc) ->
    'encode_teknorota_register_query_$verify_complete'(_els,
						       __TopXMLNS,
						       [encode_teknorota_register_verify_complete(Verify_complete,
												  __TopXMLNS)
							| _acc]).

decode_teknorota_register_invoice(__TopXMLNS, __Opts,
				  {xmlel, <<"invoice">>, _attrs, _els}) ->
    {Id, Token, Success} =
	decode_teknorota_register_invoice_attrs(__TopXMLNS,
						_attrs, undefined, undefined,
						undefined),
    {teknorota_register_invoice, Id, Token, Success}.

decode_teknorota_register_invoice_attrs(__TopXMLNS,
					[{<<"id">>, _val} | _attrs], _Id, Token,
					Success) ->
    decode_teknorota_register_invoice_attrs(__TopXMLNS,
					    _attrs, _val, Token, Success);
decode_teknorota_register_invoice_attrs(__TopXMLNS,
					[{<<"token">>, _val} | _attrs], Id,
					_Token, Success) ->
    decode_teknorota_register_invoice_attrs(__TopXMLNS,
					    _attrs, Id, _val, Success);
decode_teknorota_register_invoice_attrs(__TopXMLNS,
					[{<<"success">>, _val} | _attrs], Id,
					Token, _Success) ->
    decode_teknorota_register_invoice_attrs(__TopXMLNS,
					    _attrs, Id, Token, _val);
decode_teknorota_register_invoice_attrs(__TopXMLNS,
					[_ | _attrs], Id, Token, Success) ->
    decode_teknorota_register_invoice_attrs(__TopXMLNS,
					    _attrs, Id, Token, Success);
decode_teknorota_register_invoice_attrs(__TopXMLNS, [],
					Id, Token, Success) ->
    {decode_teknorota_register_invoice_attr_id(__TopXMLNS,
					       Id),
     decode_teknorota_register_invoice_attr_token(__TopXMLNS,
						  Token),
     decode_teknorota_register_invoice_attr_success(__TopXMLNS,
						    Success)}.

encode_teknorota_register_invoice({teknorota_register_invoice,
				   Id, Token, Success},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_register_invoice_attr_success(Success,
						       encode_teknorota_register_invoice_attr_token(Token,
												    encode_teknorota_register_invoice_attr_id(Id,
																	      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																					 __TopXMLNS)))),
    {xmlel, <<"invoice">>, _attrs, _els}.

decode_teknorota_register_invoice_attr_id(__TopXMLNS,
					  undefined) ->
    <<>>;
decode_teknorota_register_invoice_attr_id(__TopXMLNS,
					  _val) ->
    _val.

encode_teknorota_register_invoice_attr_id(<<>>, _acc) ->
    _acc;
encode_teknorota_register_invoice_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_register_invoice_attr_token(__TopXMLNS,
					     undefined) ->
    <<>>;
decode_teknorota_register_invoice_attr_token(__TopXMLNS,
					     _val) ->
    _val.

encode_teknorota_register_invoice_attr_token(<<>>,
					     _acc) ->
    _acc;
encode_teknorota_register_invoice_attr_token(_val,
					     _acc) ->
    [{<<"token">>, _val} | _acc].

decode_teknorota_register_invoice_attr_success(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_teknorota_register_invoice_attr_success(__TopXMLNS,
					       _val) ->
    _val.

encode_teknorota_register_invoice_attr_success(<<>>,
					       _acc) ->
    _acc;
encode_teknorota_register_invoice_attr_success(_val,
					       _acc) ->
    [{<<"success">>, _val} | _acc].

decode_teknorota_register_virtual_complete(__TopXMLNS,
					   __Opts,
					   {xmlel, <<"virtual-complete">>,
					    _attrs, _els}) ->
    {User_id, Jid, Password} =
	decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
							 _attrs, undefined,
							 undefined, undefined),
    {teknorota_register_virtual_complete, User_id, Jid,
     Password}.

decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						 [{<<"user-id">>, _val}
						  | _attrs],
						 _User_id, Jid, Password) ->
    decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						     _attrs, _val, Jid,
						     Password);
decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						 [{<<"jid">>, _val} | _attrs],
						 User_id, _Jid, Password) ->
    decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						     _attrs, User_id, _val,
						     Password);
decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						 [{<<"password">>, _val}
						  | _attrs],
						 User_id, Jid, _Password) ->
    decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						     _attrs, User_id, Jid,
						     _val);
decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						 [_ | _attrs], User_id, Jid,
						 Password) ->
    decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						     _attrs, User_id, Jid,
						     Password);
decode_teknorota_register_virtual_complete_attrs(__TopXMLNS,
						 [], User_id, Jid, Password) ->
    {'decode_teknorota_register_virtual_complete_attr_user-id'(__TopXMLNS,
							       User_id),
     decode_teknorota_register_virtual_complete_attr_jid(__TopXMLNS,
							 Jid),
     decode_teknorota_register_virtual_complete_attr_password(__TopXMLNS,
							      Password)}.

encode_teknorota_register_virtual_complete({teknorota_register_virtual_complete,
					    User_id, Jid, Password},
					   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_register_virtual_complete_attr_password(Password,
								 encode_teknorota_register_virtual_complete_attr_jid(Jid,
														     'encode_teknorota_register_virtual_complete_attr_user-id'(User_id,
																					       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																									  __TopXMLNS)))),
    {xmlel, <<"virtual-complete">>, _attrs, _els}.

'decode_teknorota_register_virtual_complete_attr_user-id'(__TopXMLNS,
							  undefined) ->
    <<>>;
'decode_teknorota_register_virtual_complete_attr_user-id'(__TopXMLNS,
							  _val) ->
    _val.

'encode_teknorota_register_virtual_complete_attr_user-id'(<<>>,
							  _acc) ->
    _acc;
'encode_teknorota_register_virtual_complete_attr_user-id'(_val,
							  _acc) ->
    [{<<"user-id">>, _val} | _acc].

decode_teknorota_register_virtual_complete_attr_jid(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_register_virtual_complete_attr_jid(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_register_virtual_complete_attr_jid(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_register_virtual_complete_attr_jid(_val,
						    _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_register_virtual_complete_attr_password(__TopXMLNS,
							 undefined) ->
    <<>>;
decode_teknorota_register_virtual_complete_attr_password(__TopXMLNS,
							 _val) ->
    _val.

encode_teknorota_register_virtual_complete_attr_password(<<>>,
							 _acc) ->
    _acc;
encode_teknorota_register_virtual_complete_attr_password(_val,
							 _acc) ->
    [{<<"password">>, _val} | _acc].

decode_teknorota_register_virtual_init(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"virtual-init">>, _attrs,
					_els}) ->
    User_id =
	decode_teknorota_register_virtual_init_attrs(__TopXMLNS,
						     _attrs, undefined),
    {teknorota_register_virtual_init, User_id}.

decode_teknorota_register_virtual_init_attrs(__TopXMLNS,
					     [{<<"user-id">>, _val} | _attrs],
					     _User_id) ->
    decode_teknorota_register_virtual_init_attrs(__TopXMLNS,
						 _attrs, _val);
decode_teknorota_register_virtual_init_attrs(__TopXMLNS,
					     [_ | _attrs], User_id) ->
    decode_teknorota_register_virtual_init_attrs(__TopXMLNS,
						 _attrs, User_id);
decode_teknorota_register_virtual_init_attrs(__TopXMLNS,
					     [], User_id) ->
    'decode_teknorota_register_virtual_init_attr_user-id'(__TopXMLNS,
							  User_id).

encode_teknorota_register_virtual_init({teknorota_register_virtual_init,
					User_id},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	'encode_teknorota_register_virtual_init_attr_user-id'(User_id,
							      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
											 __TopXMLNS)),
    {xmlel, <<"virtual-init">>, _attrs, _els}.

'decode_teknorota_register_virtual_init_attr_user-id'(__TopXMLNS,
						      undefined) ->
    <<>>;
'decode_teknorota_register_virtual_init_attr_user-id'(__TopXMLNS,
						      _val) ->
    _val.

'encode_teknorota_register_virtual_init_attr_user-id'(<<>>,
						      _acc) ->
    _acc;
'encode_teknorota_register_virtual_init_attr_user-id'(_val,
						      _acc) ->
    [{<<"user-id">>, _val} | _acc].

decode_teknorota_register_check_invoice(__TopXMLNS,
					__Opts,
					{xmlel, <<"check-invoice">>, _attrs,
					 _els}) ->
    {Id, User_id} =
	decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
						      _attrs, undefined,
						      undefined),
    {teknorota_register_check_invoice, Id, User_id}.

decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
					      [{<<"id">>, _val} | _attrs], _Id,
					      User_id) ->
    decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
						  _attrs, _val, User_id);
decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
					      [{<<"user-id">>, _val} | _attrs],
					      Id, _User_id) ->
    decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
						  _attrs, Id, _val);
decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
					      [_ | _attrs], Id, User_id) ->
    decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
						  _attrs, Id, User_id);
decode_teknorota_register_check_invoice_attrs(__TopXMLNS,
					      [], Id, User_id) ->
    {decode_teknorota_register_check_invoice_attr_id(__TopXMLNS,
						     Id),
     'decode_teknorota_register_check_invoice_attr_user-id'(__TopXMLNS,
							    User_id)}.

encode_teknorota_register_check_invoice({teknorota_register_check_invoice,
					 Id, User_id},
					__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	'encode_teknorota_register_check_invoice_attr_user-id'(User_id,
							       encode_teknorota_register_check_invoice_attr_id(Id,
													       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																	  __TopXMLNS))),
    {xmlel, <<"check-invoice">>, _attrs, _els}.

decode_teknorota_register_check_invoice_attr_id(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_register_check_invoice_attr_id(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_register_check_invoice_attr_id(<<>>,
						_acc) ->
    _acc;
encode_teknorota_register_check_invoice_attr_id(_val,
						_acc) ->
    [{<<"id">>, _val} | _acc].

'decode_teknorota_register_check_invoice_attr_user-id'(__TopXMLNS,
						       undefined) ->
    <<>>;
'decode_teknorota_register_check_invoice_attr_user-id'(__TopXMLNS,
						       _val) ->
    _val.

'encode_teknorota_register_check_invoice_attr_user-id'(<<>>,
						       _acc) ->
    _acc;
'encode_teknorota_register_check_invoice_attr_user-id'(_val,
						       _acc) ->
    [{<<"user-id">>, _val} | _acc].

decode_teknorota_register_pay_invoice(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"pay-invoice">>, _attrs,
				       _els}) ->
    {Id, Token, Email, User_id} =
	decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
						    _attrs, undefined,
						    undefined, undefined,
						    undefined),
    {teknorota_register_pay_invoice, Id, Token, Email,
     User_id}.

decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
					    [{<<"id">>, _val} | _attrs], _Id,
					    Token, Email, User_id) ->
    decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
						_attrs, _val, Token, Email,
						User_id);
decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
					    [{<<"token">>, _val} | _attrs], Id,
					    _Token, Email, User_id) ->
    decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
						_attrs, Id, _val, Email,
						User_id);
decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
					    [{<<"email">>, _val} | _attrs], Id,
					    Token, _Email, User_id) ->
    decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, _val,
						User_id);
decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
					    [{<<"user-id">>, _val} | _attrs],
					    Id, Token, Email, _User_id) ->
    decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Email, _val);
decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
					    [_ | _attrs], Id, Token, Email,
					    User_id) ->
    decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Email,
						User_id);
decode_teknorota_register_pay_invoice_attrs(__TopXMLNS,
					    [], Id, Token, Email, User_id) ->
    {decode_teknorota_register_pay_invoice_attr_id(__TopXMLNS,
						   Id),
     decode_teknorota_register_pay_invoice_attr_token(__TopXMLNS,
						      Token),
     decode_teknorota_register_pay_invoice_attr_email(__TopXMLNS,
						      Email),
     'decode_teknorota_register_pay_invoice_attr_user-id'(__TopXMLNS,
							  User_id)}.

encode_teknorota_register_pay_invoice({teknorota_register_pay_invoice,
				       Id, Token, Email, User_id},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	'encode_teknorota_register_pay_invoice_attr_user-id'(User_id,
							     encode_teknorota_register_pay_invoice_attr_email(Email,
													      encode_teknorota_register_pay_invoice_attr_token(Token,
																			       encode_teknorota_register_pay_invoice_attr_id(Id,
																									     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																													__TopXMLNS))))),
    {xmlel, <<"pay-invoice">>, _attrs, _els}.

decode_teknorota_register_pay_invoice_attr_id(__TopXMLNS,
					      undefined) ->
    <<>>;
decode_teknorota_register_pay_invoice_attr_id(__TopXMLNS,
					      _val) ->
    _val.

encode_teknorota_register_pay_invoice_attr_id(<<>>,
					      _acc) ->
    _acc;
encode_teknorota_register_pay_invoice_attr_id(_val,
					      _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_register_pay_invoice_attr_token(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_teknorota_register_pay_invoice_attr_token(__TopXMLNS,
						 _val) ->
    _val.

encode_teknorota_register_pay_invoice_attr_token(<<>>,
						 _acc) ->
    _acc;
encode_teknorota_register_pay_invoice_attr_token(_val,
						 _acc) ->
    [{<<"token">>, _val} | _acc].

decode_teknorota_register_pay_invoice_attr_email(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_teknorota_register_pay_invoice_attr_email(__TopXMLNS,
						 _val) ->
    _val.

encode_teknorota_register_pay_invoice_attr_email(<<>>,
						 _acc) ->
    _acc;
encode_teknorota_register_pay_invoice_attr_email(_val,
						 _acc) ->
    [{<<"email">>, _val} | _acc].

'decode_teknorota_register_pay_invoice_attr_user-id'(__TopXMLNS,
						     undefined) ->
    <<>>;
'decode_teknorota_register_pay_invoice_attr_user-id'(__TopXMLNS,
						     _val) ->
    _val.

'encode_teknorota_register_pay_invoice_attr_user-id'(<<>>,
						     _acc) ->
    _acc;
'encode_teknorota_register_pay_invoice_attr_user-id'(_val,
						     _acc) ->
    [{<<"user-id">>, _val} | _acc].

decode_teknorota_register_create_invoice(__TopXMLNS,
					 __Opts,
					 {xmlel, <<"create-invoice">>, _attrs,
					  _els}) ->
    {Package_id, Payment_type, User_id} =
	decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
						       _attrs, undefined,
						       undefined, undefined),
    {teknorota_register_create_invoice, Package_id,
     Payment_type, User_id}.

decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
					       [{<<"package-id">>, _val}
						| _attrs],
					       _Package_id, Payment_type,
					       User_id) ->
    decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
						   _attrs, _val, Payment_type,
						   User_id);
decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
					       [{<<"payment-type">>, _val}
						| _attrs],
					       Package_id, _Payment_type,
					       User_id) ->
    decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
						   _attrs, Package_id, _val,
						   User_id);
decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
					       [{<<"user-id">>, _val} | _attrs],
					       Package_id, Payment_type,
					       _User_id) ->
    decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
						   _attrs, Package_id,
						   Payment_type, _val);
decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
					       [_ | _attrs], Package_id,
					       Payment_type, User_id) ->
    decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
						   _attrs, Package_id,
						   Payment_type, User_id);
decode_teknorota_register_create_invoice_attrs(__TopXMLNS,
					       [], Package_id, Payment_type,
					       User_id) ->
    {'decode_teknorota_register_create_invoice_attr_package-id'(__TopXMLNS,
								Package_id),
     'decode_teknorota_register_create_invoice_attr_payment-type'(__TopXMLNS,
								  Payment_type),
     'decode_teknorota_register_create_invoice_attr_user-id'(__TopXMLNS,
							     User_id)}.

encode_teknorota_register_create_invoice({teknorota_register_create_invoice,
					  Package_id, Payment_type, User_id},
					 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	'encode_teknorota_register_create_invoice_attr_user-id'(User_id,
								'encode_teknorota_register_create_invoice_attr_payment-type'(Payment_type,
															     'encode_teknorota_register_create_invoice_attr_package-id'(Package_id,
																							xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																										   __TopXMLNS)))),
    {xmlel, <<"create-invoice">>, _attrs, _els}.

'decode_teknorota_register_create_invoice_attr_package-id'(__TopXMLNS,
							   undefined) ->
    <<>>;
'decode_teknorota_register_create_invoice_attr_package-id'(__TopXMLNS,
							   _val) ->
    _val.

'encode_teknorota_register_create_invoice_attr_package-id'(<<>>,
							   _acc) ->
    _acc;
'encode_teknorota_register_create_invoice_attr_package-id'(_val,
							   _acc) ->
    [{<<"package-id">>, _val} | _acc].

'decode_teknorota_register_create_invoice_attr_payment-type'(__TopXMLNS,
							     undefined) ->
    <<>>;
'decode_teknorota_register_create_invoice_attr_payment-type'(__TopXMLNS,
							     _val) ->
    _val.

'encode_teknorota_register_create_invoice_attr_payment-type'(<<>>,
							     _acc) ->
    _acc;
'encode_teknorota_register_create_invoice_attr_payment-type'(_val,
							     _acc) ->
    [{<<"payment-type">>, _val} | _acc].

'decode_teknorota_register_create_invoice_attr_user-id'(__TopXMLNS,
							undefined) ->
    <<>>;
'decode_teknorota_register_create_invoice_attr_user-id'(__TopXMLNS,
							_val) ->
    _val.

'encode_teknorota_register_create_invoice_attr_user-id'(<<>>,
							_acc) ->
    _acc;
'encode_teknorota_register_create_invoice_attr_user-id'(_val,
							_acc) ->
    [{<<"user-id">>, _val} | _acc].

decode_teknorota_register_packages(__TopXMLNS, __Opts,
				   {xmlel, <<"packages">>, _attrs, _els}) ->
    Packages =
	decode_teknorota_register_packages_els(__TopXMLNS,
					       __Opts, _els, []),
    {teknorota_register_packages, Packages}.

decode_teknorota_register_packages_els(__TopXMLNS,
				       __Opts, [], Packages) ->
    lists:reverse(Packages);
decode_teknorota_register_packages_els(__TopXMLNS,
				       __Opts,
				       [{xmlel, <<"package">>, _attrs, _} = _el
					| _els],
				       Packages) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:register">> ->
	  decode_teknorota_register_packages_els(__TopXMLNS,
						 __Opts, _els,
						 [decode_teknorota_register_package(<<"teknorota:xmpp:register">>,
										    __Opts,
										    _el)
						  | Packages]);
      _ ->
	  decode_teknorota_register_packages_els(__TopXMLNS,
						 __Opts, _els, Packages)
    end;
decode_teknorota_register_packages_els(__TopXMLNS,
				       __Opts, [_ | _els], Packages) ->
    decode_teknorota_register_packages_els(__TopXMLNS,
					   __Opts, _els, Packages).

encode_teknorota_register_packages({teknorota_register_packages,
				    Packages},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_register_packages_$packages'(Packages,
								     __NewTopXMLNS,
								     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"packages">>, _attrs, _els}.

'encode_teknorota_register_packages_$packages'([],
					       __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_register_packages_$packages'([Packages
						| _els],
					       __TopXMLNS, _acc) ->
    'encode_teknorota_register_packages_$packages'(_els,
						   __TopXMLNS,
						   [encode_teknorota_register_package(Packages,
										      __TopXMLNS)
						    | _acc]).

decode_teknorota_register_package(__TopXMLNS, __Opts,
				  {xmlel, <<"package">>, _attrs, _els}) ->
    {Id, Name, Price, Price_virtual, Currency, Duration} =
	decode_teknorota_register_package_attrs(__TopXMLNS,
						_attrs, undefined, undefined,
						undefined, undefined, undefined,
						undefined),
    {teknorota_register_package, Id, Name, Price,
     Price_virtual, Currency, Duration}.

decode_teknorota_register_package_attrs(__TopXMLNS,
					[{<<"id">>, _val} | _attrs], _Id, Name,
					Price, Price_virtual, Currency,
					Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, _val, Name, Price,
					    Price_virtual, Currency, Duration);
decode_teknorota_register_package_attrs(__TopXMLNS,
					[{<<"name">>, _val} | _attrs], Id,
					_Name, Price, Price_virtual, Currency,
					Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, Id, _val, Price,
					    Price_virtual, Currency, Duration);
decode_teknorota_register_package_attrs(__TopXMLNS,
					[{<<"price">>, _val} | _attrs], Id,
					Name, _Price, Price_virtual, Currency,
					Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, Id, Name, _val,
					    Price_virtual, Currency, Duration);
decode_teknorota_register_package_attrs(__TopXMLNS,
					[{<<"price-virtual">>, _val} | _attrs],
					Id, Name, Price, _Price_virtual,
					Currency, Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, Id, Name, Price, _val,
					    Currency, Duration);
decode_teknorota_register_package_attrs(__TopXMLNS,
					[{<<"currency">>, _val} | _attrs], Id,
					Name, Price, Price_virtual, _Currency,
					Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, Id, Name, Price,
					    Price_virtual, _val, Duration);
decode_teknorota_register_package_attrs(__TopXMLNS,
					[{<<"duration">>, _val} | _attrs], Id,
					Name, Price, Price_virtual, Currency,
					_Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, Id, Name, Price,
					    Price_virtual, Currency, _val);
decode_teknorota_register_package_attrs(__TopXMLNS,
					[_ | _attrs], Id, Name, Price,
					Price_virtual, Currency, Duration) ->
    decode_teknorota_register_package_attrs(__TopXMLNS,
					    _attrs, Id, Name, Price,
					    Price_virtual, Currency, Duration);
decode_teknorota_register_package_attrs(__TopXMLNS, [],
					Id, Name, Price, Price_virtual,
					Currency, Duration) ->
    {decode_teknorota_register_package_attr_id(__TopXMLNS,
					       Id),
     decode_teknorota_register_package_attr_name(__TopXMLNS,
						 Name),
     decode_teknorota_register_package_attr_price(__TopXMLNS,
						  Price),
     'decode_teknorota_register_package_attr_price-virtual'(__TopXMLNS,
							    Price_virtual),
     decode_teknorota_register_package_attr_currency(__TopXMLNS,
						     Currency),
     decode_teknorota_register_package_attr_duration(__TopXMLNS,
						     Duration)}.

encode_teknorota_register_package({teknorota_register_package,
				   Id, Name, Price, Price_virtual, Currency,
				   Duration},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_register_package_attr_duration(Duration,
							encode_teknorota_register_package_attr_currency(Currency,
													'encode_teknorota_register_package_attr_price-virtual'(Price_virtual,
																			       encode_teknorota_register_package_attr_price(Price,
																									    encode_teknorota_register_package_attr_name(Name,
																															encode_teknorota_register_package_attr_id(Id,
																																				  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																																							     __TopXMLNS))))))),
    {xmlel, <<"package">>, _attrs, _els}.

decode_teknorota_register_package_attr_id(__TopXMLNS,
					  undefined) ->
    <<>>;
decode_teknorota_register_package_attr_id(__TopXMLNS,
					  _val) ->
    _val.

encode_teknorota_register_package_attr_id(<<>>, _acc) ->
    _acc;
encode_teknorota_register_package_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_register_package_attr_name(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_teknorota_register_package_attr_name(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_register_package_attr_name(<<>>,
					    _acc) ->
    _acc;
encode_teknorota_register_package_attr_name(_val,
					    _acc) ->
    [{<<"name">>, _val} | _acc].

decode_teknorota_register_package_attr_price(__TopXMLNS,
					     undefined) ->
    <<>>;
decode_teknorota_register_package_attr_price(__TopXMLNS,
					     _val) ->
    _val.

encode_teknorota_register_package_attr_price(<<>>,
					     _acc) ->
    _acc;
encode_teknorota_register_package_attr_price(_val,
					     _acc) ->
    [{<<"price">>, _val} | _acc].

'decode_teknorota_register_package_attr_price-virtual'(__TopXMLNS,
						       undefined) ->
    <<>>;
'decode_teknorota_register_package_attr_price-virtual'(__TopXMLNS,
						       _val) ->
    _val.

'encode_teknorota_register_package_attr_price-virtual'(<<>>,
						       _acc) ->
    _acc;
'encode_teknorota_register_package_attr_price-virtual'(_val,
						       _acc) ->
    [{<<"price-virtual">>, _val} | _acc].

decode_teknorota_register_package_attr_currency(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_register_package_attr_currency(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_register_package_attr_currency(<<>>,
						_acc) ->
    _acc;
encode_teknorota_register_package_attr_currency(_val,
						_acc) ->
    [{<<"currency">>, _val} | _acc].

decode_teknorota_register_package_attr_duration(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_register_package_attr_duration(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_register_package_attr_duration(<<>>,
						_acc) ->
    _acc;
encode_teknorota_register_package_attr_duration(_val,
						_acc) ->
    [{<<"duration">>, _val} | _acc].

decode_teknorota_register_get_packages(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"get-packages">>, _attrs,
					_els}) ->
    {teknorota_register_get_packages}.

encode_teknorota_register_get_packages({teknorota_register_get_packages},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"get-packages">>, _attrs, _els}.

decode_teknorota_register_verify_complete(__TopXMLNS,
					  __Opts,
					  {xmlel, <<"verify-complete">>, _attrs,
					   _els}) ->
    {Id, Phone, Country, Code, Jid, Password} =
	decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
							_attrs, undefined,
							undefined, undefined,
							undefined, undefined,
							undefined),
    {teknorota_register_verify_complete, Id, Phone, Country,
     Code, Jid, Password}.

decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[{<<"id">>, _val} | _attrs],
						_Id, Phone, Country, Code, Jid,
						Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, _val, Phone,
						    Country, Code, Jid,
						    Password);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[{<<"phone">>, _val} | _attrs],
						Id, _Phone, Country, Code, Jid,
						Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, Id, _val, Country,
						    Code, Jid, Password);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[{<<"country">>, _val}
						 | _attrs],
						Id, Phone, _Country, Code, Jid,
						Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, Id, Phone, _val,
						    Code, Jid, Password);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[{<<"code">>, _val} | _attrs],
						Id, Phone, Country, _Code, Jid,
						Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, Id, Phone, Country,
						    _val, Jid, Password);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[{<<"jid">>, _val} | _attrs],
						Id, Phone, Country, Code, _Jid,
						Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, Id, Phone, Country,
						    Code, _val, Password);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[{<<"password">>, _val}
						 | _attrs],
						Id, Phone, Country, Code, Jid,
						_Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, Id, Phone, Country,
						    Code, Jid, _val);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[_ | _attrs], Id, Phone,
						Country, Code, Jid, Password) ->
    decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						    _attrs, Id, Phone, Country,
						    Code, Jid, Password);
decode_teknorota_register_verify_complete_attrs(__TopXMLNS,
						[], Id, Phone, Country, Code,
						Jid, Password) ->
    {decode_teknorota_register_verify_complete_attr_id(__TopXMLNS,
						       Id),
     decode_teknorota_register_verify_complete_attr_phone(__TopXMLNS,
							  Phone),
     decode_teknorota_register_verify_complete_attr_country(__TopXMLNS,
							    Country),
     decode_teknorota_register_verify_complete_attr_code(__TopXMLNS,
							 Code),
     decode_teknorota_register_verify_complete_attr_jid(__TopXMLNS,
							Jid),
     decode_teknorota_register_verify_complete_attr_password(__TopXMLNS,
							     Password)}.

encode_teknorota_register_verify_complete({teknorota_register_verify_complete,
					   Id, Phone, Country, Code, Jid,
					   Password},
					  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_register_verify_complete_attr_password(Password,
								encode_teknorota_register_verify_complete_attr_jid(Jid,
														   encode_teknorota_register_verify_complete_attr_code(Code,
																				       encode_teknorota_register_verify_complete_attr_country(Country,
																											      encode_teknorota_register_verify_complete_attr_phone(Phone,
																																		   encode_teknorota_register_verify_complete_attr_id(Id,
																																								     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																																												__TopXMLNS))))))),
    {xmlel, <<"verify-complete">>, _attrs, _els}.

decode_teknorota_register_verify_complete_attr_id(__TopXMLNS,
						  undefined) ->
    <<>>;
decode_teknorota_register_verify_complete_attr_id(__TopXMLNS,
						  _val) ->
    _val.

encode_teknorota_register_verify_complete_attr_id(<<>>,
						  _acc) ->
    _acc;
encode_teknorota_register_verify_complete_attr_id(_val,
						  _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_register_verify_complete_attr_phone(__TopXMLNS,
						     undefined) ->
    <<>>;
decode_teknorota_register_verify_complete_attr_phone(__TopXMLNS,
						     _val) ->
    _val.

encode_teknorota_register_verify_complete_attr_phone(<<>>,
						     _acc) ->
    _acc;
encode_teknorota_register_verify_complete_attr_phone(_val,
						     _acc) ->
    [{<<"phone">>, _val} | _acc].

decode_teknorota_register_verify_complete_attr_country(__TopXMLNS,
						       undefined) ->
    <<>>;
decode_teknorota_register_verify_complete_attr_country(__TopXMLNS,
						       _val) ->
    _val.

encode_teknorota_register_verify_complete_attr_country(<<>>,
						       _acc) ->
    _acc;
encode_teknorota_register_verify_complete_attr_country(_val,
						       _acc) ->
    [{<<"country">>, _val} | _acc].

decode_teknorota_register_verify_complete_attr_code(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_register_verify_complete_attr_code(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_register_verify_complete_attr_code(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_register_verify_complete_attr_code(_val,
						    _acc) ->
    [{<<"code">>, _val} | _acc].

decode_teknorota_register_verify_complete_attr_jid(__TopXMLNS,
						   undefined) ->
    <<>>;
decode_teknorota_register_verify_complete_attr_jid(__TopXMLNS,
						   _val) ->
    _val.

encode_teknorota_register_verify_complete_attr_jid(<<>>,
						   _acc) ->
    _acc;
encode_teknorota_register_verify_complete_attr_jid(_val,
						   _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_register_verify_complete_attr_password(__TopXMLNS,
							undefined) ->
    <<>>;
decode_teknorota_register_verify_complete_attr_password(__TopXMLNS,
							_val) ->
    _val.

encode_teknorota_register_verify_complete_attr_password(<<>>,
							_acc) ->
    _acc;
encode_teknorota_register_verify_complete_attr_password(_val,
							_acc) ->
    [{<<"password">>, _val} | _acc].

decode_teknorota_register_verify_init(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"verify-init">>, _attrs,
				       _els}) ->
    {Id, Phone, Country, Type} =
	decode_teknorota_register_verify_init_attrs(__TopXMLNS,
						    _attrs, undefined,
						    undefined, undefined,
						    undefined),
    {teknorota_register_verify_init, Id, Phone, Country,
     Type}.

decode_teknorota_register_verify_init_attrs(__TopXMLNS,
					    [{<<"id">>, _val} | _attrs], _Id,
					    Phone, Country, Type) ->
    decode_teknorota_register_verify_init_attrs(__TopXMLNS,
						_attrs, _val, Phone, Country,
						Type);
decode_teknorota_register_verify_init_attrs(__TopXMLNS,
					    [{<<"phone">>, _val} | _attrs], Id,
					    _Phone, Country, Type) ->
    decode_teknorota_register_verify_init_attrs(__TopXMLNS,
						_attrs, Id, _val, Country,
						Type);
decode_teknorota_register_verify_init_attrs(__TopXMLNS,
					    [{<<"country">>, _val} | _attrs],
					    Id, Phone, _Country, Type) ->
    decode_teknorota_register_verify_init_attrs(__TopXMLNS,
						_attrs, Id, Phone, _val, Type);
decode_teknorota_register_verify_init_attrs(__TopXMLNS,
					    [{<<"type">>, _val} | _attrs], Id,
					    Phone, Country, _Type) ->
    decode_teknorota_register_verify_init_attrs(__TopXMLNS,
						_attrs, Id, Phone, Country,
						_val);
decode_teknorota_register_verify_init_attrs(__TopXMLNS,
					    [_ | _attrs], Id, Phone, Country,
					    Type) ->
    decode_teknorota_register_verify_init_attrs(__TopXMLNS,
						_attrs, Id, Phone, Country,
						Type);
decode_teknorota_register_verify_init_attrs(__TopXMLNS,
					    [], Id, Phone, Country, Type) ->
    {decode_teknorota_register_verify_init_attr_id(__TopXMLNS,
						   Id),
     decode_teknorota_register_verify_init_attr_phone(__TopXMLNS,
						      Phone),
     decode_teknorota_register_verify_init_attr_country(__TopXMLNS,
							Country),
     decode_teknorota_register_verify_init_attr_type(__TopXMLNS,
						     Type)}.

encode_teknorota_register_verify_init({teknorota_register_verify_init,
				       Id, Phone, Country, Type},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:register">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_register_verify_init_attr_type(Type,
							encode_teknorota_register_verify_init_attr_country(Country,
													   encode_teknorota_register_verify_init_attr_phone(Phone,
																			    encode_teknorota_register_verify_init_attr_id(Id,
																									  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																												     __TopXMLNS))))),
    {xmlel, <<"verify-init">>, _attrs, _els}.

decode_teknorota_register_verify_init_attr_id(__TopXMLNS,
					      undefined) ->
    <<>>;
decode_teknorota_register_verify_init_attr_id(__TopXMLNS,
					      _val) ->
    _val.

encode_teknorota_register_verify_init_attr_id(<<>>,
					      _acc) ->
    _acc;
encode_teknorota_register_verify_init_attr_id(_val,
					      _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_register_verify_init_attr_phone(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_teknorota_register_verify_init_attr_phone(__TopXMLNS,
						 _val) ->
    _val.

encode_teknorota_register_verify_init_attr_phone(<<>>,
						 _acc) ->
    _acc;
encode_teknorota_register_verify_init_attr_phone(_val,
						 _acc) ->
    [{<<"phone">>, _val} | _acc].

decode_teknorota_register_verify_init_attr_country(__TopXMLNS,
						   undefined) ->
    <<>>;
decode_teknorota_register_verify_init_attr_country(__TopXMLNS,
						   _val) ->
    _val.

encode_teknorota_register_verify_init_attr_country(<<>>,
						   _acc) ->
    _acc;
encode_teknorota_register_verify_init_attr_country(_val,
						   _acc) ->
    [{<<"country">>, _val} | _acc].

decode_teknorota_register_verify_init_attr_type(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_register_verify_init_attr_type(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_register_verify_init_attr_type(<<>>,
						_acc) ->
    _acc;
encode_teknorota_register_verify_init_attr_type(_val,
						_acc) ->
    [{<<"type">>, _val} | _acc].
