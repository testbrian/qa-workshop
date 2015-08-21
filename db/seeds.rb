# %w(
#   0618640150 0451524934
#   1501100076 1501111671
#   1784351164 0786915897
#   0062429973 0804169209
# ).each do |isbn|
#   AmazonApiServices::FetchBook.call(isbn: isbn)
# end

arr = [
 {
  "author"=>"George Orwell",
  "title"=>"1984 (Signet Classics)",
  "description"=>
   "<b>View our feature on George Orwell’s <i>1984</i>.</b>Written in 1948, <i>1984</i> was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, Orwell’s narrative is timelier than ever. <i>1984</i> presents a startling and haunting vision of the world, so powerful that it is completely convincing from start to finish. No one can deny the power of this novel, its hold on the imaginations of multiple generations of readers, or the resiliency of its admonitions—a legacy that seems only to grow with the passage of time.",
  "cover"=>'http://ecx.images-amazon.com/images/I/31twj9hz1kL.jpg',
  "publishing_house"=>"Signet Classic",
  "published_at"=>Time.parse("Sat, 01 Jul 1950"),
  "quantity"=>4,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"Stephen King",
  "title"=>"Finders Keepers: A Novel",
  "description"=>
   "A masterful, intensely suspenseful novel about a reader whose obsession with a reclusive writer goes far too far—a book about the power of storytelling, starring the same trio of unlikely and winning heroes King introduced in <I>Mr. Mercedes</I>.<BR><BR>“Wake up, genius.” So begins King’s instantly riveting story about a vengeful reader. The genius is John Rothstein, an iconic author who created a famous character, Jimmy Gold, but who hasn’t published a book for decades. Morris Bellamy is livid, not just because Rothstein has stopped providing books, but because the nonconformist Jimmy Gold has sold out for a career in advertising. Morris kills Rothstein and empties his safe of cash, yes, but the real treasure is a trove of notebooks containing at least one more Gold novel.<BR> <BR>Morris hides the money and the notebooks, and then he is locked away for another crime. Decades later, a boy named Pete Saubers finds the treasure, and now it is Pete and his family that Bill Hodges, Holly Gibney, and Jerome Robinson must rescue from the ever-more deranged and vengeful Morris when he’s released from prison after thirty-five years.<BR> <BR>Not since <I>Misery</I> has King played with the notion of a reader whose obsession with a writer gets dangerous. <I>Finders Keepers</I> is spectacular, heart-pounding suspense, but it is also King writing about how literature shapes a life—for good, for bad, forever.",
  "cover"=>'http://ecx.images-amazon.com/images/I/515EOHP5KfL.jpg',
  "publishing_house"=>"Scribner",
  "published_at"=>Time.parse("Tue, 02 Jun 2015"),
  "quantity"=>3,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"J.R.R. Tolkien",
  "title"=>"The Lord of the Rings: 50th Anniversary, One Vol. Edition",
  "description"=>
   "This is a single-volume edition of J.R.R. Tolkien's Lord of the Rings trilogy, in which the hobbit Frodo and his elfish friends get swept up in a mighty conflict with the dark lord Sauron (who owes much to proud Satan in <I>Paradise Lost</I>), the monstrous Gollum, the Cracks of Doom, and the awful power of the magical Ring. The book's characters--good and evil--are recognizably human, and the realism is deepened by the magnificent detail of the vast parallel world Tolkien devised, inspired partly by his influential Anglo-Saxon scholarship and his Christian beliefs. (He disapproved of the relative sparseness of detail in the comparable allegorical fantasy his friend C.S. Lewis dreamed up in the Chronicles of Narnia, though he knew Lewis had spun a page-turning yarn.) It has been estimated that one-tenth of all paperbacks sold can trace their ancestry to J.R.R. Tolkien. But even if we had never gotten Robert Jordan's <I>The Path of Daggers</I> and the whole fantasy genre Tolkien inadvertently created by bringing the hobbits so richly to life, Tolkien's epic about the Ring would have left our world enhanced by enchantment. <I>--Tim Appelo</I> ",
  "cover"=>'http://ecx.images-amazon.com/images/I/51Nq%2Bl67AEL.jpg',
  "publishing_house"=>"Mariner Books",
  "published_at"=>Time.parse("Wed, 12 Oct 2005"),
  "quantity"=>1,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"Stephen King",
  "title"=>"The Bazaar of Bad Dreams: Stories",
  "description"=>
   "A master storyteller at his best—the O. Henry Prize winner Stephen King delivers a generous collection of stories, several of them brand-new, featuring revelatory autobiographical comments on when, why, and how he came to write (or rewrite) each story.<BR><BR>Since his first collection, <i>Nightshift</i>, published thirty-five years ago, Stephen King has dazzled readers with his genius as a writer of short fiction. In this new collection he assembles, for the first time, recent stories that have never been published in a book. He introduces each with a passage about its origins or his motivations for writing it.<BR> <BR>There are thrilling connections between stories; themes of morality, the afterlife, guilt, what we would do differently if we could see into the future or correct the mistakes of the past. “Afterlife” is about a man who died of colon cancer and keeps reliving the same life, repeating his mistakes over and over again. Several stories feature characters at the end of life, revisiting their crimes and misdemeanors. Other stories address what happens when someone discovers that he has supernatural powers—the columnist who kills people by writing their obituaries in “Obits;” the old judge in “The Dune” who, as a boy, canoed to a deserted island and saw names written in the sand, the names of people who then died in freak accidents. In “Morality,” King looks at how a marriage and two lives fall apart after the wife and husband enter into what seems, at first, a devil’s pact they can win.<BR> <BR>Magnificent, eerie, utterly compelling, these stories comprise one of King’s finest gifts to his constant reader—“I made them especially for you,” says King. “Feel free to examine them, but please be careful. The best of them have teeth.”",
  "cover"=>'http://ecx.images-amazon.com/images/I/51Ny3ySvTuL.jpg',
  "publishing_house"=>"Scribner",
  "published_at"=>Time.parse("Tue, 03 Nov 2015"),
  "quantity"=>3,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"Boleslaw Prus",
  "title"=>"Lalka (Volume 2) (Polish Edition)",
  "description"=>
   "Lalka is the second of four major novels by the Polish writer Bolesław Prus. It was composed for periodical serialization in 1887-89 and appeared in book form in 1890. The Doll has been regarded by some, including Nobel laureate Czesław Miłosz, as the greatest Polish novel. According to Prus biographer Zygmunt Szweykowski, it may be unique in 19th-century world literature as a comprehensive, compelling picture of an entire society. While The Doll takes its fortuitous title from a minor episode involving a stolen toy, readers commonly assume that it refers to the principal female character, the young aristocrat Izabela Łecka.",
  "cover"=>'http://ecx.images-amazon.com/images/I/51p4CmIu23L.jpg',
  "publishing_house"=>"JiaHu Books",
  "published_at"=>Time.parse("Fri, 02 Jan 2015"),
  "quantity"=>2,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"Margaret Weis, Tracy Hickman]",
  "title"=>"Dragons of Spring Dawning (Dragonlance Chronicles, Book 3)",
  "description"=>
   "The final installment in Weis and Hickman's Chronicles  series--Dragonlance's undisputed must-read trilogy--brings on the main event:  the Companions vs. the dragons in a knock-down drag-out at the iron works of Pax  Tharkas, as the fate of Krynn hangs in the balance. They've mastered the Orbs  and picked up the Dragonlance (see <I>Dragons of Winter Night</I>), and  things are looking pretty good with the return of the good metallic dragons. But  the band soon learns they must do battle with their own inner conflicts if they  ever hope to defeat the Dark Queen Takhisis. A bang-up conclusion to  Dragonlance's best-loved trilogy. <I>--Paul Hughes</I>",
  "cover"=>'http://ecx.images-amazon.com/images/I/51F8S3xuPXL.jpg',
  "publishing_house"=>"Wizards of the Coast",
  "published_at"=>Time.parse("Mon, 01 Nov 1999"),
  "quantity"=>1,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"Terry Pratchett",
  "title"=>"The Shepherd's Crown (Tiffany Aching)",
  "description"=>
   "<p>Terry Pratchett's final Discworld novel, and the fifth to feature the witch Tiffany Aching.</p><p>A SHIVERING OF WORLDS</p><p>Deep in the Chalk, something is stirring. ¬The owls and the foxes can sense it, and Tiffany Aching feels it in her boots. An old enemy is gathering strength.</p><p>This is a time of endings and beginnings, old friends and new, a blurring of edges and a shifting of power. Now Tiffany stands between the light and the dark, the good and the bad.</p><p>As the fairy horde prepares for invasion, Tiffany must summon all the witches to stand with her. To protect the land. <em>Her</em> land.</p><p>There will be a reckoning. . . .</p><p>THE FINAL DISCWORLD® NOVEL</p>",
  "cover"=>'http://ecx.images-amazon.com/images/I/51419-L6ZDL.jpg',
  "publishing_house"=>"HarperCollins",
  "published_at"=>Time.parse("Tue, 01 Sep 2015"),
  "quantity"=>2,
  "book_category_id"=>1,
  "borrowed_quantity"=>0},
 {
  "author"=>"Terry Pratchett",
  "title"=>"Raising Steam (Discworld)",
  "description"=>
   "<b>NATIONAL BESTSELLER <br><br>Steam is rising over Discworld. . . . </b><br>  <br> Mister Simnel has produced a great clanging monster of a machine that harnesses the power of all the elements—earth, air, fire, and water—and it’s soon drawing astonished crowds. To the consternation of Ankh-Morpork’s formidable Patrician, Lord Vetinari, no one is in charge of this new invention. Who better to take the lead than the man he has already appointed master of the Post Office, the Mint and the Royal Bank?<br>  <br> Moist von Lipwig is not a man who enjoys hard work—unless it is dependent on words, which are not very heavy and don’t always need greasing. He does enjoy being alive, however, which makes a new job offer from Vetinari hard to refuse. Moist will have to grapple with gallons of grease, goblins, a controller with a history of throwing employees down the stairs, and some very angry dwarfs if he’s going to stop it all from going off the rails.",
  "cover"=>'http://ecx.images-amazon.com/images/I/61jsO3IwgVL.jpg',
  "publishing_house"=>"Anchor",
  "published_at"=>Time.parse("Tue, 28 Oct 2014"),
  "quantity"=>2,
  "book_category_id"=>1,
  "borrowed_quantity"=>0}
]

fiction = BookCategory.create(name: 'Fiction')
fantasy = BookCategory.create(name: 'Fantasy')
horror = BookCategory.create(name: 'Horror')
categories = [fiction, fantasy, horror]
arr.each do |attrs|
  book  = Book.create(attrs.merge(book_category: categories.sample))
end
