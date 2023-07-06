//Chapter 2 (meeting Grandma)

=== Chapter2 ===
 #introductionmusic
 #backgroundfield1
 
 //Dialog with a cat.
 Several years passed.
 I dont know anymore if it was real or just a dream of a childe.
 Today is going to be a special day for me.My grandma is coming to pick me up. A few weeks ago i recived a letter where it says that i actualy have a family.
 Even if by family it just mean one person but its enough for me.
 She didnt said anything avout my parents but i still have a hope that they might be alive.
 The last day i decided to spend at my favorite spot hoping to meet my only friend since Alexei...
 And here he is.
Victor "Hi, how are you doing today?
Cat "Miay Meeiay
Victor "Yes,I am going to miss you too but may be she will allow me to take you with us.
Cat "Miayaa Miay
    ->CatConversation1
    
    ==CatConversation1
    *Scratch his belly
    He got a bit angry and tried to scratch me.
    ~Cat = Cat - 1
->CatConversation2
    *Pet on the head
    He purred.
    ~Cat = Cat + 1
->CatConversation2
    
    ==CatConversation2
    *Play with him
    **Use ctick to play with a cat
->CatConversation3
    ** Use a hand to play with him.
->CatConversation3

==CatConversation3
    Victor "May be one day you will tell me your name but or now i can call you
    *May be Potato whould suet you.
     ~Cat = Cat + 1
 ~Cat_Name = "Potato"
 ->CatConversation4
    *Arthur, like from the book.
 ~Cat_Name = "Arthur"
 ->CatConversation4
 
  ==CatConversation4
 Victor "I have to go home.See you later.
 {Cat_Name} "Miyau Mau
->PackingStaff
    
     // PACKING
==PackingStaff
    #orphanroom
Grandma should be here soon, all thats left to do is to pack my staff,
but what if she changes her mind about me.
I wonder what it would be like to have family. A real family that can support me and just be there for me.
When I was a kid I waited every day for my parents to come and now there may be a chance to see them.
Although the letter said nothing about them. 
// Looking for a letter.
->Looking_Letter

=== Looking_Letter
Where the letter, by the way?
  *Look under the bed.
->Under_bed
  *Look on the table.
 ->On_Table 
  *Check the windows.
  -> Window
== Under_bed
At first glance there was nothing under the bed.
I had to crawl even deeper into the darkness.
-> Bed_Loop
= Bed_Loop
  *Check the left side.
   Nothing
->Bed_Loop
  *Check the right side.
   Nothing
->Bed_Loop
  *Continue Searching.
-> Nothing_Found
= Nothing_Found
Still nothing was found. There was a lot of dust.
But I decided to check again
And with my fingers I felt something, but it wasn't a letter.
It was moving.
#shake #scream
I quickly jumped out of the bad and started to shake my hand.
What a filth, there are mice again and where this cat wanders. He just eats from the table and doesnt do his job.
->Looking_Letter
== On_Table
The table was such a mess.
A few books and wood which i used to try to carve figures, but failed.
The onlu useful thing here was the knife but i wouldnt need it right now
->Looking_Letter
== Window 
The sun was shining brightly outside the window, I hope this is a good sign. And here is my letter.
  *Read letter
  According to the letter it seems that she is quite strict and not very talkative. She was quick and factual.
#grandmaletter

Put it on the ground.
Hello.

    -> END
->DONE