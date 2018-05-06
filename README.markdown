This repository is a mirror of the mathematical proofs and related pages which were at http://www.wikiproofs.org/ as of the last update.

I updated it from time to time (using http://github.com/sbober/levitation-perl), but the wiki was the master. 

I think wikiproofs probably got few edits after the time of the last dump, but wikiproofs doesn't seem to be up as of 2018 so it is hard to say.

Being able to read the content as originally formatted
is probably doable but I haven't tried myself and don't have step
by step instructions. MediaWiki is as far as I know off the shelf,
JHilbert could probably be tracked down (disclaimer: it was never
fully debugged and I'd recommend metamath at this point if you want
to pick a prover in this family anew), and the MediaWiki JHilbert
plugin is probably still around if JHilbert is.

If that seems too hard, the files are text files which can be
browsed without any special tools (although you may end up
using search tools like grep or your favorite because the
MediaWiki navigation won't be there).

As for the content, there is a translation (from coq to JHilbert)
of an old version of the work which is now at
http://geocoq.github.io/GeoCoq/ , some intuitionistic
logic (by now probably surpassed by metamath's iset.mm), some
propositional and predicate logic (similar in scope to a portion
of the early parts of metamath's set.mm, but with some naming
conventions which I sort of liked), and maybe one or two other
things I'm forgetting now.
