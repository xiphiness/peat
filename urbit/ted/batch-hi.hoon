/-  spider
/+  strandio
=,  strand=strand:spider
|%
+$  ack  $@(%put [%hi =ship p=(unit tang)])
--
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
|^  ^-  form:m
=+  !<([~ ships=(list ship)] arg)
;<  =bowl:strand  bind:m  get-bowl:strandio
;<  ~  bind:m  (hi-ships ships)
=/  unacked  (silt ships)
=|  acked=(set ship)
=/  total  (lent ships)
=|  count=@ud
|-  ^-  form:m
=*  loop  $
;<  =ack  bind:m  take-ack
~&  ack
?-  ack
    %put
  loop
    [%hi *]
  =.  count  +(count)
  =.  unacked  (~(del in unacked) ship.ack)
  =.  acked  (~(put in acked) ship.ack)
  ~&  (crip "ack from {<ship.ack>} count {<count>} of {<total>}")
  ;<  ~  bind:m  (put /ships-acked/[tid.bowl]/jam (jam acked))
  ;<  ~  bind:m  (put /ships-unacked/[tid.bowl]/jam (jam unacked))
  ;<  ~  bind:m  (put /ship-acks/[tid.bowl]/txt (scot %ud count))
  ?.  =(count total)  loop
  (pure:m !>(~))
==
::
++  hi-ships
  |=  ships=(list ship)
  =/  m  (strand ,~)
  ^-  form:m
  =/  cards=(list card:agent:gall)
    %+  turn  ships
    |=  =ship
    ^-  card:agent:gall
    [%pass /hi/(scot %p ship) %agent [ship %hood] %poke %helm-hi !>('')]
  (send-raw-cards:strandio cards)
::
++  take-ack
  =/  m  (strand ack)
  ^-  form:m
  |=  tin=strand-input:strand
  ?+  in.tin  `[%skip ~]
      ~  `[%wait ~]
      [~ %agent * %poke-ack *]
    =/  wire  wire.u.in.tin
    ?+  wire  `[%skip ~]
        [%put ~]
      `[%done %put]
        [%hi @ ~]
      =/  =ship  (slav %p i.t.wire)
      `[%done [%hi [ship p.sign.u.in.tin]]]
    ==
  ==
::
++  put
  |=  [=path a=@]
  =/  m  (strand ,~)
  ^-  form:m
  ;<  =bowl:strand  bind:m  get-bowl:strandio
  =/  =card:agent:gall
    :*  %pass  /put  %agent
        [our.bowl %hood]  %poke  %drum-put
        !>([path a])
    ==
  (send-raw-card:strandio card)
::
--
