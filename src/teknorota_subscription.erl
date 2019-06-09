%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(teknorota_subscription).

-compile(export_all).

do_decode(<<"query">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_query(<<"teknorota:xmpp:subscription">>,
					Opts, El);
do_decode(<<"check-invoice">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_check_invoice(<<"teknorota:xmpp:subscription">>,
						Opts, El);
do_decode(<<"get-invoices">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_get_invoices(<<"teknorota:xmpp:subscription">>,
					       Opts, El);
do_decode(<<"pay-invoice">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_pay_invoice(<<"teknorota:xmpp:subscription">>,
					      Opts, El);
do_decode(<<"invoices">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_invoices(<<"teknorota:xmpp:subscription">>,
					   Opts, El);
do_decode(<<"invoice">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_invoice(<<"teknorota:xmpp:subscription">>,
					  Opts, El);
do_decode(<<"create-invoice">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_create_invoice(<<"teknorota:xmpp:subscription">>,
						 Opts, El);
do_decode(<<"packages">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_packages(<<"teknorota:xmpp:subscription">>,
					   Opts, El);
do_decode(<<"package">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_package(<<"teknorota:xmpp:subscription">>,
					  Opts, El);
do_decode(<<"get-packages">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_get_packages(<<"teknorota:xmpp:subscription">>,
					       Opts, El);
do_decode(<<"subscription">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription(<<"teknorota:xmpp:subscription">>,
				  Opts, El);
do_decode(<<"get-subscription-info">>,
	  <<"teknorota:xmpp:subscription">>, El, Opts) ->
    decode_teknorota_subscription_info(<<"teknorota:xmpp:subscription">>,
				       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"teknorota:xmpp:subscription">>},
     {<<"check-invoice">>,
      <<"teknorota:xmpp:subscription">>},
     {<<"get-invoices">>, <<"teknorota:xmpp:subscription">>},
     {<<"pay-invoice">>, <<"teknorota:xmpp:subscription">>},
     {<<"invoices">>, <<"teknorota:xmpp:subscription">>},
     {<<"invoice">>, <<"teknorota:xmpp:subscription">>},
     {<<"create-invoice">>,
      <<"teknorota:xmpp:subscription">>},
     {<<"packages">>, <<"teknorota:xmpp:subscription">>},
     {<<"package">>, <<"teknorota:xmpp:subscription">>},
     {<<"get-packages">>, <<"teknorota:xmpp:subscription">>},
     {<<"subscription">>, <<"teknorota:xmpp:subscription">>},
     {<<"get-subscription-info">>,
      <<"teknorota:xmpp:subscription">>}].

do_encode({teknorota_subscription_info} =
	      Get_subscription_info,
	  TopXMLNS) ->
    encode_teknorota_subscription_info(Get_subscription_info,
				       TopXMLNS);
do_encode({teknorota_subscription, _, _} = Subscription,
	  TopXMLNS) ->
    encode_teknorota_subscription(Subscription, TopXMLNS);
do_encode({teknorota_subscription_get_packages} =
	      Get_packages,
	  TopXMLNS) ->
    encode_teknorota_subscription_get_packages(Get_packages,
					       TopXMLNS);
do_encode({teknorota_subscription_package, _, _, _, _,
	   _, _} =
	      Package,
	  TopXMLNS) ->
    encode_teknorota_subscription_package(Package,
					  TopXMLNS);
do_encode({teknorota_subscription_packages, _} =
	      Packages,
	  TopXMLNS) ->
    encode_teknorota_subscription_packages(Packages,
					   TopXMLNS);
do_encode({teknorota_subscription_create_invoice, _,
	   _} =
	      Create_invoice,
	  TopXMLNS) ->
    encode_teknorota_subscription_create_invoice(Create_invoice,
						 TopXMLNS);
do_encode({teknorota_subscription_invoice, _, _, _, _,
	   _, _, _, _, _, _, _} =
	      Invoice,
	  TopXMLNS) ->
    encode_teknorota_subscription_invoice(Invoice,
					  TopXMLNS);
do_encode({teknorota_subscription_invoices, _} =
	      Invoices,
	  TopXMLNS) ->
    encode_teknorota_subscription_invoices(Invoices,
					   TopXMLNS);
do_encode({teknorota_subscription_pay_invoice, _, _,
	   _} =
	      Pay_invoice,
	  TopXMLNS) ->
    encode_teknorota_subscription_pay_invoice(Pay_invoice,
					      TopXMLNS);
do_encode({teknorota_subscription_get_invoices} =
	      Get_invoices,
	  TopXMLNS) ->
    encode_teknorota_subscription_get_invoices(Get_invoices,
					       TopXMLNS);
do_encode({teknorota_subscription_check_invoice, _} =
	      Check_invoice,
	  TopXMLNS) ->
    encode_teknorota_subscription_check_invoice(Check_invoice,
						TopXMLNS);
do_encode({teknorota_subscription_query, _, _, _, _, _,
	   _} =
	      Query,
	  TopXMLNS) ->
    encode_teknorota_subscription_query(Query, TopXMLNS).

do_get_name({teknorota_subscription, _, _}) ->
    <<"subscription">>;
do_get_name({teknorota_subscription_check_invoice,
	     _}) ->
    <<"check-invoice">>;
do_get_name({teknorota_subscription_create_invoice, _,
	     _}) ->
    <<"create-invoice">>;
do_get_name({teknorota_subscription_get_invoices}) ->
    <<"get-invoices">>;
do_get_name({teknorota_subscription_get_packages}) ->
    <<"get-packages">>;
do_get_name({teknorota_subscription_info}) ->
    <<"get-subscription-info">>;
do_get_name({teknorota_subscription_invoice, _, _, _, _,
	     _, _, _, _, _, _, _}) ->
    <<"invoice">>;
do_get_name({teknorota_subscription_invoices, _}) ->
    <<"invoices">>;
do_get_name({teknorota_subscription_package, _, _, _, _,
	     _, _}) ->
    <<"package">>;
do_get_name({teknorota_subscription_packages, _}) ->
    <<"packages">>;
do_get_name({teknorota_subscription_pay_invoice, _, _,
	     _}) ->
    <<"pay-invoice">>;
do_get_name({teknorota_subscription_query, _, _, _, _,
	     _, _}) ->
    <<"query">>.

do_get_ns({teknorota_subscription, _, _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_check_invoice, _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_create_invoice, _,
	   _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_get_invoices}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_get_packages}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_info}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_invoice, _, _, _, _,
	   _, _, _, _, _, _, _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_invoices, _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_package, _, _, _, _,
	   _, _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_packages, _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_pay_invoice, _, _,
	   _}) ->
    <<"teknorota:xmpp:subscription">>;
do_get_ns({teknorota_subscription_query, _, _, _, _, _,
	   _}) ->
    <<"teknorota:xmpp:subscription">>.

pp(teknorota_subscription_info, 0) -> [];
pp(teknorota_subscription, 2) -> ['end', remaining];
pp(teknorota_subscription_get_packages, 0) -> [];
pp(teknorota_subscription_package, 6) ->
    [id, name, price, 'price-virtual', currency, duration];
pp(teknorota_subscription_packages, 1) -> [packages];
pp(teknorota_subscription_create_invoice, 2) ->
    ['package-id', 'payment-type'];
pp(teknorota_subscription_invoice, 11) ->
    [id, token, success, 'package-id', 'package-price',
     currency, charge, duration, 'is-paid', 'created-at',
     type];
pp(teknorota_subscription_invoices, 1) -> [invoices];
pp(teknorota_subscription_pay_invoice, 3) ->
    [id, token, email];
pp(teknorota_subscription_get_invoices, 0) -> [];
pp(teknorota_subscription_check_invoice, 1) -> [id];
pp(teknorota_subscription_query, 6) ->
    [subscription_info, get_packages, create_invoice,
     pay_invoice, check_invoice, get_invoices];
pp(_, _) -> no.

records() ->
    [{teknorota_subscription_info, 0},
     {teknorota_subscription, 2},
     {teknorota_subscription_get_packages, 0},
     {teknorota_subscription_package, 6},
     {teknorota_subscription_packages, 1},
     {teknorota_subscription_create_invoice, 2},
     {teknorota_subscription_invoice, 11},
     {teknorota_subscription_invoices, 1},
     {teknorota_subscription_pay_invoice, 3},
     {teknorota_subscription_get_invoices, 0},
     {teknorota_subscription_check_invoice, 1},
     {teknorota_subscription_query, 6}].

decode_teknorota_subscription_query(__TopXMLNS, __Opts,
				    {xmlel, <<"query">>, _attrs, _els}) ->
    {Get_invoices, Get_packages, Check_invoice, Pay_invoice,
     Create_invoice, Subscription_info} =
	decode_teknorota_subscription_query_els(__TopXMLNS,
						__Opts, _els, [], [], [], [],
						[], []),
    {teknorota_subscription_query, Subscription_info,
     Get_packages, Create_invoice, Pay_invoice,
     Check_invoice, Get_invoices}.

decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts, [], Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    {lists:reverse(Get_invoices),
     lists:reverse(Get_packages),
     lists:reverse(Check_invoice),
     lists:reverse(Pay_invoice),
     lists:reverse(Create_invoice),
     lists:reverse(Subscription_info)};
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"get-subscription-info">>,
					  _attrs, _} =
					     _el
					 | _els],
					Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  [decode_teknorota_subscription_info(<<"teknorota:xmpp:subscription">>,
										      __Opts,
										      _el)
						   | Subscription_info]);
      _ ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info)
    end;
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"get-packages">>, _attrs,
					  _} =
					     _el
					 | _els],
					Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  [decode_teknorota_subscription_get_packages(<<"teknorota:xmpp:subscription">>,
											      __Opts,
											      _el)
						   | Get_packages],
						  Check_invoice, Pay_invoice,
						  Create_invoice,
						  Subscription_info);
      _ ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info)
    end;
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"create-invoice">>, _attrs,
					  _} =
					     _el
					 | _els],
					Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice,
						  [decode_teknorota_subscription_create_invoice(<<"teknorota:xmpp:subscription">>,
												__Opts,
												_el)
						   | Create_invoice],
						  Subscription_info);
      _ ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info)
    end;
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"pay-invoice">>, _attrs, _} =
					     _el
					 | _els],
					Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  [decode_teknorota_subscription_pay_invoice(<<"teknorota:xmpp:subscription">>,
											     __Opts,
											     _el)
						   | Pay_invoice],
						  Create_invoice,
						  Subscription_info);
      _ ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info)
    end;
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"check-invoice">>, _attrs,
					  _} =
					     _el
					 | _els],
					Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages,
						  [decode_teknorota_subscription_check_invoice(<<"teknorota:xmpp:subscription">>,
											       __Opts,
											       _el)
						   | Check_invoice],
						  Pay_invoice, Create_invoice,
						  Subscription_info);
      _ ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info)
    end;
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"get-invoices">>, _attrs,
					  _} =
					     _el
					 | _els],
					Get_invoices, Get_packages,
					Check_invoice, Pay_invoice,
					Create_invoice, Subscription_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els,
						  [decode_teknorota_subscription_get_invoices(<<"teknorota:xmpp:subscription">>,
											      __Opts,
											      _el)
						   | Get_invoices],
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info);
      _ ->
	  decode_teknorota_subscription_query_els(__TopXMLNS,
						  __Opts, _els, Get_invoices,
						  Get_packages, Check_invoice,
						  Pay_invoice, Create_invoice,
						  Subscription_info)
    end;
decode_teknorota_subscription_query_els(__TopXMLNS,
					__Opts, [_ | _els], Get_invoices,
					Get_packages, Check_invoice,
					Pay_invoice, Create_invoice,
					Subscription_info) ->
    decode_teknorota_subscription_query_els(__TopXMLNS,
					    __Opts, _els, Get_invoices,
					    Get_packages, Check_invoice,
					    Pay_invoice, Create_invoice,
					    Subscription_info).

encode_teknorota_subscription_query({teknorota_subscription_query,
				     Subscription_info, Get_packages,
				     Create_invoice, Pay_invoice, Check_invoice,
				     Get_invoices},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_subscription_query_$get_invoices'(Get_invoices,
									  __NewTopXMLNS,
									  'encode_teknorota_subscription_query_$get_packages'(Get_packages,
															      __NewTopXMLNS,
															      'encode_teknorota_subscription_query_$check_invoice'(Check_invoice,
																						   __NewTopXMLNS,
																						   'encode_teknorota_subscription_query_$pay_invoice'(Pay_invoice,
																												      __NewTopXMLNS,
																												      'encode_teknorota_subscription_query_$create_invoice'(Create_invoice,
																																			    __NewTopXMLNS,
																																			    'encode_teknorota_subscription_query_$subscription_info'(Subscription_info,
																																										     __NewTopXMLNS,
																																										     []))))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_teknorota_subscription_query_$get_invoices'([],
						    __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_query_$get_invoices'([Get_invoices
						     | _els],
						    __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_query_$get_invoices'(_els,
							__TopXMLNS,
							[encode_teknorota_subscription_get_invoices(Get_invoices,
												    __TopXMLNS)
							 | _acc]).

'encode_teknorota_subscription_query_$get_packages'([],
						    __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_query_$get_packages'([Get_packages
						     | _els],
						    __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_query_$get_packages'(_els,
							__TopXMLNS,
							[encode_teknorota_subscription_get_packages(Get_packages,
												    __TopXMLNS)
							 | _acc]).

'encode_teknorota_subscription_query_$check_invoice'([],
						     __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_query_$check_invoice'([Check_invoice
						      | _els],
						     __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_query_$check_invoice'(_els,
							 __TopXMLNS,
							 [encode_teknorota_subscription_check_invoice(Check_invoice,
												      __TopXMLNS)
							  | _acc]).

'encode_teknorota_subscription_query_$pay_invoice'([],
						   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_query_$pay_invoice'([Pay_invoice
						    | _els],
						   __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_query_$pay_invoice'(_els,
						       __TopXMLNS,
						       [encode_teknorota_subscription_pay_invoice(Pay_invoice,
												  __TopXMLNS)
							| _acc]).

'encode_teknorota_subscription_query_$create_invoice'([],
						      __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_query_$create_invoice'([Create_invoice
						       | _els],
						      __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_query_$create_invoice'(_els,
							  __TopXMLNS,
							  [encode_teknorota_subscription_create_invoice(Create_invoice,
													__TopXMLNS)
							   | _acc]).

'encode_teknorota_subscription_query_$subscription_info'([],
							 __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_query_$subscription_info'([Subscription_info
							  | _els],
							 __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_query_$subscription_info'(_els,
							     __TopXMLNS,
							     [encode_teknorota_subscription_info(Subscription_info,
												 __TopXMLNS)
							      | _acc]).

decode_teknorota_subscription_check_invoice(__TopXMLNS,
					    __Opts,
					    {xmlel, <<"check-invoice">>, _attrs,
					     _els}) ->
    Id =
	decode_teknorota_subscription_check_invoice_attrs(__TopXMLNS,
							  _attrs, undefined),
    {teknorota_subscription_check_invoice, Id}.

decode_teknorota_subscription_check_invoice_attrs(__TopXMLNS,
						  [{<<"id">>, _val} | _attrs],
						  _Id) ->
    decode_teknorota_subscription_check_invoice_attrs(__TopXMLNS,
						      _attrs, _val);
decode_teknorota_subscription_check_invoice_attrs(__TopXMLNS,
						  [_ | _attrs], Id) ->
    decode_teknorota_subscription_check_invoice_attrs(__TopXMLNS,
						      _attrs, Id);
decode_teknorota_subscription_check_invoice_attrs(__TopXMLNS,
						  [], Id) ->
    decode_teknorota_subscription_check_invoice_attr_id(__TopXMLNS,
							Id).

encode_teknorota_subscription_check_invoice({teknorota_subscription_check_invoice,
					     Id},
					    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_subscription_check_invoice_attr_id(Id,
							    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										       __TopXMLNS)),
    {xmlel, <<"check-invoice">>, _attrs, _els}.

decode_teknorota_subscription_check_invoice_attr_id(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_subscription_check_invoice_attr_id(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_subscription_check_invoice_attr_id(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_subscription_check_invoice_attr_id(_val,
						    _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_subscription_get_invoices(__TopXMLNS,
					   __Opts,
					   {xmlel, <<"get-invoices">>, _attrs,
					    _els}) ->
    {teknorota_subscription_get_invoices}.

encode_teknorota_subscription_get_invoices({teknorota_subscription_get_invoices},
					   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"get-invoices">>, _attrs, _els}.

decode_teknorota_subscription_pay_invoice(__TopXMLNS,
					  __Opts,
					  {xmlel, <<"pay-invoice">>, _attrs,
					   _els}) ->
    {Id, Token, Email} =
	decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
							_attrs, undefined,
							undefined, undefined),
    {teknorota_subscription_pay_invoice, Id, Token, Email}.

decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						[{<<"id">>, _val} | _attrs],
						_Id, Token, Email) ->
    decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						    _attrs, _val, Token, Email);
decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						[{<<"token">>, _val} | _attrs],
						Id, _Token, Email) ->
    decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						    _attrs, Id, _val, Email);
decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						[{<<"email">>, _val} | _attrs],
						Id, Token, _Email) ->
    decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						    _attrs, Id, Token, _val);
decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						[_ | _attrs], Id, Token,
						Email) ->
    decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						    _attrs, Id, Token, Email);
decode_teknorota_subscription_pay_invoice_attrs(__TopXMLNS,
						[], Id, Token, Email) ->
    {decode_teknorota_subscription_pay_invoice_attr_id(__TopXMLNS,
						       Id),
     decode_teknorota_subscription_pay_invoice_attr_token(__TopXMLNS,
							  Token),
     decode_teknorota_subscription_pay_invoice_attr_email(__TopXMLNS,
							  Email)}.

encode_teknorota_subscription_pay_invoice({teknorota_subscription_pay_invoice,
					   Id, Token, Email},
					  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_subscription_pay_invoice_attr_email(Email,
							     encode_teknorota_subscription_pay_invoice_attr_token(Token,
														  encode_teknorota_subscription_pay_invoice_attr_id(Id,
																				    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																							       __TopXMLNS)))),
    {xmlel, <<"pay-invoice">>, _attrs, _els}.

decode_teknorota_subscription_pay_invoice_attr_id(__TopXMLNS,
						  undefined) ->
    <<>>;
decode_teknorota_subscription_pay_invoice_attr_id(__TopXMLNS,
						  _val) ->
    _val.

encode_teknorota_subscription_pay_invoice_attr_id(<<>>,
						  _acc) ->
    _acc;
encode_teknorota_subscription_pay_invoice_attr_id(_val,
						  _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_subscription_pay_invoice_attr_token(__TopXMLNS,
						     undefined) ->
    <<>>;
decode_teknorota_subscription_pay_invoice_attr_token(__TopXMLNS,
						     _val) ->
    _val.

encode_teknorota_subscription_pay_invoice_attr_token(<<>>,
						     _acc) ->
    _acc;
encode_teknorota_subscription_pay_invoice_attr_token(_val,
						     _acc) ->
    [{<<"token">>, _val} | _acc].

decode_teknorota_subscription_pay_invoice_attr_email(__TopXMLNS,
						     undefined) ->
    <<>>;
decode_teknorota_subscription_pay_invoice_attr_email(__TopXMLNS,
						     _val) ->
    _val.

encode_teknorota_subscription_pay_invoice_attr_email(<<>>,
						     _acc) ->
    _acc;
encode_teknorota_subscription_pay_invoice_attr_email(_val,
						     _acc) ->
    [{<<"email">>, _val} | _acc].

decode_teknorota_subscription_invoices(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"invoices">>, _attrs, _els}) ->
    Invoices =
	decode_teknorota_subscription_invoices_els(__TopXMLNS,
						   __Opts, _els, []),
    {teknorota_subscription_invoices, Invoices}.

decode_teknorota_subscription_invoices_els(__TopXMLNS,
					   __Opts, [], Invoices) ->
    lists:reverse(Invoices);
decode_teknorota_subscription_invoices_els(__TopXMLNS,
					   __Opts,
					   [{xmlel, <<"invoice">>, _attrs, _} =
						_el
					    | _els],
					   Invoices) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_invoices_els(__TopXMLNS,
						     __Opts, _els,
						     [decode_teknorota_subscription_invoice(<<"teknorota:xmpp:subscription">>,
											    __Opts,
											    _el)
						      | Invoices]);
      _ ->
	  decode_teknorota_subscription_invoices_els(__TopXMLNS,
						     __Opts, _els, Invoices)
    end;
decode_teknorota_subscription_invoices_els(__TopXMLNS,
					   __Opts, [_ | _els], Invoices) ->
    decode_teknorota_subscription_invoices_els(__TopXMLNS,
					       __Opts, _els, Invoices).

encode_teknorota_subscription_invoices({teknorota_subscription_invoices,
					Invoices},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_subscription_invoices_$invoices'(Invoices,
									 __NewTopXMLNS,
									 [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"invoices">>, _attrs, _els}.

'encode_teknorota_subscription_invoices_$invoices'([],
						   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_invoices_$invoices'([Invoices
						    | _els],
						   __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_invoices_$invoices'(_els,
						       __TopXMLNS,
						       [encode_teknorota_subscription_invoice(Invoices,
											      __TopXMLNS)
							| _acc]).

decode_teknorota_subscription_invoice(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"invoice">>, _attrs, _els}) ->
    {Id, Token, Success, Package_id, Package_price,
     Currency, Charge, Duration, Is_paid, Created_at, Type} =
	decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						    _attrs, undefined,
						    undefined, undefined,
						    undefined, undefined,
						    undefined, undefined,
						    undefined, undefined,
						    undefined, undefined),
    {teknorota_subscription_invoice, Id, Token, Success,
     Package_id, Package_price, Currency, Charge, Duration,
     Is_paid, Created_at, Type}.

decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"id">>, _val} | _attrs], _Id,
					    Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, _val, Token, Success,
						Package_id, Package_price,
						Currency, Charge, Duration,
						Is_paid, Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"token">>, _val} | _attrs], Id,
					    _Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, _val, Success,
						Package_id, Package_price,
						Currency, Charge, Duration,
						Is_paid, Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"success">>, _val} | _attrs],
					    Id, Token, _Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, _val,
						Package_id, Package_price,
						Currency, Charge, Duration,
						Is_paid, Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"package-id">>, _val} | _attrs],
					    Id, Token, Success, _Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						_val, Package_price, Currency,
						Charge, Duration, Is_paid,
						Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"package-price">>, _val}
					     | _attrs],
					    Id, Token, Success, Package_id,
					    _Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, _val, Currency,
						Charge, Duration, Is_paid,
						Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"currency">>, _val} | _attrs],
					    Id, Token, Success, Package_id,
					    Package_price, _Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price, _val,
						Charge, Duration, Is_paid,
						Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"charge">>, _val} | _attrs], Id,
					    Token, Success, Package_id,
					    Package_price, Currency, _Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price,
						Currency, _val, Duration,
						Is_paid, Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"duration">>, _val} | _attrs],
					    Id, Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    _Duration, Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price,
						Currency, Charge, _val, Is_paid,
						Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"is-paid">>, _val} | _attrs],
					    Id, Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, _Is_paid, Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price,
						Currency, Charge, Duration,
						_val, Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"created-at">>, _val} | _attrs],
					    Id, Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, _Created_at,
					    Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price,
						Currency, Charge, Duration,
						Is_paid, _val, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [{<<"type">>, _val} | _attrs], Id,
					    Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    _Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price,
						Currency, Charge, Duration,
						Is_paid, Created_at, _val);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [_ | _attrs], Id, Token, Success,
					    Package_id, Package_price, Currency,
					    Charge, Duration, Is_paid,
					    Created_at, Type) ->
    decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
						_attrs, Id, Token, Success,
						Package_id, Package_price,
						Currency, Charge, Duration,
						Is_paid, Created_at, Type);
decode_teknorota_subscription_invoice_attrs(__TopXMLNS,
					    [], Id, Token, Success, Package_id,
					    Package_price, Currency, Charge,
					    Duration, Is_paid, Created_at,
					    Type) ->
    {decode_teknorota_subscription_invoice_attr_id(__TopXMLNS,
						   Id),
     decode_teknorota_subscription_invoice_attr_token(__TopXMLNS,
						      Token),
     decode_teknorota_subscription_invoice_attr_success(__TopXMLNS,
							Success),
     'decode_teknorota_subscription_invoice_attr_package-id'(__TopXMLNS,
							     Package_id),
     'decode_teknorota_subscription_invoice_attr_package-price'(__TopXMLNS,
								Package_price),
     decode_teknorota_subscription_invoice_attr_currency(__TopXMLNS,
							 Currency),
     decode_teknorota_subscription_invoice_attr_charge(__TopXMLNS,
						       Charge),
     decode_teknorota_subscription_invoice_attr_duration(__TopXMLNS,
							 Duration),
     'decode_teknorota_subscription_invoice_attr_is-paid'(__TopXMLNS,
							  Is_paid),
     'decode_teknorota_subscription_invoice_attr_created-at'(__TopXMLNS,
							     Created_at),
     decode_teknorota_subscription_invoice_attr_type(__TopXMLNS,
						     Type)}.

encode_teknorota_subscription_invoice({teknorota_subscription_invoice,
				       Id, Token, Success, Package_id,
				       Package_price, Currency, Charge,
				       Duration, Is_paid, Created_at, Type},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_subscription_invoice_attr_type(Type,
							'encode_teknorota_subscription_invoice_attr_created-at'(Created_at,
														'encode_teknorota_subscription_invoice_attr_is-paid'(Is_paid,
																				     encode_teknorota_subscription_invoice_attr_duration(Duration,
																											 encode_teknorota_subscription_invoice_attr_charge(Charge,
																																	   encode_teknorota_subscription_invoice_attr_currency(Currency,
																																							       'encode_teknorota_subscription_invoice_attr_package-price'(Package_price,
																																															  'encode_teknorota_subscription_invoice_attr_package-id'(Package_id,
																																																						  encode_teknorota_subscription_invoice_attr_success(Success,
																																																												     encode_teknorota_subscription_invoice_attr_token(Token,
																																																																		      encode_teknorota_subscription_invoice_attr_id(Id,
																																																																								    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																																																																											       __TopXMLNS)))))))))))),
    {xmlel, <<"invoice">>, _attrs, _els}.

decode_teknorota_subscription_invoice_attr_id(__TopXMLNS,
					      undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_id(__TopXMLNS,
					      _val) ->
    _val.

encode_teknorota_subscription_invoice_attr_id(<<>>,
					      _acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_id(_val,
					      _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_subscription_invoice_attr_token(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_token(__TopXMLNS,
						 _val) ->
    _val.

encode_teknorota_subscription_invoice_attr_token(<<>>,
						 _acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_token(_val,
						 _acc) ->
    [{<<"token">>, _val} | _acc].

decode_teknorota_subscription_invoice_attr_success(__TopXMLNS,
						   undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_success(__TopXMLNS,
						   _val) ->
    _val.

encode_teknorota_subscription_invoice_attr_success(<<>>,
						   _acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_success(_val,
						   _acc) ->
    [{<<"success">>, _val} | _acc].

'decode_teknorota_subscription_invoice_attr_package-id'(__TopXMLNS,
							undefined) ->
    <<>>;
'decode_teknorota_subscription_invoice_attr_package-id'(__TopXMLNS,
							_val) ->
    _val.

'encode_teknorota_subscription_invoice_attr_package-id'(<<>>,
							_acc) ->
    _acc;
'encode_teknorota_subscription_invoice_attr_package-id'(_val,
							_acc) ->
    [{<<"package-id">>, _val} | _acc].

'decode_teknorota_subscription_invoice_attr_package-price'(__TopXMLNS,
							   undefined) ->
    <<>>;
'decode_teknorota_subscription_invoice_attr_package-price'(__TopXMLNS,
							   _val) ->
    _val.

'encode_teknorota_subscription_invoice_attr_package-price'(<<>>,
							   _acc) ->
    _acc;
'encode_teknorota_subscription_invoice_attr_package-price'(_val,
							   _acc) ->
    [{<<"package-price">>, _val} | _acc].

decode_teknorota_subscription_invoice_attr_currency(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_currency(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_subscription_invoice_attr_currency(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_currency(_val,
						    _acc) ->
    [{<<"currency">>, _val} | _acc].

decode_teknorota_subscription_invoice_attr_charge(__TopXMLNS,
						  undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_charge(__TopXMLNS,
						  _val) ->
    _val.

encode_teknorota_subscription_invoice_attr_charge(<<>>,
						  _acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_charge(_val,
						  _acc) ->
    [{<<"charge">>, _val} | _acc].

decode_teknorota_subscription_invoice_attr_duration(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_duration(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_subscription_invoice_attr_duration(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_duration(_val,
						    _acc) ->
    [{<<"duration">>, _val} | _acc].

'decode_teknorota_subscription_invoice_attr_is-paid'(__TopXMLNS,
						     undefined) ->
    <<>>;
'decode_teknorota_subscription_invoice_attr_is-paid'(__TopXMLNS,
						     _val) ->
    _val.

'encode_teknorota_subscription_invoice_attr_is-paid'(<<>>,
						     _acc) ->
    _acc;
'encode_teknorota_subscription_invoice_attr_is-paid'(_val,
						     _acc) ->
    [{<<"is-paid">>, _val} | _acc].

'decode_teknorota_subscription_invoice_attr_created-at'(__TopXMLNS,
							undefined) ->
    <<>>;
'decode_teknorota_subscription_invoice_attr_created-at'(__TopXMLNS,
							_val) ->
    _val.

'encode_teknorota_subscription_invoice_attr_created-at'(<<>>,
							_acc) ->
    _acc;
'encode_teknorota_subscription_invoice_attr_created-at'(_val,
							_acc) ->
    [{<<"created-at">>, _val} | _acc].

decode_teknorota_subscription_invoice_attr_type(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_subscription_invoice_attr_type(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_subscription_invoice_attr_type(<<>>,
						_acc) ->
    _acc;
encode_teknorota_subscription_invoice_attr_type(_val,
						_acc) ->
    [{<<"type">>, _val} | _acc].

decode_teknorota_subscription_create_invoice(__TopXMLNS,
					     __Opts,
					     {xmlel, <<"create-invoice">>,
					      _attrs, _els}) ->
    {Package_id, Payment_type} =
	decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
							   _attrs, undefined,
							   undefined),
    {teknorota_subscription_create_invoice, Package_id,
     Payment_type}.

decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						   [{<<"package-id">>, _val}
						    | _attrs],
						   _Package_id, Payment_type) ->
    decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						       _attrs, _val,
						       Payment_type);
decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						   [{<<"payment-type">>, _val}
						    | _attrs],
						   Package_id, _Payment_type) ->
    decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						       _attrs, Package_id,
						       _val);
decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						   [_ | _attrs], Package_id,
						   Payment_type) ->
    decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						       _attrs, Package_id,
						       Payment_type);
decode_teknorota_subscription_create_invoice_attrs(__TopXMLNS,
						   [], Package_id,
						   Payment_type) ->
    {'decode_teknorota_subscription_create_invoice_attr_package-id'(__TopXMLNS,
								    Package_id),
     'decode_teknorota_subscription_create_invoice_attr_payment-type'(__TopXMLNS,
								      Payment_type)}.

encode_teknorota_subscription_create_invoice({teknorota_subscription_create_invoice,
					      Package_id, Payment_type},
					     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	'encode_teknorota_subscription_create_invoice_attr_payment-type'(Payment_type,
									 'encode_teknorota_subscription_create_invoice_attr_package-id'(Package_id,
																	xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																				   __TopXMLNS))),
    {xmlel, <<"create-invoice">>, _attrs, _els}.

'decode_teknorota_subscription_create_invoice_attr_package-id'(__TopXMLNS,
							       undefined) ->
    <<>>;
'decode_teknorota_subscription_create_invoice_attr_package-id'(__TopXMLNS,
							       _val) ->
    _val.

'encode_teknorota_subscription_create_invoice_attr_package-id'(<<>>,
							       _acc) ->
    _acc;
'encode_teknorota_subscription_create_invoice_attr_package-id'(_val,
							       _acc) ->
    [{<<"package-id">>, _val} | _acc].

'decode_teknorota_subscription_create_invoice_attr_payment-type'(__TopXMLNS,
								 undefined) ->
    <<>>;
'decode_teknorota_subscription_create_invoice_attr_payment-type'(__TopXMLNS,
								 _val) ->
    _val.

'encode_teknorota_subscription_create_invoice_attr_payment-type'(<<>>,
								 _acc) ->
    _acc;
'encode_teknorota_subscription_create_invoice_attr_payment-type'(_val,
								 _acc) ->
    [{<<"payment-type">>, _val} | _acc].

decode_teknorota_subscription_packages(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"packages">>, _attrs, _els}) ->
    Packages =
	decode_teknorota_subscription_packages_els(__TopXMLNS,
						   __Opts, _els, []),
    {teknorota_subscription_packages, Packages}.

decode_teknorota_subscription_packages_els(__TopXMLNS,
					   __Opts, [], Packages) ->
    lists:reverse(Packages);
decode_teknorota_subscription_packages_els(__TopXMLNS,
					   __Opts,
					   [{xmlel, <<"package">>, _attrs, _} =
						_el
					    | _els],
					   Packages) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:subscription">> ->
	  decode_teknorota_subscription_packages_els(__TopXMLNS,
						     __Opts, _els,
						     [decode_teknorota_subscription_package(<<"teknorota:xmpp:subscription">>,
											    __Opts,
											    _el)
						      | Packages]);
      _ ->
	  decode_teknorota_subscription_packages_els(__TopXMLNS,
						     __Opts, _els, Packages)
    end;
decode_teknorota_subscription_packages_els(__TopXMLNS,
					   __Opts, [_ | _els], Packages) ->
    decode_teknorota_subscription_packages_els(__TopXMLNS,
					       __Opts, _els, Packages).

encode_teknorota_subscription_packages({teknorota_subscription_packages,
					Packages},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_subscription_packages_$packages'(Packages,
									 __NewTopXMLNS,
									 [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"packages">>, _attrs, _els}.

'encode_teknorota_subscription_packages_$packages'([],
						   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_subscription_packages_$packages'([Packages
						    | _els],
						   __TopXMLNS, _acc) ->
    'encode_teknorota_subscription_packages_$packages'(_els,
						       __TopXMLNS,
						       [encode_teknorota_subscription_package(Packages,
											      __TopXMLNS)
							| _acc]).

decode_teknorota_subscription_package(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"package">>, _attrs, _els}) ->
    {Id, Name, Price, Price_virtual, Currency, Duration} =
	decode_teknorota_subscription_package_attrs(__TopXMLNS,
						    _attrs, undefined,
						    undefined, undefined,
						    undefined, undefined,
						    undefined),
    {teknorota_subscription_package, Id, Name, Price,
     Price_virtual, Currency, Duration}.

decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [{<<"id">>, _val} | _attrs], _Id,
					    Name, Price, Price_virtual,
					    Currency, Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, _val, Name, Price,
						Price_virtual, Currency,
						Duration);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [{<<"name">>, _val} | _attrs], Id,
					    _Name, Price, Price_virtual,
					    Currency, Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, Id, _val, Price,
						Price_virtual, Currency,
						Duration);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [{<<"price">>, _val} | _attrs], Id,
					    Name, _Price, Price_virtual,
					    Currency, Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, Id, Name, _val,
						Price_virtual, Currency,
						Duration);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [{<<"price-virtual">>, _val}
					     | _attrs],
					    Id, Name, Price, _Price_virtual,
					    Currency, Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, Id, Name, Price, _val,
						Currency, Duration);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [{<<"currency">>, _val} | _attrs],
					    Id, Name, Price, Price_virtual,
					    _Currency, Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, Id, Name, Price,
						Price_virtual, _val, Duration);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [{<<"duration">>, _val} | _attrs],
					    Id, Name, Price, Price_virtual,
					    Currency, _Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, Id, Name, Price,
						Price_virtual, Currency, _val);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [_ | _attrs], Id, Name, Price,
					    Price_virtual, Currency,
					    Duration) ->
    decode_teknorota_subscription_package_attrs(__TopXMLNS,
						_attrs, Id, Name, Price,
						Price_virtual, Currency,
						Duration);
decode_teknorota_subscription_package_attrs(__TopXMLNS,
					    [], Id, Name, Price, Price_virtual,
					    Currency, Duration) ->
    {decode_teknorota_subscription_package_attr_id(__TopXMLNS,
						   Id),
     decode_teknorota_subscription_package_attr_name(__TopXMLNS,
						     Name),
     decode_teknorota_subscription_package_attr_price(__TopXMLNS,
						      Price),
     'decode_teknorota_subscription_package_attr_price-virtual'(__TopXMLNS,
								Price_virtual),
     decode_teknorota_subscription_package_attr_currency(__TopXMLNS,
							 Currency),
     decode_teknorota_subscription_package_attr_duration(__TopXMLNS,
							 Duration)}.

encode_teknorota_subscription_package({teknorota_subscription_package,
				       Id, Name, Price, Price_virtual, Currency,
				       Duration},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_subscription_package_attr_duration(Duration,
							    encode_teknorota_subscription_package_attr_currency(Currency,
														'encode_teknorota_subscription_package_attr_price-virtual'(Price_virtual,
																					   encode_teknorota_subscription_package_attr_price(Price,
																											    encode_teknorota_subscription_package_attr_name(Name,
																																	    encode_teknorota_subscription_package_attr_id(Id,
																																							  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																																										     __TopXMLNS))))))),
    {xmlel, <<"package">>, _attrs, _els}.

decode_teknorota_subscription_package_attr_id(__TopXMLNS,
					      undefined) ->
    <<>>;
decode_teknorota_subscription_package_attr_id(__TopXMLNS,
					      _val) ->
    _val.

encode_teknorota_subscription_package_attr_id(<<>>,
					      _acc) ->
    _acc;
encode_teknorota_subscription_package_attr_id(_val,
					      _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_subscription_package_attr_name(__TopXMLNS,
						undefined) ->
    <<>>;
decode_teknorota_subscription_package_attr_name(__TopXMLNS,
						_val) ->
    _val.

encode_teknorota_subscription_package_attr_name(<<>>,
						_acc) ->
    _acc;
encode_teknorota_subscription_package_attr_name(_val,
						_acc) ->
    [{<<"name">>, _val} | _acc].

decode_teknorota_subscription_package_attr_price(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_teknorota_subscription_package_attr_price(__TopXMLNS,
						 _val) ->
    _val.

encode_teknorota_subscription_package_attr_price(<<>>,
						 _acc) ->
    _acc;
encode_teknorota_subscription_package_attr_price(_val,
						 _acc) ->
    [{<<"price">>, _val} | _acc].

'decode_teknorota_subscription_package_attr_price-virtual'(__TopXMLNS,
							   undefined) ->
    <<>>;
'decode_teknorota_subscription_package_attr_price-virtual'(__TopXMLNS,
							   _val) ->
    _val.

'encode_teknorota_subscription_package_attr_price-virtual'(<<>>,
							   _acc) ->
    _acc;
'encode_teknorota_subscription_package_attr_price-virtual'(_val,
							   _acc) ->
    [{<<"price-virtual">>, _val} | _acc].

decode_teknorota_subscription_package_attr_currency(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_subscription_package_attr_currency(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_subscription_package_attr_currency(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_subscription_package_attr_currency(_val,
						    _acc) ->
    [{<<"currency">>, _val} | _acc].

decode_teknorota_subscription_package_attr_duration(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_teknorota_subscription_package_attr_duration(__TopXMLNS,
						    _val) ->
    _val.

encode_teknorota_subscription_package_attr_duration(<<>>,
						    _acc) ->
    _acc;
encode_teknorota_subscription_package_attr_duration(_val,
						    _acc) ->
    [{<<"duration">>, _val} | _acc].

decode_teknorota_subscription_get_packages(__TopXMLNS,
					   __Opts,
					   {xmlel, <<"get-packages">>, _attrs,
					    _els}) ->
    {teknorota_subscription_get_packages}.

encode_teknorota_subscription_get_packages({teknorota_subscription_get_packages},
					   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"get-packages">>, _attrs, _els}.

decode_teknorota_subscription(__TopXMLNS, __Opts,
			      {xmlel, <<"subscription">>, _attrs, _els}) ->
    {End, Remaining} =
	decode_teknorota_subscription_attrs(__TopXMLNS, _attrs,
					    undefined, undefined),
    {teknorota_subscription, End, Remaining}.

decode_teknorota_subscription_attrs(__TopXMLNS,
				    [{<<"end">>, _val} | _attrs], _End,
				    Remaining) ->
    decode_teknorota_subscription_attrs(__TopXMLNS, _attrs,
					_val, Remaining);
decode_teknorota_subscription_attrs(__TopXMLNS,
				    [{<<"remaining">>, _val} | _attrs], End,
				    _Remaining) ->
    decode_teknorota_subscription_attrs(__TopXMLNS, _attrs,
					End, _val);
decode_teknorota_subscription_attrs(__TopXMLNS,
				    [_ | _attrs], End, Remaining) ->
    decode_teknorota_subscription_attrs(__TopXMLNS, _attrs,
					End, Remaining);
decode_teknorota_subscription_attrs(__TopXMLNS, [], End,
				    Remaining) ->
    {decode_teknorota_subscription_attr_end(__TopXMLNS,
					    End),
     decode_teknorota_subscription_attr_remaining(__TopXMLNS,
						  Remaining)}.

encode_teknorota_subscription({teknorota_subscription,
			       End, Remaining},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_subscription_attr_remaining(Remaining,
						     encode_teknorota_subscription_attr_end(End,
											    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
														       __TopXMLNS))),
    {xmlel, <<"subscription">>, _attrs, _els}.

decode_teknorota_subscription_attr_end(__TopXMLNS,
				       undefined) ->
    <<>>;
decode_teknorota_subscription_attr_end(__TopXMLNS,
				       _val) ->
    _val.

encode_teknorota_subscription_attr_end(<<>>, _acc) ->
    _acc;
encode_teknorota_subscription_attr_end(_val, _acc) ->
    [{<<"end">>, _val} | _acc].

decode_teknorota_subscription_attr_remaining(__TopXMLNS,
					     undefined) ->
    <<>>;
decode_teknorota_subscription_attr_remaining(__TopXMLNS,
					     _val) ->
    _val.

encode_teknorota_subscription_attr_remaining(<<>>,
					     _acc) ->
    _acc;
encode_teknorota_subscription_attr_remaining(_val,
					     _acc) ->
    [{<<"remaining">>, _val} | _acc].

decode_teknorota_subscription_info(__TopXMLNS, __Opts,
				   {xmlel, <<"get-subscription-info">>, _attrs,
				    _els}) ->
    {teknorota_subscription_info}.

encode_teknorota_subscription_info({teknorota_subscription_info},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:subscription">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"get-subscription-info">>, _attrs, _els}.
