::
:: oger - a pack rat
::
/-  *oger, post, store=graph-store, *resource
/+  default-agent, dbug, *resource
::
|%
+$  versioned-state
    $%  state-zero
    ==
::
+$  state-zero  [%0 ser=(set resource)]
::
+$  card      card:agent:gall
+$  content   content:post
--
::
%-  agent:dbug
=|  state-zero
=*  state  -
^-  agent:gall
=<
::!.
|_  =bowl:gall
+*  this  .
    pax   /(scot %p our.bowl)/graph-store/(scot %da now.bowl)
    def   ~(. (default-agent this %|) bowl)
    hc    ~(. +> bowl)
::
++  on-init
  ^-  (quip card _this)
  ~&  >  [%oger %start]
  :_  this
  :~  :*
    %pass   /keys/oger/(scot %p our.bowl)
    %agent  [src.bowl %graph-store]
    %watch  /keys
  ==  ==
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  ole=vase
  ~&  >>  [%hello %hebrew %hamster]
  =/  old=versioned-state  !<(versioned-state ole)
  =/  drac=(list card)
    =+  /keys/oger/(scot %p our.bowl)
    ?:  (~(has in wex.bowl) [[- our.bowl %graph-store] [%.y /keys]])
      ~
    :~  :*
      %pass   /keys/oger/(scot %p our.bowl)
      %agent  [src.bowl %graph-store]
      %watch  /keys
    ==  ==
  ?-    -.old
      %0
    [drac this(state old)]
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?>  =(mark %oger-horde)
  =/  vaz  !<(horde vase)
  =^  cards  state
    ?-    -.vaz
        %printf
      =/  upd=update:store
        .^(update:store %gx (weld pax /keys/noun))
      ?+    -.q.upd  !!
          %keys
        ?.  (~(has in ser) res.vaz)
          ~&  >>>  [%no %resource]
          `state
        ~&  >>  [%found %resource]
        ~&  >>  [%prepare %printf]
        =+  ;:  weld  /graph  /(scot %p entity.res.vaz)
                /(scot %tas name.res.vaz)
              /noun
            ==
        =/  myn=update:store
          .^(update:store %gx (weld pax -))
        ?+    -.q.myn  !!
            %add-graph
          ~&  >  graph.q.myn
          `state
        ==
      ==
    ::
        %export
      ::  :graph-store &graph-update-3 [~2021.12.20..18.57.55..220c.49ba.5e35.3f7c [%add-nodes [~zod %transferred-post-6460] my-map]]
     =/  kez=update:store
        .^(update:store %gx (weld pax /keys/noun))
      ?+    -.q.kez  !!
          %keys
        ?.  (~(has in ser) res.vaz)
          ~&  >>>  [%no %resource]
          `state
        ~&  >  [%found %resource]
        ~&  >  [%started %export]
        =/  pux
          ;:  weld  /graph  /(scot %p entity.res.vaz)
              /(scot %tas name.res.vaz)
            /noun
          ==
        =/  myn=jam
          (jam .^(update:store %gx (weld pax pux)))
        ::  testing shit
        ~&  >>>  .^(update:store %gx (weld pax pux))
        ~&  >>   (jam .^(update:store %gx (weld pax pux)))
        ~&  >    ;;(update:store (cue (jam .^(update:store %gx (weld pax pux)))))
        =/  pox=path
          ;:  welp  /=oger=/hav
              [~.~.export-2.021.12.27-chat1-675 ~]
              /jam
          ==
        ::=/  urs=jam
        ::  .^(@ %cx pox)
        ::~&  >    (cue urs)
        ::
        =+  dat=(yore now.bowl)
        =/  jeff                                         ::  my name-a
          ;:  (cury cat 3)  'export-'
              `@t`(scot %ud y.-.dat)  '.'
              `@t`(scot %ud m.dat)    '.'
              `@t`(scot %ud d.t.dat)  '-'
              `@t`(scot %tas name.res.vaz)
          ==
        :_  state
        :~  :*
          %pass   `path`/test
          %agent  [our.bowl %hood]
          %poke   %drum-put
          !>([/(scot %ta jeff)/jam myn])
        ==  ==
      ==
    ::
        %import
      ~&  >  [%initiating %import]
      =/  urs=update:store
        ;;(update:store (cue .^(@ %cx fil.vaz)))
      ?+    -.q.urs  !!
          %add-graph
        =/  old=graph  graph.q.urs
        =/  new=(list card)
          (~(rep by old) ~(renu perk res.vaz))
        [new state]
      ==
    ==
  [cards this]
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+    -.sign  `this
      %kick
    =+  (slav %uv +<.wire)
    :_  this
    :~  :*
      %pass   /keys/oger/(scot %p our.bowl)
      %agent  [src.bowl %graph-store]
      %watch  /keys
    ==  ==
  ::
      %fact
    ?>  =(/keys/oger/(scot %p our.bowl) wire)
    ?.  ?=(%graph-update-3 p.cage.sign)
      `this
    =/  upd=update:store  !<(update:store q.cage.sign)
    ?+    -.q.upd  !!
        %keys
      `this(ser resources.q.upd)
    ==
  ==
::
++  on-arvo  on-arvo:def
++  on-fail  on-fail.def
++  on-peek  on-peek:def
++  on-leave  on-leave:def
++  on-watch  on-watch:def
--
::
|_  bol=bowl:gall
::
++  perk
  |_  sor=resource
  ++  renu
    |=  [in=[a=atom n=node] out=(list card)]
    %+  welp  out
    :~  :*
      %pass   /import/(scot %da now.bol)
      %agent  [our.bol %graph-store]
      %poke   %graph-update-3
      !>(`update:store`[`@da`a.in %add-nodes sor (my ~[[~[a.in] n.in]])])
    ==  ==
  --
--