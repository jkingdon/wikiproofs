<pre>
$( This file shows that a conservative definition mechanism for a 
   metamath-style system must not allow certain kinds of definitions.
   In particular, you must not be able to define a constant which
   is equivalent to a bindable variable.  We show this by showing
   that the theory of set.mm is inconsistent (can prove anything)
   once you define a constant ` constx ` and define it to be ` x ` (which
   I take to mean that, given a theorem involving ` x `, you can
   derive a theorem replacing all occurrences of ` x ` with ` constx ` ).
   If I understand the proposed GHilbert definition mechanism, it
   would allow such a definition and is thus nonconservative.

   Note that instead of forbidding such definitions, it would also be
   possible to allow them but modify the disjoint-variable mechanism
   instead, to track usages of such "bad" constants.  I think that
   forbidding the definition is simpler. $)

$[ set.mm $]

$c constx $.

wconstx $a set constx $.

$( The theorems foo, bar, baz evidently cannot be proved with the proof
   assistant, but they can be proved by hand. $)
foo $p wff constx = 0 $= wconstx cv cc0 wceq $.
bar $p wff A. constx constx = 0 $= foo wconstx wal $.
baz $p wff A. constx -. constx = 0 $= foo wn wconstx wal $.

${

  $( A bad theorem that is the result of replacing ` x ` with ` constx `
     in ~ ax-17.  I believe could be derived using the proposed
     GHilbert definition mechanism, using the definition ` constx = x
     ` .  (The proof would consist simply of ~ ax-17 ; then the
     automatic definition-folder would reduce that to this theorem.)
     $)
  badth $a |- ( ph -> A. constx ph ) $.
$}

${
  $d x y $.
  badth2lem1 $p |- -. A. x x = 0 $=
    ( vy cv cc0 wceq wal c1 wsbc csb wn wne ax1ne0 df-ne mpbi cc wcel ax1cn 
    csbvarg ax-mp ax-17 csbconstgf eqeq12i mtbir wb sbceqdig bicomi notbii wi 
    a4sbc mto ) ACZDEZAFZULAGHZAGUKIZAGDIZEZJUNJUQGDEZGDKURJLGDMNUOGUPDGOPZUOGE
    QAGORSUSUPDEQABGDOBCDPATUASUBUCUQUNUNUQUSUNUQUDQAGUKDOUESUFUGNUSUMUNUHQULAG
    OUISUJ $.
    $( [?] $) $( [19-Feb-2010] $)
  badth2lem2 $p |- -. A. x -. x = 0 $= 
    ( cv cc0 wceq wn wal wsbc csb cc wcel 0cn csbvarg ax-mp wb sbceq1dig mpbir 
    notnoti sbcng mtbir wi a4sbc mto ) ABZCDZEZAFZUEACGZUGUDACGZEZUHUHACUCHCDZC
    IJZUJKACILMUKUHUJNKACUCCIOMPQUKUGUINKUDACIRMSUKUFUGTKUEACIUAMUB $.
    $( [?] $) $( [19-Feb-2010] $)
  $( Replace ` x ` with ` constx ` in ~ badth2lem1 . $)
  badth2lem3 $a |- -. A. constx constx = 0 $.
  $( Replace ` x ` with ` constx ` in ~ badth2lem2 . $)
  badth2lem4 $a |- -. A. constx -. constx = 0 $.
  badth2lem5 $p |- -. constx = 0 $=
    ( foo bar badth2lem3 badth mto ) ABCADE $.
    $( [?] $) $( [19-Feb-2010] $)
  badth2lem6 $p |- constx = 0 $= 
    ( foo wn baz badth2lem4 badth mto notnotri ) AABZCDHEFG $.
    $( [?] $) $( [19-Feb-2010] $)
  badth2 $p |- ph $=
    ( foo badth2lem6 badth2lem5 pm2.21i ax-mp ) BACBADEF $.
    $( [?] $) $( [19-Feb-2010] $)
$}
</pre>