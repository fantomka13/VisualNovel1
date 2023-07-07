//Chapter 2 (meeting Grandma)

=== Chapter2 ===
 #introductionmusic
 #backgroundfield1
 
 //Dialog with a cat.
 Several years passed.
 I dont know anymore if it was real or just a dream of a childe.
 Today is going to be a special day for me.My grandma is coming to pick me up. A few weeks ago i recived a letter where it says that i actualy have a family.
 Even if by family it just mean one person but its enough for me.
 She didnt said anything about my parents but i still have a hope that they might be alive.
 The last day i decided to spend at my favourit spot hoping to meet my only friend since Alexei...
 And here he is.
Victor "Hi, how are you doing today?
Cat "Miay Meeiay
Victor "Yes,I am going to miss you too but may be she will allow me to take you with us.
Cat "Miayaa Miay
    ->CatConversation1
    //Make his belly scratch
    ==CatConversation1
    *Scratch his belly
    He got a bit angry and tried to bite me.
    ~Cat = Cat - 1
->CatConversation2
    *Pet on the head
    He purred.
    ~Cat = Cat + 1
->CatConversation2
    
    ==CatConversation2
    *Play with him
    Even if he is grown up, he still playes like a kitten.
    **Use ctick to play with a cat
    I picked up a stick and strted swing it over head, watching how he bounces
->CatConversation3
    ** Use a hand to play with him.
    I used my hand to represent a spider, the cat jumped on it but without releasing his claws.
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
Grandma should be here soon, all what is left to do is to pack my staff, but what if she changes her mind about me.
I wonder what it would be like to have family. A real family that can support me and just be there for me.
When I was a kid I waited every day for my parents to come and now there may be a chance to see them.
Although the letter said nothing about them. 
// Looking for a letter.
->Looking_Letter

=== Looking_Letter
{Lookinletter <= 1:
Where the letter, by the way?
  *Look under the bed.
  ~ Lookinletter = Lookinletter+1
->Under_bed
  *Look on the table.
   ~ Lookinletter = Lookinletter+1
 ->On_Table 
 -else:
 *Check the windows.
 ->Window 
 }
== Under_bed
At first glance there was nothing under the bed.
I had to crawl even deeper into the darkness.
-> Bed_Loop
= Bed_Loop
{OrphaneBadLoop <= 1:
  *Check the left side.
  ~ OrphaneBadLoop = OrphaneBadLoop+1
   Nothing
->Bed_Loop
  *Check the right side.
  ~ OrphaneBadLoop = OrphaneBadLoop+1
   Nothing
->Bed_Loop
-else:
 *Continue Searching.
-> Nothing_Found
}
= Nothing_Found
Still nothing was found. There was a lot of dust.
But I decided to check again
And with my fingers I felt something, but it wasn't a letter.
It was moving.
#shake #scream
I quickly jumped out of the bad and started to shake my hand.
What a filth, there are mice again and where {Cat_Name} wanders. He just eats from the table and doesnt do his job.
->Looking_Letter
== On_Table
The table was such a mess.
A few books and wood which i used to try to carve figures, but failed.
The onlu useful thing here was the knife but i wouldnt need it right now
->Looking_Letter
== Window 
The sun was shining brightly outside the window, I hope this is a good sign. And here is my letter.
  **Read letter
  According to the letter it seems that she is quite strict and not very talkative. 
#grandmaletter
->GrandmaArrived
==GrandmaArrived
//Grandma arrived.
I didnt notice how a figure appeared behind me.She walked so quetly.I turned around and it was her, my grandma. She looked like i imagined her, very kind and soft.
Grandma "Hi darling, so you are Victor if im not wrong
Victor "Hi, yes, its me.
Grandma "My name is Vassilisa Petrova but dont be formal just call me grandma.
Victor "Okey, what about my parents?
Grandma "Ohh, I knew you are going to ask me this question. I am sorry, but i dont know where they are. One day they dissapired with you and i have nevere seen them again
Grandma " I am lucky that at least you was found.
*I am happy to be found too
Grandma "You will like your new home.
**How did you find me
My old friend was passing by and noticed you, you look like your father so mush, just a little copy of him and afdter doing a few checks i found out that your parents have been seen here a long time ago.
->OrphanDialogGrandma1
==OrphanDialogGrandma1
*Hug her
She was confused for a second and then hugged me back whithout asking any questions.
->OrphanDialogGrandma2
*Express gratitude
Grandma "My boy stop doing, we are family now.She came closer and hugged me.
->OrphanDialogGrandma2
==OrphanDialogGrandma2
Grandma "Okey, i am not going to distruct you anymore, puck your staff and go outside im going to wait you near horses.
Grandma "Do you have any questions to ask before we live.
*Can i take a {Cat_Name} with me
He is my cat and a good friend?
{ Cat == 3:
		-> CatOrphanage_Yes
	- else:
		-> CatOrphanage_No
	}

//Cat is nearby and going home with you
==CatOrphanage_Yes
Grandma "Darling do you mean this little cute creature?
{Cat_Name} was seating ready to go.Grandma came and picked him up. 
Grandma "He has such an intelligend eyes of course he is coming home with us.
Cat acepted it and let grandma take him to the carriege outside.

->Last_Preparation_Leaving
//Cat is no where to be found
==CatOrphanage_No
Grandma "But i dont see any cats.
Victor "He probably hiding somewhere.
Grandma "Dont worry if he really belongs to you he will find his home.
*Can i go to look for him.
Grandma "I am sorry its getting late and we have to be home by night.
Victor "Okey, then see you later.
->Last_Preparation_Leaving
==Last_Preparation_Leaving
#orphanroom
Now i have some time with myself before i leave this place forever.
I have to get my knife, the only thing which is left from my parents. 
Victor "Where is my knife?
#getknifeorphane

One i toched it my head got dizzy.
#musicdead
#rotatebedroom
The world started turning around me until i strted to see something in front of my eyes.
#horroryeys
#shakehorroryeys
Voice appered from nowhere. I think i heard it before but i cant remmember where.
Voice "You are getting closer to do the task which i prepared for you.
Victor "You are not real.Its just an illusion.
#shakehorroryeys
Voice "May be now its just an illusion but soon it will become very real.
Voice "When you arrive , visit me at my home.
Victor "I dont think going to the place to find a creepy voice is a safe idea.
Voice "You will come,You will not have choice. There are some answers which you dont need now but will need at the future.
#orphanroom
The illusion disappeared.
Victor "What if it was real.The voice didnt even tell me where to find him.Or may be its just stress and new emotions.
Its time to atrt a new life.

    -> END
->DONE