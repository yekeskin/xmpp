%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(teknorota_fileshare).

-compile(export_all).

do_decode(<<"query">>, <<"teknorota:xmpp:filesharing">>,
	  El, Opts) ->
    decode_teknorota_fileshare_query(<<"teknorota:xmpp:filesharing">>,
				     Opts, El);
do_decode(<<"upconfirm">>,
	  <<"teknorota:xmpp:filesharing">>, El, Opts) ->
    decode_teknorota_fileshare_upconfirm(<<"teknorota:xmpp:filesharing">>,
					 Opts, El);
do_decode(<<"download">>,
	  <<"teknorota:xmpp:filesharing">>, El, Opts) ->
    decode_teknorota_fileshare_download(<<"teknorota:xmpp:filesharing">>,
					Opts, El);
do_decode(<<"upload">>,
	  <<"teknorota:xmpp:filesharing">>, El, Opts) ->
    decode_teknorota_fileshare_upload(<<"teknorota:xmpp:filesharing">>,
				      Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"teknorota:xmpp:filesharing">>},
     {<<"upconfirm">>, <<"teknorota:xmpp:filesharing">>},
     {<<"download">>, <<"teknorota:xmpp:filesharing">>},
     {<<"upload">>, <<"teknorota:xmpp:filesharing">>}].

do_encode({teknorota_fileshare_upload, _, _, _, _} =
	      Upload,
	  TopXMLNS) ->
    encode_teknorota_fileshare_upload(Upload, TopXMLNS);
do_encode({teknorota_fileshare_download, _, _} =
	      Download,
	  TopXMLNS) ->
    encode_teknorota_fileshare_download(Download, TopXMLNS);
do_encode({teknorota_fileshare_upconfirm, _, _} =
	      Upconfirm,
	  TopXMLNS) ->
    encode_teknorota_fileshare_upconfirm(Upconfirm,
					 TopXMLNS);
do_encode({teknorota_fileshare_query, _, _, _} = Query,
	  TopXMLNS) ->
    encode_teknorota_fileshare_query(Query, TopXMLNS).

do_get_name({teknorota_fileshare_download, _, _}) ->
    <<"download">>;
do_get_name({teknorota_fileshare_query, _, _, _}) ->
    <<"query">>;
do_get_name({teknorota_fileshare_upconfirm, _, _}) ->
    <<"upconfirm">>;
do_get_name({teknorota_fileshare_upload, _, _, _, _}) ->
    <<"upload">>.

do_get_ns({teknorota_fileshare_download, _, _}) ->
    <<"teknorota:xmpp:filesharing">>;
do_get_ns({teknorota_fileshare_query, _, _, _}) ->
    <<"teknorota:xmpp:filesharing">>;
do_get_ns({teknorota_fileshare_upconfirm, _, _}) ->
    <<"teknorota:xmpp:filesharing">>;
do_get_ns({teknorota_fileshare_upload, _, _, _, _}) ->
    <<"teknorota:xmpp:filesharing">>.

pp(teknorota_fileshare_upload, 4) ->
    [id, type, size, data];
pp(teknorota_fileshare_download, 2) -> [id, data];
pp(teknorota_fileshare_upconfirm, 2) -> [id, data];
pp(teknorota_fileshare_query, 3) ->
    [upload, download, upconfirm];
pp(_, _) -> no.

records() ->
    [{teknorota_fileshare_upload, 4},
     {teknorota_fileshare_download, 2},
     {teknorota_fileshare_upconfirm, 2},
     {teknorota_fileshare_query, 3}].

decode_teknorota_fileshare_query(__TopXMLNS, __Opts,
				 {xmlel, <<"query">>, _attrs, _els}) ->
    {Download, Upload, Upconfirm} =
	decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					     _els, [], [], []),
    {teknorota_fileshare_query, Upload, Download,
     Upconfirm}.

decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
				     [], Download, Upload, Upconfirm) ->
    {lists:reverse(Download), lists:reverse(Upload),
     lists:reverse(Upconfirm)};
decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"upload">>, _attrs, _} = _el
				      | _els],
				     Download, Upload, Upconfirm) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:filesharing">> ->
	  decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					       _els, Download,
					       [decode_teknorota_fileshare_upload(<<"teknorota:xmpp:filesharing">>,
										  __Opts,
										  _el)
						| Upload],
					       Upconfirm);
      _ ->
	  decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					       _els, Download, Upload,
					       Upconfirm)
    end;
decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"download">>, _attrs, _} = _el
				      | _els],
				     Download, Upload, Upconfirm) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:filesharing">> ->
	  decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					       _els,
					       [decode_teknorota_fileshare_download(<<"teknorota:xmpp:filesharing">>,
										    __Opts,
										    _el)
						| Download],
					       Upload, Upconfirm);
      _ ->
	  decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					       _els, Download, Upload,
					       Upconfirm)
    end;
decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"upconfirm">>, _attrs, _} = _el
				      | _els],
				     Download, Upload, Upconfirm) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"teknorota:xmpp:filesharing">> ->
	  decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					       _els, Download, Upload,
					       [decode_teknorota_fileshare_upconfirm(<<"teknorota:xmpp:filesharing">>,
										     __Opts,
										     _el)
						| Upconfirm]);
      _ ->
	  decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					       _els, Download, Upload,
					       Upconfirm)
    end;
decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
				     [_ | _els], Download, Upload, Upconfirm) ->
    decode_teknorota_fileshare_query_els(__TopXMLNS, __Opts,
					 _els, Download, Upload, Upconfirm).

encode_teknorota_fileshare_query({teknorota_fileshare_query,
				  Upload, Download, Upconfirm},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:filesharing">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_teknorota_fileshare_query_$download'(Download,
								   __NewTopXMLNS,
								   'encode_teknorota_fileshare_query_$upload'(Upload,
													      __NewTopXMLNS,
													      'encode_teknorota_fileshare_query_$upconfirm'(Upconfirm,
																			    __NewTopXMLNS,
																			    [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_teknorota_fileshare_query_$download'([],
					     __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_fileshare_query_$download'([Download
					      | _els],
					     __TopXMLNS, _acc) ->
    'encode_teknorota_fileshare_query_$download'(_els,
						 __TopXMLNS,
						 [encode_teknorota_fileshare_download(Download,
										      __TopXMLNS)
						  | _acc]).

'encode_teknorota_fileshare_query_$upload'([],
					   __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_fileshare_query_$upload'([Upload
					    | _els],
					   __TopXMLNS, _acc) ->
    'encode_teknorota_fileshare_query_$upload'(_els,
					       __TopXMLNS,
					       [encode_teknorota_fileshare_upload(Upload,
										  __TopXMLNS)
						| _acc]).

'encode_teknorota_fileshare_query_$upconfirm'([],
					      __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_fileshare_query_$upconfirm'([Upconfirm
					       | _els],
					      __TopXMLNS, _acc) ->
    'encode_teknorota_fileshare_query_$upconfirm'(_els,
						  __TopXMLNS,
						  [encode_teknorota_fileshare_upconfirm(Upconfirm,
											__TopXMLNS)
						   | _acc]).

decode_teknorota_fileshare_upconfirm(__TopXMLNS, __Opts,
				     {xmlel, <<"upconfirm">>, _attrs, _els}) ->
    {Id, Data} =
	decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
						   _attrs, undefined,
						   undefined),
    {teknorota_fileshare_upconfirm, Id, Data}.

decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					   [{<<"id">>, _val} | _attrs], _Id,
					   Data) ->
    decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					       _attrs, _val, Data);
decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					   [{<<"data">>, _val} | _attrs], Id,
					   _Data) ->
    decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					       _attrs, Id, _val);
decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					   [_ | _attrs], Id, Data) ->
    decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					       _attrs, Id, Data);
decode_teknorota_fileshare_upconfirm_attrs(__TopXMLNS,
					   [], Id, Data) ->
    {decode_teknorota_fileshare_upconfirm_attr_id(__TopXMLNS,
						  Id),
     decode_teknorota_fileshare_upconfirm_attr_data(__TopXMLNS,
						    Data)}.

encode_teknorota_fileshare_upconfirm({teknorota_fileshare_upconfirm,
				      Id, Data},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:filesharing">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_fileshare_upconfirm_attr_data(Data,
						       encode_teknorota_fileshare_upconfirm_attr_id(Id,
												    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															       __TopXMLNS))),
    {xmlel, <<"upconfirm">>, _attrs, _els}.

decode_teknorota_fileshare_upconfirm_attr_id(__TopXMLNS,
					     undefined) ->
    <<>>;
decode_teknorota_fileshare_upconfirm_attr_id(__TopXMLNS,
					     _val) ->
    _val.

encode_teknorota_fileshare_upconfirm_attr_id(<<>>,
					     _acc) ->
    _acc;
encode_teknorota_fileshare_upconfirm_attr_id(_val,
					     _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_fileshare_upconfirm_attr_data(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_teknorota_fileshare_upconfirm_attr_data(__TopXMLNS,
					       _val) ->
    _val.

encode_teknorota_fileshare_upconfirm_attr_data(<<>>,
					       _acc) ->
    _acc;
encode_teknorota_fileshare_upconfirm_attr_data(_val,
					       _acc) ->
    [{<<"data">>, _val} | _acc].

decode_teknorota_fileshare_download(__TopXMLNS, __Opts,
				    {xmlel, <<"download">>, _attrs, _els}) ->
    {Id, Data} =
	decode_teknorota_fileshare_download_attrs(__TopXMLNS,
						  _attrs, undefined, undefined),
    {teknorota_fileshare_download, Id, Data}.

decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					  [{<<"id">>, _val} | _attrs], _Id,
					  Data) ->
    decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					      _attrs, _val, Data);
decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					  [{<<"data">>, _val} | _attrs], Id,
					  _Data) ->
    decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					      _attrs, Id, _val);
decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					  [_ | _attrs], Id, Data) ->
    decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					      _attrs, Id, Data);
decode_teknorota_fileshare_download_attrs(__TopXMLNS,
					  [], Id, Data) ->
    {decode_teknorota_fileshare_download_attr_id(__TopXMLNS,
						 Id),
     decode_teknorota_fileshare_download_attr_data(__TopXMLNS,
						   Data)}.

encode_teknorota_fileshare_download({teknorota_fileshare_download,
				     Id, Data},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:filesharing">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_fileshare_download_attr_data(Data,
						      encode_teknorota_fileshare_download_attr_id(Id,
												  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															     __TopXMLNS))),
    {xmlel, <<"download">>, _attrs, _els}.

decode_teknorota_fileshare_download_attr_id(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_teknorota_fileshare_download_attr_id(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_fileshare_download_attr_id(<<>>,
					    _acc) ->
    _acc;
encode_teknorota_fileshare_download_attr_id(_val,
					    _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_fileshare_download_attr_data(__TopXMLNS,
					      undefined) ->
    <<>>;
decode_teknorota_fileshare_download_attr_data(__TopXMLNS,
					      _val) ->
    _val.

encode_teknorota_fileshare_download_attr_data(<<>>,
					      _acc) ->
    _acc;
encode_teknorota_fileshare_download_attr_data(_val,
					      _acc) ->
    [{<<"data">>, _val} | _acc].

decode_teknorota_fileshare_upload(__TopXMLNS, __Opts,
				  {xmlel, <<"upload">>, _attrs, _els}) ->
    {Id, Type, Size, Data} =
	decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
						_attrs, undefined, undefined,
						undefined, undefined),
    {teknorota_fileshare_upload, Id, Type, Size, Data}.

decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					[{<<"id">>, _val} | _attrs], _Id, Type,
					Size, Data) ->
    decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					    _attrs, _val, Type, Size, Data);
decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					[{<<"type">>, _val} | _attrs], Id,
					_Type, Size, Data) ->
    decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					    _attrs, Id, _val, Size, Data);
decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					[{<<"size">>, _val} | _attrs], Id, Type,
					_Size, Data) ->
    decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					    _attrs, Id, Type, _val, Data);
decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					[{<<"data">>, _val} | _attrs], Id, Type,
					Size, _Data) ->
    decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					    _attrs, Id, Type, Size, _val);
decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					[_ | _attrs], Id, Type, Size, Data) ->
    decode_teknorota_fileshare_upload_attrs(__TopXMLNS,
					    _attrs, Id, Type, Size, Data);
decode_teknorota_fileshare_upload_attrs(__TopXMLNS, [],
					Id, Type, Size, Data) ->
    {decode_teknorota_fileshare_upload_attr_id(__TopXMLNS,
					       Id),
     decode_teknorota_fileshare_upload_attr_type(__TopXMLNS,
						 Type),
     decode_teknorota_fileshare_upload_attr_size(__TopXMLNS,
						 Size),
     decode_teknorota_fileshare_upload_attr_data(__TopXMLNS,
						 Data)}.

encode_teknorota_fileshare_upload({teknorota_fileshare_upload,
				   Id, Type, Size, Data},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:filesharing">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_teknorota_fileshare_upload_attr_data(Data,
						    encode_teknorota_fileshare_upload_attr_size(Size,
												encode_teknorota_fileshare_upload_attr_type(Type,
																	    encode_teknorota_fileshare_upload_attr_id(Id,
																						      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																										 __TopXMLNS))))),
    {xmlel, <<"upload">>, _attrs, _els}.

decode_teknorota_fileshare_upload_attr_id(__TopXMLNS,
					  undefined) ->
    <<>>;
decode_teknorota_fileshare_upload_attr_id(__TopXMLNS,
					  _val) ->
    _val.

encode_teknorota_fileshare_upload_attr_id(<<>>, _acc) ->
    _acc;
encode_teknorota_fileshare_upload_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_fileshare_upload_attr_type(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_teknorota_fileshare_upload_attr_type(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_fileshare_upload_attr_type(<<>>,
					    _acc) ->
    _acc;
encode_teknorota_fileshare_upload_attr_type(_val,
					    _acc) ->
    [{<<"type">>, _val} | _acc].

decode_teknorota_fileshare_upload_attr_size(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_teknorota_fileshare_upload_attr_size(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_fileshare_upload_attr_size(<<>>,
					    _acc) ->
    _acc;
encode_teknorota_fileshare_upload_attr_size(_val,
					    _acc) ->
    [{<<"size">>, _val} | _acc].

decode_teknorota_fileshare_upload_attr_data(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_teknorota_fileshare_upload_attr_data(__TopXMLNS,
					    _val) ->
    _val.

encode_teknorota_fileshare_upload_attr_data(<<>>,
					    _acc) ->
    _acc;
encode_teknorota_fileshare_upload_attr_data(_val,
					    _acc) ->
    [{<<"data">>, _val} | _acc].
