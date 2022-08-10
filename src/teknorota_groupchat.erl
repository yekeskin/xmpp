%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(teknorota_groupchat).

-compile(export_all).

do_decode(<<"update">>, <<"teknorota:xmpp:groupchat">>,
          El, Opts) ->
    decode_teknorota_groupchat_group_update(<<"teknorota:xmpp:groupchat">>,
                                            Opts,
                                            El);
do_decode(<<"query">>, <<"teknorota:xmpp:groupchat">>,
          El, Opts) ->
    decode_teknorota_groupchat_query(<<"teknorota:xmpp:groupchat">>,
                                     Opts,
                                     El);
do_decode(<<"groups-list">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_groups_list(<<"teknorota:xmpp:groupchat">>,
                                           Opts,
                                           El);
do_decode(<<"group">>, <<"teknorota:xmpp:groupchat">>,
          El, Opts) ->
    decode_teknorota_groupchat_group_el(<<"teknorota:xmpp:groupchat">>,
                                        Opts,
                                        El);
do_decode(<<"get-groups-list">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_get_groups_list(<<"teknorota:xmpp:groupchat">>,
                                               Opts,
                                               El);
do_decode(<<"group-key">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_group_key_el(<<"teknorota:xmpp:groupchat">>,
                                            Opts,
                                            El);
do_decode(<<"group-info">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_group_info(<<"teknorota:xmpp:groupchat">>,
                                          Opts,
                                          El);
do_decode(<<"left-group">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_left_group(<<"teknorota:xmpp:groupchat">>,
                                          Opts,
                                          El);
do_decode(<<"leave-group">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_leave_group(<<"teknorota:xmpp:groupchat">>,
                                           Opts,
                                           El);
do_decode(<<"group-keys-updated">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_group_keys_updated(<<"teknorota:xmpp:groupchat">>,
                                                  Opts,
                                                  El);
do_decode(<<"update-group-keys">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_update_group_keys(<<"teknorota:xmpp:groupchat">>,
                                                 Opts,
                                                 El);
do_decode(<<"key">>, <<"teknorota:xmpp:groupchat">>, El,
          Opts) ->
    decode_teknorota_groupchat_group_key(<<"teknorota:xmpp:groupchat">>,
                                         Opts,
                                         El);
do_decode(<<"group-updated">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_group_updated(<<"teknorota:xmpp:groupchat">>,
                                             Opts,
                                             El);
do_decode(<<"update-group">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_update_group(<<"teknorota:xmpp:groupchat">>,
                                            Opts,
                                            El);
do_decode(<<"group-created">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_group_created(<<"teknorota:xmpp:groupchat">>,
                                             Opts,
                                             El);
do_decode(<<"new-group">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_new_group(<<"teknorota:xmpp:groupchat">>,
                                         Opts,
                                         El);
do_decode(<<"participant">>,
          <<"teknorota:xmpp:groupchat">>, El, Opts) ->
    decode_teknorota_groupchat_participant(<<"teknorota:xmpp:groupchat">>,
                                           Opts,
                                           El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"update">>, <<"teknorota:xmpp:groupchat">>},
     {<<"query">>, <<"teknorota:xmpp:groupchat">>},
     {<<"groups-list">>, <<"teknorota:xmpp:groupchat">>},
     {<<"group">>, <<"teknorota:xmpp:groupchat">>},
     {<<"get-groups-list">>, <<"teknorota:xmpp:groupchat">>},
     {<<"group-key">>, <<"teknorota:xmpp:groupchat">>},
     {<<"group-info">>, <<"teknorota:xmpp:groupchat">>},
     {<<"left-group">>, <<"teknorota:xmpp:groupchat">>},
     {<<"leave-group">>, <<"teknorota:xmpp:groupchat">>},
     {<<"group-keys-updated">>,
      <<"teknorota:xmpp:groupchat">>},
     {<<"update-group-keys">>,
      <<"teknorota:xmpp:groupchat">>},
     {<<"key">>, <<"teknorota:xmpp:groupchat">>},
     {<<"group-updated">>, <<"teknorota:xmpp:groupchat">>},
     {<<"update-group">>, <<"teknorota:xmpp:groupchat">>},
     {<<"group-created">>, <<"teknorota:xmpp:groupchat">>},
     {<<"new-group">>, <<"teknorota:xmpp:groupchat">>},
     {<<"participant">>, <<"teknorota:xmpp:groupchat">>}].

do_encode({teknorota_groupchat_participant, _, _, _} =
              Participant,
          TopXMLNS) ->
    encode_teknorota_groupchat_participant(Participant,
                                           TopXMLNS);
do_encode({teknorota_groupchat_new_group, _, _, _} =
              New_group,
          TopXMLNS) ->
    encode_teknorota_groupchat_new_group(New_group,
                                         TopXMLNS);
do_encode({teknorota_groupchat_group_created, _} =
              Group_created,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_created(Group_created,
                                             TopXMLNS);
do_encode({teknorota_groupchat_update_group,
           _,
           _,
           _,
           _} =
              Update_group,
          TopXMLNS) ->
    encode_teknorota_groupchat_update_group(Update_group,
                                            TopXMLNS);
do_encode({teknorota_groupchat_group_updated, _} =
              Group_updated,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_updated(Group_updated,
                                             TopXMLNS);
do_encode({teknorota_groupchat_group_key, _, _} = Key,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_key(Key, TopXMLNS);
do_encode({teknorota_groupchat_update_group_keys,
           _,
           _} =
              Update_group_keys,
          TopXMLNS) ->
    encode_teknorota_groupchat_update_group_keys(Update_group_keys,
                                                 TopXMLNS);
do_encode({teknorota_groupchat_group_keys_updated, _} =
              Group_keys_updated,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_keys_updated(Group_keys_updated,
                                                  TopXMLNS);
do_encode({teknorota_groupchat_leave_group, _} =
              Leave_group,
          TopXMLNS) ->
    encode_teknorota_groupchat_leave_group(Leave_group,
                                           TopXMLNS);
do_encode({teknorota_groupchat_left_group, _} =
              Left_group,
          TopXMLNS) ->
    encode_teknorota_groupchat_left_group(Left_group,
                                          TopXMLNS);
do_encode({teknorota_groupchat_group_info,
           _,
           _,
           _,
           _,
           _} =
              Group_info,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_info(Group_info,
                                          TopXMLNS);
do_encode({teknorota_groupchat_group_key_el, _, _} =
              Group_key,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_key_el(Group_key,
                                            TopXMLNS);
do_encode({teknorota_groupchat_get_groups_list} =
              Get_groups_list,
          TopXMLNS) ->
    encode_teknorota_groupchat_get_groups_list(Get_groups_list,
                                               TopXMLNS);
do_encode({teknorota_groupchat_group_el, _, _} = Group,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_el(Group, TopXMLNS);
do_encode({teknorota_groupchat_groups_list, _} =
              Groups_list,
          TopXMLNS) ->
    encode_teknorota_groupchat_groups_list(Groups_list,
                                           TopXMLNS);
do_encode({teknorota_groupchat_query,
           _,
           _,
           _,
           _,
           _,
           _,
           _} =
              Query,
          TopXMLNS) ->
    encode_teknorota_groupchat_query(Query, TopXMLNS);
do_encode({teknorota_groupchat_group_update, _, _} =
              Update,
          TopXMLNS) ->
    encode_teknorota_groupchat_group_update(Update,
                                            TopXMLNS).

do_get_name({teknorota_groupchat_get_groups_list}) ->
    <<"get-groups-list">>;
do_get_name({teknorota_groupchat_group_created, _}) ->
    <<"group-created">>;
do_get_name({teknorota_groupchat_group_el, _, _}) ->
    <<"group">>;
do_get_name({teknorota_groupchat_group_info,
             _,
             _,
             _,
             _,
             _}) ->
    <<"group-info">>;
do_get_name({teknorota_groupchat_group_key, _, _}) ->
    <<"key">>;
do_get_name({teknorota_groupchat_group_key_el, _, _}) ->
    <<"group-key">>;
do_get_name({teknorota_groupchat_group_keys_updated,
             _}) ->
    <<"group-keys-updated">>;
do_get_name({teknorota_groupchat_group_update, _, _}) ->
    <<"update">>;
do_get_name({teknorota_groupchat_group_updated, _}) ->
    <<"group-updated">>;
do_get_name({teknorota_groupchat_groups_list, _}) ->
    <<"groups-list">>;
do_get_name({teknorota_groupchat_leave_group, _}) ->
    <<"leave-group">>;
do_get_name({teknorota_groupchat_left_group, _}) ->
    <<"left-group">>;
do_get_name({teknorota_groupchat_new_group, _, _, _}) ->
    <<"new-group">>;
do_get_name({teknorota_groupchat_participant,
             _,
             _,
             _}) ->
    <<"participant">>;
do_get_name({teknorota_groupchat_query,
             _,
             _,
             _,
             _,
             _,
             _,
             _}) ->
    <<"query">>;
do_get_name({teknorota_groupchat_update_group,
             _,
             _,
             _,
             _}) ->
    <<"update-group">>;
do_get_name({teknorota_groupchat_update_group_keys,
             _,
             _}) ->
    <<"update-group-keys">>.

do_get_ns({teknorota_groupchat_get_groups_list}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_created, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_el, _, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_info,
           _,
           _,
           _,
           _,
           _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_key, _, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_key_el, _, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_keys_updated,
           _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_update, _, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_group_updated, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_groups_list, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_leave_group, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_left_group, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_new_group, _, _, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_participant, _, _, _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_query,
           _,
           _,
           _,
           _,
           _,
           _,
           _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_update_group,
           _,
           _,
           _,
           _}) ->
    <<"teknorota:xmpp:groupchat">>;
do_get_ns({teknorota_groupchat_update_group_keys,
           _,
           _}) ->
    <<"teknorota:xmpp:groupchat">>.

pp(teknorota_groupchat_participant, 3) ->
    [jid, type, action];
pp(teknorota_groupchat_new_group, 3) ->
    [name, avatar, participants];
pp(teknorota_groupchat_group_created, 1) -> [id];
pp(teknorota_groupchat_update_group, 4) ->
    [id, name, avatar, participants];
pp(teknorota_groupchat_group_updated, 1) -> [id];
pp(teknorota_groupchat_group_key, 2) -> [jid, cdata];
pp(teknorota_groupchat_update_group_keys, 2) ->
    [id, keys];
pp(teknorota_groupchat_group_keys_updated, 1) -> [id];
pp(teknorota_groupchat_leave_group, 1) -> [id];
pp(teknorota_groupchat_left_group, 1) -> [id];
pp(teknorota_groupchat_group_info, 5) ->
    [id, name, avatar, lastupdated, participants];
pp(teknorota_groupchat_group_key_el, 2) -> [id, key];
pp(teknorota_groupchat_get_groups_list, 0) -> [];
pp(teknorota_groupchat_group_el, 2) ->
    [id, lastupdated];
pp(teknorota_groupchat_groups_list, 1) -> [groups];
pp(teknorota_groupchat_query, 7) ->
    [new_group,
     update_group,
     update_keys,
     leave_group,
     group_info,
     group_key,
     groups_list];
pp(teknorota_groupchat_group_update, 2) -> [type, data];
pp(_, _) -> no.

records() ->
    [{teknorota_groupchat_participant, 3},
     {teknorota_groupchat_new_group, 3},
     {teknorota_groupchat_group_created, 1},
     {teknorota_groupchat_update_group, 4},
     {teknorota_groupchat_group_updated, 1},
     {teknorota_groupchat_group_key, 2},
     {teknorota_groupchat_update_group_keys, 2},
     {teknorota_groupchat_group_keys_updated, 1},
     {teknorota_groupchat_leave_group, 1},
     {teknorota_groupchat_left_group, 1},
     {teknorota_groupchat_group_info, 5},
     {teknorota_groupchat_group_key_el, 2},
     {teknorota_groupchat_get_groups_list, 0},
     {teknorota_groupchat_group_el, 2},
     {teknorota_groupchat_groups_list, 1},
     {teknorota_groupchat_query, 7},
     {teknorota_groupchat_group_update, 2}].

decode_teknorota_groupchat_group_update(__TopXMLNS,
                                        __Opts,
                                        {xmlel, <<"update">>, _attrs, _els}) ->
    {Type, Data} =
        decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                                      _attrs,
                                                      undefined,
                                                      undefined),
    {teknorota_groupchat_group_update, Type, Data}.

decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                              [{<<"type">>, _val} | _attrs],
                                              _Type, Data) ->
    decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                                  _attrs,
                                                  _val,
                                                  Data);
decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                              [{<<"data">>, _val} | _attrs],
                                              Type, _Data) ->
    decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Type,
                                                  _val);
decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                              [_ | _attrs], Type, Data) ->
    decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Type,
                                                  Data);
decode_teknorota_groupchat_group_update_attrs(__TopXMLNS,
                                              [], Type, Data) ->
    {decode_teknorota_groupchat_group_update_attr_type(__TopXMLNS,
                                                       Type),
     decode_teknorota_groupchat_group_update_attr_data(__TopXMLNS,
                                                       Data)}.

encode_teknorota_groupchat_group_update({teknorota_groupchat_group_update,
                                         Type,
                                         Data},
                                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_group_update_attr_data(Data,
                                                          encode_teknorota_groupchat_group_update_attr_type(Type,
                                                                                                            xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                       __TopXMLNS))),
    {xmlel, <<"update">>, _attrs, _els}.

decode_teknorota_groupchat_group_update_attr_type(__TopXMLNS,
                                                  undefined) ->
    <<>>;
decode_teknorota_groupchat_group_update_attr_type(__TopXMLNS,
                                                  _val) ->
    _val.

encode_teknorota_groupchat_group_update_attr_type(<<>>,
                                                  _acc) ->
    _acc;
encode_teknorota_groupchat_group_update_attr_type(_val,
                                                  _acc) ->
    [{<<"type">>, _val} | _acc].

decode_teknorota_groupchat_group_update_attr_data(__TopXMLNS,
                                                  undefined) ->
    <<>>;
decode_teknorota_groupchat_group_update_attr_data(__TopXMLNS,
                                                  _val) ->
    _val.

encode_teknorota_groupchat_group_update_attr_data(<<>>,
                                                  _acc) ->
    _acc;
encode_teknorota_groupchat_group_update_attr_data(_val,
                                                  _acc) ->
    [{<<"data">>, _val} | _acc].

decode_teknorota_groupchat_query(__TopXMLNS, __Opts,
                                 {xmlel, <<"query">>, _attrs, _els}) ->
    {Leave_group,
     Update_group,
     New_group,
     Update_keys,
     Groups_list,
     Group_key,
     Group_info} =
        decode_teknorota_groupchat_query_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             [],
                                             [],
                                             [],
                                             [],
                                             [],
                                             [],
                                             []),
    {teknorota_groupchat_query,
     New_group,
     Update_group,
     Update_keys,
     Leave_group,
     Group_info,
     Group_key,
     Groups_list}.

decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [], Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    {lists:reverse(Leave_group),
     lists:reverse(Update_group),
     lists:reverse(New_group),
     lists:reverse(Update_keys),
     lists:reverse(Groups_list),
     lists:reverse(Group_key),
     lists:reverse(Group_info)};
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel, <<"new-group">>, _attrs, _} = _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 [decode_teknorota_groupchat_new_group(<<"teknorota:xmpp:groupchat">>,
                                                                                       __Opts,
                                                                                       _el)
                                                  | New_group],
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel, <<"update-group">>, _attrs, _} =
                                          _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 [decode_teknorota_groupchat_update_group(<<"teknorota:xmpp:groupchat">>,
                                                                                          __Opts,
                                                                                          _el)
                                                  | Update_group],
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel,
                                       <<"update-group-keys">>,
                                       _attrs,
                                       _} =
                                          _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 [decode_teknorota_groupchat_update_group_keys(<<"teknorota:xmpp:groupchat">>,
                                                                                               __Opts,
                                                                                               _el)
                                                  | Update_keys],
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel, <<"leave-group">>, _attrs, _} =
                                          _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 [decode_teknorota_groupchat_leave_group(<<"teknorota:xmpp:groupchat">>,
                                                                                         __Opts,
                                                                                         _el)
                                                  | Leave_group],
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel, <<"group-info">>, _attrs, _} = _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 [decode_teknorota_groupchat_group_info(<<"teknorota:xmpp:groupchat">>,
                                                                                        __Opts,
                                                                                        _el)
                                                  | Group_info]);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel, <<"group-key">>, _attrs, _} = _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 [decode_teknorota_groupchat_group_key_el(<<"teknorota:xmpp:groupchat">>,
                                                                                          __Opts,
                                                                                          _el)
                                                  | Group_key],
                                                 Group_info);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [{xmlel,
                                       <<"get-groups-list">>,
                                       _attrs,
                                       _} =
                                          _el
                                      | _els],
                                     Leave_group, Update_group, New_group,
                                     Update_keys, Groups_list, Group_key,
                                     Group_info) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 [decode_teknorota_groupchat_get_groups_list(<<"teknorota:xmpp:groupchat">>,
                                                                                             __Opts,
                                                                                             _el)
                                                  | Groups_list],
                                                 Group_key,
                                                 Group_info);
        _ ->
            decode_teknorota_groupchat_query_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 Leave_group,
                                                 Update_group,
                                                 New_group,
                                                 Update_keys,
                                                 Groups_list,
                                                 Group_key,
                                                 Group_info)
    end;
decode_teknorota_groupchat_query_els(__TopXMLNS, __Opts,
                                     [_ | _els], Leave_group, Update_group,
                                     New_group, Update_keys, Groups_list,
                                     Group_key, Group_info) ->
    decode_teknorota_groupchat_query_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         Leave_group,
                                         Update_group,
                                         New_group,
                                         Update_keys,
                                         Groups_list,
                                         Group_key,
                                         Group_info).

encode_teknorota_groupchat_query({teknorota_groupchat_query,
                                  New_group,
                                  Update_group,
                                  Update_keys,
                                  Leave_group,
                                  Group_info,
                                  Group_key,
                                  Groups_list},
                                 __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_teknorota_groupchat_query_$leave_group'(Leave_group,
                                                                      __NewTopXMLNS,
                                                                      'encode_teknorota_groupchat_query_$update_group'(Update_group,
                                                                                                                       __NewTopXMLNS,
                                                                                                                       'encode_teknorota_groupchat_query_$new_group'(New_group,
                                                                                                                                                                     __NewTopXMLNS,
                                                                                                                                                                     'encode_teknorota_groupchat_query_$update_keys'(Update_keys,
                                                                                                                                                                                                                     __NewTopXMLNS,
                                                                                                                                                                                                                     'encode_teknorota_groupchat_query_$groups_list'(Groups_list,
                                                                                                                                                                                                                                                                     __NewTopXMLNS,
                                                                                                                                                                                                                                                                     'encode_teknorota_groupchat_query_$group_key'(Group_key,
                                                                                                                                                                                                                                                                                                                   __NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                   'encode_teknorota_groupchat_query_$group_info'(Group_info,
                                                                                                                                                                                                                                                                                                                                                                  __NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                                                                  [])))))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_teknorota_groupchat_query_$leave_group'([],
                                                __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$leave_group'([Leave_group
                                                 | _els],
                                                __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$leave_group'(_els,
                                                    __TopXMLNS,
                                                    [encode_teknorota_groupchat_leave_group(Leave_group,
                                                                                            __TopXMLNS)
                                                     | _acc]).

'encode_teknorota_groupchat_query_$update_group'([],
                                                 __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$update_group'([Update_group
                                                  | _els],
                                                 __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$update_group'(_els,
                                                     __TopXMLNS,
                                                     [encode_teknorota_groupchat_update_group(Update_group,
                                                                                              __TopXMLNS)
                                                      | _acc]).

'encode_teknorota_groupchat_query_$new_group'([],
                                              __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$new_group'([New_group
                                               | _els],
                                              __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$new_group'(_els,
                                                  __TopXMLNS,
                                                  [encode_teknorota_groupchat_new_group(New_group,
                                                                                        __TopXMLNS)
                                                   | _acc]).

'encode_teknorota_groupchat_query_$update_keys'([],
                                                __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$update_keys'([Update_keys
                                                 | _els],
                                                __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$update_keys'(_els,
                                                    __TopXMLNS,
                                                    [encode_teknorota_groupchat_update_group_keys(Update_keys,
                                                                                                  __TopXMLNS)
                                                     | _acc]).

'encode_teknorota_groupchat_query_$groups_list'([],
                                                __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$groups_list'([Groups_list
                                                 | _els],
                                                __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$groups_list'(_els,
                                                    __TopXMLNS,
                                                    [encode_teknorota_groupchat_get_groups_list(Groups_list,
                                                                                                __TopXMLNS)
                                                     | _acc]).

'encode_teknorota_groupchat_query_$group_key'([],
                                              __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$group_key'([Group_key
                                               | _els],
                                              __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$group_key'(_els,
                                                  __TopXMLNS,
                                                  [encode_teknorota_groupchat_group_key_el(Group_key,
                                                                                           __TopXMLNS)
                                                   | _acc]).

'encode_teknorota_groupchat_query_$group_info'([],
                                               __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_query_$group_info'([Group_info
                                                | _els],
                                               __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_query_$group_info'(_els,
                                                   __TopXMLNS,
                                                   [encode_teknorota_groupchat_group_info(Group_info,
                                                                                          __TopXMLNS)
                                                    | _acc]).

decode_teknorota_groupchat_groups_list(__TopXMLNS,
                                       __Opts,
                                       {xmlel,
                                        <<"groups-list">>,
                                        _attrs,
                                        _els}) ->
    Groups =
        decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                                   __Opts,
                                                   _els,
                                                   []),
    {teknorota_groupchat_groups_list, Groups}.

decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                           __Opts, [], Groups) ->
    lists:reverse(Groups);
decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                           __Opts,
                                           [{xmlel, <<"group">>, _attrs, _} =
                                                _el
                                            | _els],
                                           Groups) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                                       __Opts,
                                                       _els,
                                                       [decode_teknorota_groupchat_group_el(<<"teknorota:xmpp:groupchat">>,
                                                                                            __Opts,
                                                                                            _el)
                                                        | Groups]);
        _ ->
            decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                                       __Opts,
                                                       _els,
                                                       Groups)
    end;
decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                           __Opts, [_ | _els], Groups) ->
    decode_teknorota_groupchat_groups_list_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Groups).

encode_teknorota_groupchat_groups_list({teknorota_groupchat_groups_list,
                                        Groups},
                                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_teknorota_groupchat_groups_list_$groups'(Groups,
                                                                       __NewTopXMLNS,
                                                                       [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"groups-list">>, _attrs, _els}.

'encode_teknorota_groupchat_groups_list_$groups'([],
                                                 __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_groups_list_$groups'([Groups
                                                  | _els],
                                                 __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_groups_list_$groups'(_els,
                                                     __TopXMLNS,
                                                     [encode_teknorota_groupchat_group_el(Groups,
                                                                                          __TopXMLNS)
                                                      | _acc]).

decode_teknorota_groupchat_group_el(__TopXMLNS, __Opts,
                                    {xmlel, <<"group">>, _attrs, _els}) ->
    {Id, Lastupdated} =
        decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                                  _attrs,
                                                  undefined,
                                                  undefined),
    {teknorota_groupchat_group_el, Id, Lastupdated}.

decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                          [{<<"id">>, _val} | _attrs], _Id,
                                          Lastupdated) ->
    decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                              _attrs,
                                              _val,
                                              Lastupdated);
decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                          [{<<"lastupdated">>, _val} | _attrs],
                                          Id, _Lastupdated) ->
    decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                              _attrs,
                                              Id,
                                              _val);
decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                          [_ | _attrs], Id, Lastupdated) ->
    decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                              _attrs,
                                              Id,
                                              Lastupdated);
decode_teknorota_groupchat_group_el_attrs(__TopXMLNS,
                                          [], Id, Lastupdated) ->
    {decode_teknorota_groupchat_group_el_attr_id(__TopXMLNS,
                                                 Id),
     decode_teknorota_groupchat_group_el_attr_lastupdated(__TopXMLNS,
                                                          Lastupdated)}.

encode_teknorota_groupchat_group_el({teknorota_groupchat_group_el,
                                     Id,
                                     Lastupdated},
                                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_group_el_attr_lastupdated(Lastupdated,
                                                             encode_teknorota_groupchat_group_el_attr_id(Id,
                                                                                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                    __TopXMLNS))),
    {xmlel, <<"group">>, _attrs, _els}.

decode_teknorota_groupchat_group_el_attr_id(__TopXMLNS,
                                            undefined) ->
    <<>>;
decode_teknorota_groupchat_group_el_attr_id(__TopXMLNS,
                                            _val) ->
    _val.

encode_teknorota_groupchat_group_el_attr_id(<<>>,
                                            _acc) ->
    _acc;
encode_teknorota_groupchat_group_el_attr_id(_val,
                                            _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_group_el_attr_lastupdated(__TopXMLNS,
                                                     undefined) ->
    <<>>;
decode_teknorota_groupchat_group_el_attr_lastupdated(__TopXMLNS,
                                                     _val) ->
    _val.

encode_teknorota_groupchat_group_el_attr_lastupdated(<<>>,
                                                     _acc) ->
    _acc;
encode_teknorota_groupchat_group_el_attr_lastupdated(_val,
                                                     _acc) ->
    [{<<"lastupdated">>, _val} | _acc].

decode_teknorota_groupchat_get_groups_list(__TopXMLNS,
                                           __Opts,
                                           {xmlel,
                                            <<"get-groups-list">>,
                                            _attrs,
                                            _els}) ->
    {teknorota_groupchat_get_groups_list}.

encode_teknorota_groupchat_get_groups_list({teknorota_groupchat_get_groups_list},
                                           __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"get-groups-list">>, _attrs, _els}.

decode_teknorota_groupchat_group_key_el(__TopXMLNS,
                                        __Opts,
                                        {xmlel,
                                         <<"group-key">>,
                                         _attrs,
                                         _els}) ->
    {Id, Key} =
        decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                                      _attrs,
                                                      undefined,
                                                      undefined),
    {teknorota_groupchat_group_key_el, Id, Key}.

decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                              [{<<"id">>, _val} | _attrs], _Id,
                                              Key) ->
    decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                                  _attrs,
                                                  _val,
                                                  Key);
decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                              [{<<"key">>, _val} | _attrs], Id,
                                              _Key) ->
    decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Id,
                                                  _val);
decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                              [_ | _attrs], Id, Key) ->
    decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Id,
                                                  Key);
decode_teknorota_groupchat_group_key_el_attrs(__TopXMLNS,
                                              [], Id, Key) ->
    {decode_teknorota_groupchat_group_key_el_attr_id(__TopXMLNS,
                                                     Id),
     decode_teknorota_groupchat_group_key_el_attr_key(__TopXMLNS,
                                                      Key)}.

encode_teknorota_groupchat_group_key_el({teknorota_groupchat_group_key_el,
                                         Id,
                                         Key},
                                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_group_key_el_attr_key(Key,
                                                         encode_teknorota_groupchat_group_key_el_attr_id(Id,
                                                                                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                    __TopXMLNS))),
    {xmlel, <<"group-key">>, _attrs, _els}.

decode_teknorota_groupchat_group_key_el_attr_id(__TopXMLNS,
                                                undefined) ->
    <<>>;
decode_teknorota_groupchat_group_key_el_attr_id(__TopXMLNS,
                                                _val) ->
    _val.

encode_teknorota_groupchat_group_key_el_attr_id(<<>>,
                                                _acc) ->
    _acc;
encode_teknorota_groupchat_group_key_el_attr_id(_val,
                                                _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_group_key_el_attr_key(__TopXMLNS,
                                                 undefined) ->
    <<>>;
decode_teknorota_groupchat_group_key_el_attr_key(__TopXMLNS,
                                                 _val) ->
    _val.

encode_teknorota_groupchat_group_key_el_attr_key(<<>>,
                                                 _acc) ->
    _acc;
encode_teknorota_groupchat_group_key_el_attr_key(_val,
                                                 _acc) ->
    [{<<"key">>, _val} | _acc].

decode_teknorota_groupchat_group_info(__TopXMLNS,
                                      __Opts,
                                      {xmlel,
                                       <<"group-info">>,
                                       _attrs,
                                       _els}) ->
    Participants =
        decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                                  __Opts,
                                                  _els,
                                                  []),
    {Id, Name, Avatar, Lastupdated} =
        decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                                    _attrs,
                                                    undefined,
                                                    undefined,
                                                    undefined,
                                                    undefined),
    {teknorota_groupchat_group_info,
     Id,
     Name,
     Avatar,
     Lastupdated,
     Participants}.

decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                          __Opts, [], Participants) ->
    lists:reverse(Participants);
decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                          __Opts,
                                          [{xmlel,
                                            <<"participant">>,
                                            _attrs,
                                            _} =
                                               _el
                                           | _els],
                                          Participants) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                                      __Opts,
                                                      _els,
                                                      [decode_teknorota_groupchat_participant(<<"teknorota:xmpp:groupchat">>,
                                                                                              __Opts,
                                                                                              _el)
                                                       | Participants]);
        _ ->
            decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                                      __Opts,
                                                      _els,
                                                      Participants)
    end;
decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                          __Opts, [_ | _els], Participants) ->
    decode_teknorota_groupchat_group_info_els(__TopXMLNS,
                                              __Opts,
                                              _els,
                                              Participants).

decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                            [{<<"id">>, _val} | _attrs], _Id,
                                            Name, Avatar, Lastupdated) ->
    decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                                _attrs,
                                                _val,
                                                Name,
                                                Avatar,
                                                Lastupdated);
decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                            [{<<"name">>, _val} | _attrs], Id,
                                            _Name, Avatar, Lastupdated) ->
    decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                                _attrs,
                                                Id,
                                                _val,
                                                Avatar,
                                                Lastupdated);
decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                            [{<<"avatar">>, _val} | _attrs], Id,
                                            Name, _Avatar, Lastupdated) ->
    decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                                _attrs,
                                                Id,
                                                Name,
                                                _val,
                                                Lastupdated);
decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                            [{<<"lastupdated">>, _val}
                                             | _attrs],
                                            Id, Name, Avatar, _Lastupdated) ->
    decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                                _attrs,
                                                Id,
                                                Name,
                                                Avatar,
                                                _val);
decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                            [_ | _attrs], Id, Name, Avatar,
                                            Lastupdated) ->
    decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                                _attrs,
                                                Id,
                                                Name,
                                                Avatar,
                                                Lastupdated);
decode_teknorota_groupchat_group_info_attrs(__TopXMLNS,
                                            [], Id, Name, Avatar,
                                            Lastupdated) ->
    {decode_teknorota_groupchat_group_info_attr_id(__TopXMLNS,
                                                   Id),
     decode_teknorota_groupchat_group_info_attr_name(__TopXMLNS,
                                                     Name),
     decode_teknorota_groupchat_group_info_attr_avatar(__TopXMLNS,
                                                       Avatar),
     decode_teknorota_groupchat_group_info_attr_lastupdated(__TopXMLNS,
                                                            Lastupdated)}.

encode_teknorota_groupchat_group_info({teknorota_groupchat_group_info,
                                       Id,
                                       Name,
                                       Avatar,
                                       Lastupdated,
                                       Participants},
                                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_teknorota_groupchat_group_info_$participants'(Participants,
                                                                            __NewTopXMLNS,
                                                                            [])),
    _attrs =
        encode_teknorota_groupchat_group_info_attr_lastupdated(Lastupdated,
                                                               encode_teknorota_groupchat_group_info_attr_avatar(Avatar,
                                                                                                                 encode_teknorota_groupchat_group_info_attr_name(Name,
                                                                                                                                                                 encode_teknorota_groupchat_group_info_attr_id(Id,
                                                                                                                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                          __TopXMLNS))))),
    {xmlel, <<"group-info">>, _attrs, _els}.

'encode_teknorota_groupchat_group_info_$participants'([],
                                                      __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_group_info_$participants'([Participants
                                                       | _els],
                                                      __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_group_info_$participants'(_els,
                                                          __TopXMLNS,
                                                          [encode_teknorota_groupchat_participant(Participants,
                                                                                                  __TopXMLNS)
                                                           | _acc]).

decode_teknorota_groupchat_group_info_attr_id(__TopXMLNS,
                                              undefined) ->
    <<>>;
decode_teknorota_groupchat_group_info_attr_id(__TopXMLNS,
                                              _val) ->
    _val.

encode_teknorota_groupchat_group_info_attr_id(<<>>,
                                              _acc) ->
    _acc;
encode_teknorota_groupchat_group_info_attr_id(_val,
                                              _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_group_info_attr_name(__TopXMLNS,
                                                undefined) ->
    <<>>;
decode_teknorota_groupchat_group_info_attr_name(__TopXMLNS,
                                                _val) ->
    _val.

encode_teknorota_groupchat_group_info_attr_name(<<>>,
                                                _acc) ->
    _acc;
encode_teknorota_groupchat_group_info_attr_name(_val,
                                                _acc) ->
    [{<<"name">>, _val} | _acc].

decode_teknorota_groupchat_group_info_attr_avatar(__TopXMLNS,
                                                  undefined) ->
    <<>>;
decode_teknorota_groupchat_group_info_attr_avatar(__TopXMLNS,
                                                  _val) ->
    _val.

encode_teknorota_groupchat_group_info_attr_avatar(<<>>,
                                                  _acc) ->
    _acc;
encode_teknorota_groupchat_group_info_attr_avatar(_val,
                                                  _acc) ->
    [{<<"avatar">>, _val} | _acc].

decode_teknorota_groupchat_group_info_attr_lastupdated(__TopXMLNS,
                                                       undefined) ->
    <<>>;
decode_teknorota_groupchat_group_info_attr_lastupdated(__TopXMLNS,
                                                       _val) ->
    _val.

encode_teknorota_groupchat_group_info_attr_lastupdated(<<>>,
                                                       _acc) ->
    _acc;
encode_teknorota_groupchat_group_info_attr_lastupdated(_val,
                                                       _acc) ->
    [{<<"lastupdated">>, _val} | _acc].

decode_teknorota_groupchat_left_group(__TopXMLNS,
                                      __Opts,
                                      {xmlel,
                                       <<"left-group">>,
                                       _attrs,
                                       _els}) ->
    Id =
        decode_teknorota_groupchat_left_group_attrs(__TopXMLNS,
                                                    _attrs,
                                                    undefined),
    {teknorota_groupchat_left_group, Id}.

decode_teknorota_groupchat_left_group_attrs(__TopXMLNS,
                                            [{<<"id">>, _val} | _attrs], _Id) ->
    decode_teknorota_groupchat_left_group_attrs(__TopXMLNS,
                                                _attrs,
                                                _val);
decode_teknorota_groupchat_left_group_attrs(__TopXMLNS,
                                            [_ | _attrs], Id) ->
    decode_teknorota_groupchat_left_group_attrs(__TopXMLNS,
                                                _attrs,
                                                Id);
decode_teknorota_groupchat_left_group_attrs(__TopXMLNS,
                                            [], Id) ->
    decode_teknorota_groupchat_left_group_attr_id(__TopXMLNS,
                                                  Id).

encode_teknorota_groupchat_left_group({teknorota_groupchat_left_group,
                                       Id},
                                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_left_group_attr_id(Id,
                                                      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                 __TopXMLNS)),
    {xmlel, <<"left-group">>, _attrs, _els}.

decode_teknorota_groupchat_left_group_attr_id(__TopXMLNS,
                                              undefined) ->
    <<>>;
decode_teknorota_groupchat_left_group_attr_id(__TopXMLNS,
                                              _val) ->
    _val.

encode_teknorota_groupchat_left_group_attr_id(<<>>,
                                              _acc) ->
    _acc;
encode_teknorota_groupchat_left_group_attr_id(_val,
                                              _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_leave_group(__TopXMLNS,
                                       __Opts,
                                       {xmlel,
                                        <<"leave-group">>,
                                        _attrs,
                                        _els}) ->
    Id =
        decode_teknorota_groupchat_leave_group_attrs(__TopXMLNS,
                                                     _attrs,
                                                     undefined),
    {teknorota_groupchat_leave_group, Id}.

decode_teknorota_groupchat_leave_group_attrs(__TopXMLNS,
                                             [{<<"id">>, _val} | _attrs],
                                             _Id) ->
    decode_teknorota_groupchat_leave_group_attrs(__TopXMLNS,
                                                 _attrs,
                                                 _val);
decode_teknorota_groupchat_leave_group_attrs(__TopXMLNS,
                                             [_ | _attrs], Id) ->
    decode_teknorota_groupchat_leave_group_attrs(__TopXMLNS,
                                                 _attrs,
                                                 Id);
decode_teknorota_groupchat_leave_group_attrs(__TopXMLNS,
                                             [], Id) ->
    decode_teknorota_groupchat_leave_group_attr_id(__TopXMLNS,
                                                   Id).

encode_teknorota_groupchat_leave_group({teknorota_groupchat_leave_group,
                                        Id},
                                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_leave_group_attr_id(Id,
                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                  __TopXMLNS)),
    {xmlel, <<"leave-group">>, _attrs, _els}.

decode_teknorota_groupchat_leave_group_attr_id(__TopXMLNS,
                                               undefined) ->
    <<>>;
decode_teknorota_groupchat_leave_group_attr_id(__TopXMLNS,
                                               _val) ->
    _val.

encode_teknorota_groupchat_leave_group_attr_id(<<>>,
                                               _acc) ->
    _acc;
encode_teknorota_groupchat_leave_group_attr_id(_val,
                                               _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_group_keys_updated(__TopXMLNS,
                                              __Opts,
                                              {xmlel,
                                               <<"group-keys-updated">>,
                                               _attrs,
                                               _els}) ->
    Id =
        decode_teknorota_groupchat_group_keys_updated_attrs(__TopXMLNS,
                                                            _attrs,
                                                            undefined),
    {teknorota_groupchat_group_keys_updated, Id}.

decode_teknorota_groupchat_group_keys_updated_attrs(__TopXMLNS,
                                                    [{<<"id">>, _val} | _attrs],
                                                    _Id) ->
    decode_teknorota_groupchat_group_keys_updated_attrs(__TopXMLNS,
                                                        _attrs,
                                                        _val);
decode_teknorota_groupchat_group_keys_updated_attrs(__TopXMLNS,
                                                    [_ | _attrs], Id) ->
    decode_teknorota_groupchat_group_keys_updated_attrs(__TopXMLNS,
                                                        _attrs,
                                                        Id);
decode_teknorota_groupchat_group_keys_updated_attrs(__TopXMLNS,
                                                    [], Id) ->
    decode_teknorota_groupchat_group_keys_updated_attr_id(__TopXMLNS,
                                                          Id).

encode_teknorota_groupchat_group_keys_updated({teknorota_groupchat_group_keys_updated,
                                               Id},
                                              __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_group_keys_updated_attr_id(Id,
                                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                         __TopXMLNS)),
    {xmlel, <<"group-keys-updated">>, _attrs, _els}.

decode_teknorota_groupchat_group_keys_updated_attr_id(__TopXMLNS,
                                                      undefined) ->
    <<>>;
decode_teknorota_groupchat_group_keys_updated_attr_id(__TopXMLNS,
                                                      _val) ->
    _val.

encode_teknorota_groupchat_group_keys_updated_attr_id(<<>>,
                                                      _acc) ->
    _acc;
encode_teknorota_groupchat_group_keys_updated_attr_id(_val,
                                                      _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_update_group_keys(__TopXMLNS,
                                             __Opts,
                                             {xmlel,
                                              <<"update-group-keys">>,
                                              _attrs,
                                              _els}) ->
    Keys =
        decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                         __Opts,
                                                         _els,
                                                         []),
    Id =
        decode_teknorota_groupchat_update_group_keys_attrs(__TopXMLNS,
                                                           _attrs,
                                                           undefined),
    {teknorota_groupchat_update_group_keys, Id, Keys}.

decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                 __Opts, [], Keys) ->
    lists:reverse(Keys);
decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                 __Opts,
                                                 [{xmlel,
                                                   <<"key">>,
                                                   _attrs,
                                                   _} =
                                                      _el
                                                  | _els],
                                                 Keys) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                             __Opts,
                                                             _els,
                                                             [decode_teknorota_groupchat_group_key(<<"teknorota:xmpp:groupchat">>,
                                                                                                   __Opts,
                                                                                                   _el)
                                                              | Keys]);
        _ ->
            decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                             __Opts,
                                                             _els,
                                                             Keys)
    end;
decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                 __Opts, [_ | _els], Keys) ->
    decode_teknorota_groupchat_update_group_keys_els(__TopXMLNS,
                                                     __Opts,
                                                     _els,
                                                     Keys).

decode_teknorota_groupchat_update_group_keys_attrs(__TopXMLNS,
                                                   [{<<"id">>, _val} | _attrs],
                                                   _Id) ->
    decode_teknorota_groupchat_update_group_keys_attrs(__TopXMLNS,
                                                       _attrs,
                                                       _val);
decode_teknorota_groupchat_update_group_keys_attrs(__TopXMLNS,
                                                   [_ | _attrs], Id) ->
    decode_teknorota_groupchat_update_group_keys_attrs(__TopXMLNS,
                                                       _attrs,
                                                       Id);
decode_teknorota_groupchat_update_group_keys_attrs(__TopXMLNS,
                                                   [], Id) ->
    decode_teknorota_groupchat_update_group_keys_attr_id(__TopXMLNS,
                                                         Id).

encode_teknorota_groupchat_update_group_keys({teknorota_groupchat_update_group_keys,
                                              Id,
                                              Keys},
                                             __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_teknorota_groupchat_update_group_keys_$keys'(Keys,
                                                                           __NewTopXMLNS,
                                                                           [])),
    _attrs =
        encode_teknorota_groupchat_update_group_keys_attr_id(Id,
                                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                        __TopXMLNS)),
    {xmlel, <<"update-group-keys">>, _attrs, _els}.

'encode_teknorota_groupchat_update_group_keys_$keys'([],
                                                     __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_update_group_keys_$keys'([Keys
                                                      | _els],
                                                     __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_update_group_keys_$keys'(_els,
                                                         __TopXMLNS,
                                                         [encode_teknorota_groupchat_group_key(Keys,
                                                                                               __TopXMLNS)
                                                          | _acc]).

decode_teknorota_groupchat_update_group_keys_attr_id(__TopXMLNS,
                                                     undefined) ->
    <<>>;
decode_teknorota_groupchat_update_group_keys_attr_id(__TopXMLNS,
                                                     _val) ->
    _val.

encode_teknorota_groupchat_update_group_keys_attr_id(<<>>,
                                                     _acc) ->
    _acc;
encode_teknorota_groupchat_update_group_keys_attr_id(_val,
                                                     _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_group_key(__TopXMLNS, __Opts,
                                     {xmlel, <<"key">>, _attrs, _els}) ->
    Cdata =
        decode_teknorota_groupchat_group_key_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 <<>>),
    Jid =
        decode_teknorota_groupchat_group_key_attrs(__TopXMLNS,
                                                   _attrs,
                                                   undefined),
    {teknorota_groupchat_group_key, Jid, Cdata}.

decode_teknorota_groupchat_group_key_els(__TopXMLNS,
                                         __Opts, [], Cdata) ->
    decode_teknorota_groupchat_group_key_cdata(__TopXMLNS,
                                               Cdata);
decode_teknorota_groupchat_group_key_els(__TopXMLNS,
                                         __Opts, [{xmlcdata, _data} | _els],
                                         Cdata) ->
    decode_teknorota_groupchat_group_key_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             <<Cdata/binary, _data/binary>>);
decode_teknorota_groupchat_group_key_els(__TopXMLNS,
                                         __Opts, [_ | _els], Cdata) ->
    decode_teknorota_groupchat_group_key_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             Cdata).

decode_teknorota_groupchat_group_key_attrs(__TopXMLNS,
                                           [{<<"jid">>, _val} | _attrs],
                                           _Jid) ->
    decode_teknorota_groupchat_group_key_attrs(__TopXMLNS,
                                               _attrs,
                                               _val);
decode_teknorota_groupchat_group_key_attrs(__TopXMLNS,
                                           [_ | _attrs], Jid) ->
    decode_teknorota_groupchat_group_key_attrs(__TopXMLNS,
                                               _attrs,
                                               Jid);
decode_teknorota_groupchat_group_key_attrs(__TopXMLNS,
                                           [], Jid) ->
    decode_teknorota_groupchat_group_key_attr_jid(__TopXMLNS,
                                                  Jid).

encode_teknorota_groupchat_group_key({teknorota_groupchat_group_key,
                                      Jid,
                                      Cdata},
                                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_teknorota_groupchat_group_key_cdata(Cdata,
                                                      []),
    _attrs =
        encode_teknorota_groupchat_group_key_attr_jid(Jid,
                                                      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                 __TopXMLNS)),
    {xmlel, <<"key">>, _attrs, _els}.

decode_teknorota_groupchat_group_key_attr_jid(__TopXMLNS,
                                              undefined) ->
    <<>>;
decode_teknorota_groupchat_group_key_attr_jid(__TopXMLNS,
                                              _val) ->
    _val.

encode_teknorota_groupchat_group_key_attr_jid(<<>>,
                                              _acc) ->
    _acc;
encode_teknorota_groupchat_group_key_attr_jid(_val,
                                              _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_groupchat_group_key_cdata(__TopXMLNS,
                                           <<>>) ->
    erlang:error({xmpp_codec,
                  {missing_cdata, <<>>, <<"key">>, __TopXMLNS}});
decode_teknorota_groupchat_group_key_cdata(__TopXMLNS,
                                           _val) ->
    _val.

encode_teknorota_groupchat_group_key_cdata(_val,
                                           _acc) ->
    [{xmlcdata, _val} | _acc].

decode_teknorota_groupchat_group_updated(__TopXMLNS,
                                         __Opts,
                                         {xmlel,
                                          <<"group-updated">>,
                                          _attrs,
                                          _els}) ->
    Id =
        decode_teknorota_groupchat_group_updated_attrs(__TopXMLNS,
                                                       _attrs,
                                                       undefined),
    {teknorota_groupchat_group_updated, Id}.

decode_teknorota_groupchat_group_updated_attrs(__TopXMLNS,
                                               [{<<"id">>, _val} | _attrs],
                                               _Id) ->
    decode_teknorota_groupchat_group_updated_attrs(__TopXMLNS,
                                                   _attrs,
                                                   _val);
decode_teknorota_groupchat_group_updated_attrs(__TopXMLNS,
                                               [_ | _attrs], Id) ->
    decode_teknorota_groupchat_group_updated_attrs(__TopXMLNS,
                                                   _attrs,
                                                   Id);
decode_teknorota_groupchat_group_updated_attrs(__TopXMLNS,
                                               [], Id) ->
    decode_teknorota_groupchat_group_updated_attr_id(__TopXMLNS,
                                                     Id).

encode_teknorota_groupchat_group_updated({teknorota_groupchat_group_updated,
                                          Id},
                                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_group_updated_attr_id(Id,
                                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                    __TopXMLNS)),
    {xmlel, <<"group-updated">>, _attrs, _els}.

decode_teknorota_groupchat_group_updated_attr_id(__TopXMLNS,
                                                 undefined) ->
    <<>>;
decode_teknorota_groupchat_group_updated_attr_id(__TopXMLNS,
                                                 _val) ->
    _val.

encode_teknorota_groupchat_group_updated_attr_id(<<>>,
                                                 _acc) ->
    _acc;
encode_teknorota_groupchat_group_updated_attr_id(_val,
                                                 _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_update_group(__TopXMLNS,
                                        __Opts,
                                        {xmlel,
                                         <<"update-group">>,
                                         _attrs,
                                         _els}) ->
    Participants =
        decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                                    __Opts,
                                                    _els,
                                                    []),
    {Id, Name, Avatar} =
        decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                                      _attrs,
                                                      undefined,
                                                      undefined,
                                                      undefined),
    {teknorota_groupchat_update_group,
     Id,
     Name,
     Avatar,
     Participants}.

decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                            __Opts, [], Participants) ->
    lists:reverse(Participants);
decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                            __Opts,
                                            [{xmlel,
                                              <<"participant">>,
                                              _attrs,
                                              _} =
                                                 _el
                                             | _els],
                                            Participants) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                                        __Opts,
                                                        _els,
                                                        [decode_teknorota_groupchat_participant(<<"teknorota:xmpp:groupchat">>,
                                                                                                __Opts,
                                                                                                _el)
                                                         | Participants]);
        _ ->
            decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                                        __Opts,
                                                        _els,
                                                        Participants)
    end;
decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                            __Opts, [_ | _els], Participants) ->
    decode_teknorota_groupchat_update_group_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                Participants).

decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                              [{<<"id">>, _val} | _attrs], _Id,
                                              Name, Avatar) ->
    decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                                  _attrs,
                                                  _val,
                                                  Name,
                                                  Avatar);
decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                              [{<<"name">>, _val} | _attrs], Id,
                                              _Name, Avatar) ->
    decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Id,
                                                  _val,
                                                  Avatar);
decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                              [{<<"avatar">>, _val} | _attrs],
                                              Id, Name, _Avatar) ->
    decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Id,
                                                  Name,
                                                  _val);
decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                              [_ | _attrs], Id, Name, Avatar) ->
    decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                                  _attrs,
                                                  Id,
                                                  Name,
                                                  Avatar);
decode_teknorota_groupchat_update_group_attrs(__TopXMLNS,
                                              [], Id, Name, Avatar) ->
    {decode_teknorota_groupchat_update_group_attr_id(__TopXMLNS,
                                                     Id),
     decode_teknorota_groupchat_update_group_attr_name(__TopXMLNS,
                                                       Name),
     decode_teknorota_groupchat_update_group_attr_avatar(__TopXMLNS,
                                                         Avatar)}.

encode_teknorota_groupchat_update_group({teknorota_groupchat_update_group,
                                         Id,
                                         Name,
                                         Avatar,
                                         Participants},
                                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_teknorota_groupchat_update_group_$participants'(Participants,
                                                                              __NewTopXMLNS,
                                                                              [])),
    _attrs =
        encode_teknorota_groupchat_update_group_attr_avatar(Avatar,
                                                            encode_teknorota_groupchat_update_group_attr_name(Name,
                                                                                                              encode_teknorota_groupchat_update_group_attr_id(Id,
                                                                                                                                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                         __TopXMLNS)))),
    {xmlel, <<"update-group">>, _attrs, _els}.

'encode_teknorota_groupchat_update_group_$participants'([],
                                                        __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_update_group_$participants'([Participants
                                                         | _els],
                                                        __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_update_group_$participants'(_els,
                                                            __TopXMLNS,
                                                            [encode_teknorota_groupchat_participant(Participants,
                                                                                                    __TopXMLNS)
                                                             | _acc]).

decode_teknorota_groupchat_update_group_attr_id(__TopXMLNS,
                                                undefined) ->
    <<>>;
decode_teknorota_groupchat_update_group_attr_id(__TopXMLNS,
                                                _val) ->
    _val.

encode_teknorota_groupchat_update_group_attr_id(<<>>,
                                                _acc) ->
    _acc;
encode_teknorota_groupchat_update_group_attr_id(_val,
                                                _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_update_group_attr_name(__TopXMLNS,
                                                  undefined) ->
    <<>>;
decode_teknorota_groupchat_update_group_attr_name(__TopXMLNS,
                                                  _val) ->
    _val.

encode_teknorota_groupchat_update_group_attr_name(<<>>,
                                                  _acc) ->
    _acc;
encode_teknorota_groupchat_update_group_attr_name(_val,
                                                  _acc) ->
    [{<<"name">>, _val} | _acc].

decode_teknorota_groupchat_update_group_attr_avatar(__TopXMLNS,
                                                    undefined) ->
    <<>>;
decode_teknorota_groupchat_update_group_attr_avatar(__TopXMLNS,
                                                    _val) ->
    _val.

encode_teknorota_groupchat_update_group_attr_avatar(<<>>,
                                                    _acc) ->
    _acc;
encode_teknorota_groupchat_update_group_attr_avatar(_val,
                                                    _acc) ->
    [{<<"avatar">>, _val} | _acc].

decode_teknorota_groupchat_group_created(__TopXMLNS,
                                         __Opts,
                                         {xmlel,
                                          <<"group-created">>,
                                          _attrs,
                                          _els}) ->
    Id =
        decode_teknorota_groupchat_group_created_attrs(__TopXMLNS,
                                                       _attrs,
                                                       undefined),
    {teknorota_groupchat_group_created, Id}.

decode_teknorota_groupchat_group_created_attrs(__TopXMLNS,
                                               [{<<"id">>, _val} | _attrs],
                                               _Id) ->
    decode_teknorota_groupchat_group_created_attrs(__TopXMLNS,
                                                   _attrs,
                                                   _val);
decode_teknorota_groupchat_group_created_attrs(__TopXMLNS,
                                               [_ | _attrs], Id) ->
    decode_teknorota_groupchat_group_created_attrs(__TopXMLNS,
                                                   _attrs,
                                                   Id);
decode_teknorota_groupchat_group_created_attrs(__TopXMLNS,
                                               [], Id) ->
    decode_teknorota_groupchat_group_created_attr_id(__TopXMLNS,
                                                     Id).

encode_teknorota_groupchat_group_created({teknorota_groupchat_group_created,
                                          Id},
                                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_group_created_attr_id(Id,
                                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                    __TopXMLNS)),
    {xmlel, <<"group-created">>, _attrs, _els}.

decode_teknorota_groupchat_group_created_attr_id(__TopXMLNS,
                                                 undefined) ->
    <<>>;
decode_teknorota_groupchat_group_created_attr_id(__TopXMLNS,
                                                 _val) ->
    _val.

encode_teknorota_groupchat_group_created_attr_id(<<>>,
                                                 _acc) ->
    _acc;
encode_teknorota_groupchat_group_created_attr_id(_val,
                                                 _acc) ->
    [{<<"id">>, _val} | _acc].

decode_teknorota_groupchat_new_group(__TopXMLNS, __Opts,
                                     {xmlel, <<"new-group">>, _attrs, _els}) ->
    Participants =
        decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 []),
    {Name, Avatar} =
        decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                                   _attrs,
                                                   undefined,
                                                   undefined),
    {teknorota_groupchat_new_group,
     Name,
     Avatar,
     Participants}.

decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                         __Opts, [], Participants) ->
    lists:reverse(Participants);
decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                         __Opts,
                                         [{xmlel,
                                           <<"participant">>,
                                           _attrs,
                                           _} =
                                              _el
                                          | _els],
                                         Participants) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"teknorota:xmpp:groupchat">> ->
            decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                                     __Opts,
                                                     _els,
                                                     [decode_teknorota_groupchat_participant(<<"teknorota:xmpp:groupchat">>,
                                                                                             __Opts,
                                                                                             _el)
                                                      | Participants]);
        _ ->
            decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                                     __Opts,
                                                     _els,
                                                     Participants)
    end;
decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                         __Opts, [_ | _els], Participants) ->
    decode_teknorota_groupchat_new_group_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             Participants).

decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                           [{<<"name">>, _val} | _attrs], _Name,
                                           Avatar) ->
    decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                               _attrs,
                                               _val,
                                               Avatar);
decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                           [{<<"avatar">>, _val} | _attrs],
                                           Name, _Avatar) ->
    decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                               _attrs,
                                               Name,
                                               _val);
decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                           [_ | _attrs], Name, Avatar) ->
    decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                               _attrs,
                                               Name,
                                               Avatar);
decode_teknorota_groupchat_new_group_attrs(__TopXMLNS,
                                           [], Name, Avatar) ->
    {decode_teknorota_groupchat_new_group_attr_name(__TopXMLNS,
                                                    Name),
     decode_teknorota_groupchat_new_group_attr_avatar(__TopXMLNS,
                                                      Avatar)}.

encode_teknorota_groupchat_new_group({teknorota_groupchat_new_group,
                                      Name,
                                      Avatar,
                                      Participants},
                                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_teknorota_groupchat_new_group_$participants'(Participants,
                                                                           __NewTopXMLNS,
                                                                           [])),
    _attrs =
        encode_teknorota_groupchat_new_group_attr_avatar(Avatar,
                                                         encode_teknorota_groupchat_new_group_attr_name(Name,
                                                                                                        xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                   __TopXMLNS))),
    {xmlel, <<"new-group">>, _attrs, _els}.

'encode_teknorota_groupchat_new_group_$participants'([],
                                                     __TopXMLNS, _acc) ->
    _acc;
'encode_teknorota_groupchat_new_group_$participants'([Participants
                                                      | _els],
                                                     __TopXMLNS, _acc) ->
    'encode_teknorota_groupchat_new_group_$participants'(_els,
                                                         __TopXMLNS,
                                                         [encode_teknorota_groupchat_participant(Participants,
                                                                                                 __TopXMLNS)
                                                          | _acc]).

decode_teknorota_groupchat_new_group_attr_name(__TopXMLNS,
                                               undefined) ->
    <<>>;
decode_teknorota_groupchat_new_group_attr_name(__TopXMLNS,
                                               _val) ->
    _val.

encode_teknorota_groupchat_new_group_attr_name(<<>>,
                                               _acc) ->
    _acc;
encode_teknorota_groupchat_new_group_attr_name(_val,
                                               _acc) ->
    [{<<"name">>, _val} | _acc].

decode_teknorota_groupchat_new_group_attr_avatar(__TopXMLNS,
                                                 undefined) ->
    <<>>;
decode_teknorota_groupchat_new_group_attr_avatar(__TopXMLNS,
                                                 _val) ->
    _val.

encode_teknorota_groupchat_new_group_attr_avatar(<<>>,
                                                 _acc) ->
    _acc;
encode_teknorota_groupchat_new_group_attr_avatar(_val,
                                                 _acc) ->
    [{<<"avatar">>, _val} | _acc].

decode_teknorota_groupchat_participant(__TopXMLNS,
                                       __Opts,
                                       {xmlel,
                                        <<"participant">>,
                                        _attrs,
                                        _els}) ->
    {Jid, Type, Action} =
        decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                                     _attrs,
                                                     undefined,
                                                     undefined,
                                                     undefined),
    {teknorota_groupchat_participant, Jid, Type, Action}.

decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                             [{<<"jid">>, _val} | _attrs], _Jid,
                                             Type, Action) ->
    decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                                 _attrs,
                                                 _val,
                                                 Type,
                                                 Action);
decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                             [{<<"type">>, _val} | _attrs], Jid,
                                             _Type, Action) ->
    decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                                 _attrs,
                                                 Jid,
                                                 _val,
                                                 Action);
decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                             [{<<"action">>, _val} | _attrs],
                                             Jid, Type, _Action) ->
    decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                                 _attrs,
                                                 Jid,
                                                 Type,
                                                 _val);
decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                             [_ | _attrs], Jid, Type, Action) ->
    decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                                 _attrs,
                                                 Jid,
                                                 Type,
                                                 Action);
decode_teknorota_groupchat_participant_attrs(__TopXMLNS,
                                             [], Jid, Type, Action) ->
    {decode_teknorota_groupchat_participant_attr_jid(__TopXMLNS,
                                                     Jid),
     decode_teknorota_groupchat_participant_attr_type(__TopXMLNS,
                                                      Type),
     decode_teknorota_groupchat_participant_attr_action(__TopXMLNS,
                                                        Action)}.

encode_teknorota_groupchat_participant({teknorota_groupchat_participant,
                                        Jid,
                                        Type,
                                        Action},
                                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"teknorota:xmpp:groupchat">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_teknorota_groupchat_participant_attr_action(Action,
                                                           encode_teknorota_groupchat_participant_attr_type(Type,
                                                                                                            encode_teknorota_groupchat_participant_attr_jid(Jid,
                                                                                                                                                            xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                       __TopXMLNS)))),
    {xmlel, <<"participant">>, _attrs, _els}.

decode_teknorota_groupchat_participant_attr_jid(__TopXMLNS,
                                                undefined) ->
    <<>>;
decode_teknorota_groupchat_participant_attr_jid(__TopXMLNS,
                                                _val) ->
    _val.

encode_teknorota_groupchat_participant_attr_jid(<<>>,
                                                _acc) ->
    _acc;
encode_teknorota_groupchat_participant_attr_jid(_val,
                                                _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_teknorota_groupchat_participant_attr_type(__TopXMLNS,
                                                 undefined) ->
    <<>>;
decode_teknorota_groupchat_participant_attr_type(__TopXMLNS,
                                                 _val) ->
    _val.

encode_teknorota_groupchat_participant_attr_type(<<>>,
                                                 _acc) ->
    _acc;
encode_teknorota_groupchat_participant_attr_type(_val,
                                                 _acc) ->
    [{<<"type">>, _val} | _acc].

decode_teknorota_groupchat_participant_attr_action(__TopXMLNS,
                                                   undefined) ->
    <<>>;
decode_teknorota_groupchat_participant_attr_action(__TopXMLNS,
                                                   _val) ->
    _val.

encode_teknorota_groupchat_participant_attr_action(<<>>,
                                                   _acc) ->
    _acc;
encode_teknorota_groupchat_participant_attr_action(_val,
                                                   _acc) ->
    [{<<"action">>, _val} | _acc].
