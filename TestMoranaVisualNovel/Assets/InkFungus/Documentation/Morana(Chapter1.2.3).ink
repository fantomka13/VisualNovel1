//Variables
//main Victor
VAR Fight_Skill = 0
VAR Knoweledge = 0
VAR VictorMonster = 0
VAR VictorHuman = 0

//Reletionship
//Alexei
VAR Alexei = 0
VAR AlexeiLife = true
//Grandma 
 
 
//Chapter1
VAR Light = 0
VAR Maze = 0
VAR Mushroom = 0
VAR VoiceQuestions = 0
VAR MonsterQuestions = 0
VAR MonsterCave = 0

//Chapter 1.1 (introduction)
#backgroundfield1

->MazeExit
=== Chapter1 ===
#introductionmusic
This happened five years before the main event. 
Back then, I couldn't imagine what is going to happen to me and the terrible truth about myself that I would have to uncover, the choices I would have to make.
It all started in a small shelter. After the war many children ended up being left alone, so places like this was build.
This morning turned out to be surprisingly good. We were eating our favorite food-potatos,then we started playing with it and got keaked out of the dining room to stay outside.
Suddenly,
Alexei "Hey, catch!" 
  + catch
  U look at it closer
~Alexei = Alexei + 1
-> Apple
  + evade
  U look at something near your feet.
~Alexei = Alexei - 1
-> Apple
==  Apple ==
It turned out to be an apple that he had picked from the nearest tree.It had just ripened and was slightly sour but delicious.
Overall, I liked Alexei more than the other boys. The others often whined and cried, immediately running to complain to adults. 
But Alexei wasn't afraid of getting into trouble. How many times we were left without dinner, but we were happy anyway.
And as a puneshment we were assigned to go to the forest to pick mushrooms so that we wouldn't get in the way working people.
* Go to the forest.
->ForestMushroom
== ForestMushroom ==
#backgroundforestmashroom
#forestnoice
I don't know why but the forest is truly an amazing place; I would say it feels like... 
home.
Alexei "Viktor, do you think any wolfs live here?
*Of course, there are wolves here
Alexei knew i was joking but looked around just in case.
->RunningAway
*Are you scared of them?
~Alexei = Alexei - 1
Vladimir smiled" Hah do u really think i would be scared of puppies.
->RunningAway
 *No, if they were here, they would have already eaten someone as loud as you,
Alexei "No, They probably noticed your horrible smell and run away.
~Alexei = Alexei + 1
  **Show a tongue.
->RunningAway
  **Through the stick at him

->RunningAway

==RunningAway
Alexei "Well, this place is so boring that doesnt even have wolfs, what about running away from here and going to the bigger village or even city? 
Alexei "Im sure the life is going to be more interesting there then at the goden forgotten place where we can only wandering between these three houses. 
Alexei "I dream of becoming a blacksmith,and here we dont have anyone to teach me. Only old farmers left here.This ploace is dying.
  *Victor "We can try in a couple of years? 
  Victor "When we grow up.
->NotTryRunAway
  *Victor "what's the point? 
They won't even hire us to clean the barn, and you're talking about actual job.
->NotTryRunAway
  *Victor "Yee lets do it tomorrow.
  ~Alexei = Alexei + 1
  Alexei "I dont know about tommorow, i promised one grandma to help her to find her dog this week.
->TryRunAway

==TryRunAway
  *What happened with a dog?
 Alexei " A couple days ago the dog disappeared. He never run away before and grandma worries that something could have happened.
 ->MushroomCollection
  
  *Forget about it.
  Alexei " Dont say such stupid staff. That grandma doesnt have anyone to help her.
  ->TryRunAway
  
==NotTryRunAway
Alexei "Why are you so boring today.I just wanted to dream.
->MushroomCollection

//Create a mini game for collecting mashrooms
=== MushroomCollection ===
So, after our pointless conversation, we arrived at the mushroom clearing.
Collect mushrooms.
*@collect
->ContinueCave

==ContinueCave
While I was collecting mushrooms, I heard Alexeys scream.
I started to worry about him getting into troubles.
*Run to check on him.
~Alexei = Alexei + 1
->CaveEntrance
*Steal up
->CaveEntrance

//Chapter1.2 (Cave)
=== CaveEntrance ===
#caveappears
It turned out to be a scream of joy.
He was standing in front of the entrance to a cave, which wasn't so easy to notice behind the bushes. It was the first time I saw it, although we had walked here several times before.
Perhaps we just passed by without paying attention. In any case, it was clear from Alexei's face that he was going to enter it.
Alexei "Well, are you ready for an adventure?
+ Yes,of course.
"Try to cath up with me!" I shouted, and  was the first one to enter the cave.
->InsideCave
Alexei ran after me
+ May be its better to go there another time.
I just don't want to miss lunch while we wander around.
Alexei "What if no one has been in this cave before us and take all the treasures that are buried here, like in that books we have been reading?"
->InsideCave

==InsideCave==
#backgroundcaveentrance
#musiccaveadventure
The two of us entered the cave. Inside, it was magical, the walls covered in moss and other plants I didn't know existed.
But the further we went, the less light penetrated until we found ourselves in complete darkness.
Holding onto the wall, we continued moving forward, listening to each other's footsteps and trying not to get lost.
Suddenly, a flickering light appeared in the distance.

//Game to try to get the light.
->LightCave
=LightCave
+Look at the light
~ Light=Light+1
The light hypnotized me, i couldnt take away my eyes from it
{ Light == 3:
		-> CaveMaze
	- else:
		-> LightCave
	}

//Maze game starts
==CaveMaze==
I stared at it and didn't notice that Alexei wasn't next to me anymore.
->ShoutAlexei
=ShoutAlexei
  * Shout for Alexei.
  After the fourth shout, my voice became hoarse, and I couldn't do it anymore.
->ShoutAlexei
  + Go to look for him.
->InsideMaze
=InsideMaze
I was walking for a while until noticed fork in the road.I knew i could get lost but the idea of not finding Alexei terrified me.
->Maze1

==Maze1
#caveturn1
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+Turning left
->Maze3
+Turning right
->Maze2
+Climb up
->Maze4 
	- else:
	     
		-> MazeExit
	}
==Maze2
#caveturn1
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+Turning left
->Maze1
+Climb down
There is the hole in yhe floor im turning Back
->Maze2
+Climb up
->Maze7
	- else:
	     
		-> MazeExit
	}
==Maze3
#caveturn2
~ Maze=Maze+1
Look around
+Climb up
->Maze16
+Going right
->Maze1

==Maze4
#caveturn1
Look around
~ Maze=Maze+1
{
-Maze <9:
+Turning left
->Maze16
+Turning right
->Maze5
+Climb up
->Maze9
+Climb down
->Maze1
	- else:
	     
		-> MazeExit
	}
==Maze5
#caveturn2
~ Maze=Maze+1
Look around
+Turning left
->Maze4
+climb up
->Maze6

==Maze6
#caveturn2
~ Maze=Maze+1
Look around
+Turning left
->Maze7
+Climb down
->Maze5

==Maze7
#caveturn1
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+Turning right
->Maze6
+Climb up
->Maze8
	- else:
	     
		-> MazeExit
	}
==Maze8
#caveturn1
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+climb up
->Maze12
+climb down
->Maze7
+turning left
->Maze9
	- else:
	     
		-> MazeExit
	}
==Maze9
#caveturn2
~ Maze=Maze+1
Look around
+Turning right
->Maze8
+climb up
->Maze13
+Turning left
->Maze10
+Climb down
->Maze4

==Maze10
#caveturn1
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+Turning right
->Maze9
+Climb down
->MazeSecretRoom
	- else:
	     
		-> MazeExit
	}
==Maze11
#caveturn2
~ Maze=Maze+1
Look around
+Turning left
->Maze13
+Turning right
->Maze12

==Maze12
#caveturn1


	     
-> MazeExit
	
==Maze13
#caveturn2
~ Maze=Maze+1
{
-Maze <9:
Look around
+Turning right
->Maze11
+climb up
->Maze14
+Climb down
->Maze9
	- else:
	     
		-> MazeExit
	}
==Maze14
#caveturn2
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+Turning left
There is the wall im coming back
->Maze14
+Climb down
->Maze13
+Turning right
->Maze15
	- else:
	     
		-> MazeExit
	}
==Maze15
#caveturn2
~ Maze=Maze+1
{ 
-Maze <9:
Look around
+Turning left
->Maze14
+Climb down
->Maze12
+Going streight
->Maze15
	- else:
	     
		-> MazeExit
	}
==Maze16
#caveturn2
~ Maze=Maze+1
Look around
+Turning left
->Maze16
+Turning right
->Maze4
+Climb up
->MazeSecretRoom


==MazeSecretRoom
The walls had a scratched map of the cave; surely someone had managed to escape from here.

*Examine the map.

->MazeSecretRoom
*Examine the bones
The bones were new and probably belonged to dog. It meant that any predator left this place not a long time ago.
~ Maze=Maze+1
{ 
-Maze <10:
+Turning right
->Maze10
+Climb down
->Maze16
	- else:
	     
		-> MazeExit
	}
	
	// Monster fight
==MazeExit==

Continuing on my path,I finaly heard something.
#cavemazeroom
#musiccavemonster
I heard a menacing hiss, and in front of me unfolded a horrifying scene. At that moment, I regretted that agreed to the idea to come here.
I intended to run back instantly, before the creature noticed me.
#monsterspawn
*Stand still
I was too scared to even move my finger.The creature turned his head towords me.
Creature "DO NOT MOVE!
The creature put his clowes on Alexeys neck
->SaveAlexei
*Run away
~Alexei = Alexei - 1
I tried to turn around but the moment i moved the creature shouted at me.
Creature "Dont move or i would rippe YOU apart
->SaveAlexei
*Help Alexei.
~Fight_Skill = Fight_Skill + 1
~VictorHuman = VictorHuman + 1
~Alexei = Alexei + 1
I couldnt stay and watch how my friend dying so I used all my strength and hit the monster with a stone which i found.
#monsterspawn
It helped for a second but the creature jumped on me, moving his teeth to my neck.
->SecondAttempHelp

==SaveAlexei
The monster was getting his mouth closer and closer to Alexei, he couldnt hold himself anymore and started screaming.
->FirstAttempWatch
=FirstAttempWatch
*Stand and watch.
He started eating him slowly
->SecondAttempWatch
*Attempt to help.
~Fight_Skill = Fight_Skill + 1
~VictorHuman = VictorHuman + 1
Putting all my fear away i started running towards monster but he easily pushed me away. I flew into the wall. When i was no longer a hindrance for him, the creature continued killing my friend. 
I started crying because i didnt know what to do.
->SecondAttempWatch
*Run
I started running as fast as i could but the creature noticed me immediately and attacked.
He was pushing me to the ground i could feel how his clowes goes deeper into my body.
#monsterspawn
->SecondAttempHelp
=SecondAttempWatch
 *Stand and watch
Alexei stopted screaming. Because of the blood i couldnt see his face.
->ThirdAttempWatch
 *Run
 ~Alexei = Alexei - 1
 ->SecondAttempRun
  
  =ThirdAttempWatch
  ~AlexeiLife = false
   *Stand and watch
The creature finished eating and came closer
#monsterspawn
Creature "Good boy. Now i will show you the exit. Next time when you come here dont forget to bring your friends.
Victor "You dont want to kill me?
Creature laughed
Creature "Hah so you dont know,then its not my job to tell u but one day u will understand 
Creature "Now i am going to bring you to the exit.
->ExitingCaveMonster

   *Run
I tried to run but it was alredy too late. Monster already finished with Alexei and jumped on top of me bringing his claws.
#monsterspawn
Creature "Stupid boy what did i tald you.

   **Start crying
Creature looked at me with disgust and stabed.
I fell into darkness.
#monsterdestroy
->VictorDied1
   ** Try to fight
   ~Fight_Skill = Fight_Skill + 1
I tried to hit him with a stoun in my hand but it didnt work. He just lought at my face.
Creature" For now i will forgive you as you are just a child but if we meet at the future leasten to me or would end up on the another side.
Now im goimg to show you the exit.
->ExitingCaveMonster

 =SecondAttempRun
I started running as fast as i could while the creature was busy eating my friend even if i wanted to help i couldnt thats how im going to confort myself for the next years, his scream is going to follow me in my nightmares
->ExitingCave

//Victor and Alexei fighting together or not.
=== SecondAttempHelp ===
{ 
-Alexei <=0:
->DmitriyNotHelp
	- else:
	     
		-> DmitriyHelp
	}

==DmitriyHelp
I was ready to die 
When suddenly i saw how dmitriy try to attack monster from behind. He distructed hom enough. I wanted to help him.
Alexei "Run and ask for help,dont worry about me.
And i started running towards the exit leaving my friend alone.
->ExitingCave

==DmitriyNotHelp
I was looking around in hope that Alexei is going to save me but he disappeared. He left me alone with this creature.May be i deserve it. Monster was looking at me and loughed.
Creature "You human beings are so interesting.You come here to save your friend but ended up the one dying here.
Victor "It doesnt metter at least Alexei will survive.
Creature "Not for long time once i finish with you, I am planning to find him. No one can escape or enter this place without my permission.
Creature "So what should I do whith you, little boy?
*Please do not kill me.
Creature "You look so pathetic, may be i should disobey and kill you
Suddenly a voice whispered in the air.
Voice "Do it and the next 100 years you would spend whithout going outside.
Creature "I was just playing with him of course i wouldnt touch your boy. Im going to bring him to the exit.
->ExitCaveMonster

*I dont care.
Creature "If you say so...
Everything suddenly become dark
#monsterdestroy
->VictorDied1

->ExitingCave

=== ExitingCave ===
//Ending 1 exiting the cave alone
#sadmusic1
#backgroundforestmashroom
I finally manged to escape even though i had no strength to move i still forced myself to go forward to find someone to help there was still hope that Alexei was alive.
But when we returned the cave was gone as it have never been here.
I sat down on my knees and started crying
imagining how Alexei felt when his best friend abandoned him in such situation.
->END


// Ending 2 exiting the cave with monster
==ExitingCaveMonster
#sadmusic1
#caveturn2
As he led me to the exit, my legs kept shaking.
But the creature looked like he really didnt want to hurt me. He acted like nothing happened like he didnt just killed my friend in front of me.
*Can i ask you one question?
Creature "Yes but only one.
-> AskMonsterQuestion
== AskMonsterQuestion
{
- MonsterQuestions <=1:
*Is there more monsters like your?
~Knoweledge = Knoweledge + 1
Creature "Ohh yes, there is a lot different leaving or dead creature which u cant even imagine so be careful around and look at the shadows. Sometimes they can tell you a lot about a person in front of u.
~MonsterQuestions = MonsterQuestions + 1
->AskMonsterQuestion

*Did you knew my parents?
Victor "You sound like you know something about me, may be you know something about my family too.
~MonsterQuestions = MonsterQuestions + 1
->AskMonsterQuestion

  -else:
*Why did you killed my friend?
~Knoweledge = Knoweledge + 1
I guess you eat meet or chiken sometimes and i get hungry too. I want to live but it just happened that my diet is different from yours. One day u will understand.
**I understand
~VictorMonster = VictorMonster + 1
Creature "I knew you are a smart boy. Good that i actualy didnt eat you.
Victor "I understand you but not forgive you. Whenb i grow up i will kill you.
Creature "Ahahha, im going to wait for that moment but u need to survive until that day first.
->ExitCaveMonster
**I will never understand.
~VictorHuman = VictorHuman + 1
Victor "He was my best friend and he was a Human. You had a choice. You could have eaten an animal but...
Victor "I will never forgive you that.When I will be alder i will come back and kill you.
Creature "Ahahah, i dont think you will be alive by that point.
#monsterdestroy

->ExitCaveMonster
}

==ExitCaveMonster
#backgroundforestmashroom
Once I was outside i relized how tired i was and immediately fell asleep right on the ground.When i woke up there was no monster or cave. 
I walked back to the shelter. Of course no one belived my story and after a few years i stoped belive in it too. Like it was a weird dream.

->END

// Ending 3 where Victor dies.

=== VictorDied1 ===
#musicdead
#backgrounddead
Everything become dark. I couldnt feel pain anymore jusr freedom of my soul. I have nothing to worry about but nothing to be happy too.
Suddenly voice from nowhere whispered.
Voice "I was expecting you much later.
->FirstQuestionVoice
==FirstQuestionVoice
{
- VoiceQuestions <=1:
*Who are you?
Voice "I am the night itself but dont think too much into it.One day we are going to meet in person.
~VoiceQuestions = VoiceQuestions + 1
->FirstQuestionVoice
*Where am i?
You are between two dimentions. Your simple human mind can not process it anyway
~VoiceQuestions = VoiceQuestions + 1
->FirstQuestionVoice

 -else:
*Did i died?
~Knoweledge = Knoweledge + 1
Voice "Unfortunately yes, that idiot didnt listen to my warnings. For him better not show up in front of me for the next 100 years.
Voice "Anyway, I do not allow you to die yet.
Voice "COME BACK TO YOUR BODY!
I started to feel gravity again and slowely all my feelings come back. But with them, also realisation that i will never see Alexei again.
#backgroundforestmashroom
I run as quick as i could to tell adults about it.
But when we come back the cave was gone like it never existed. Everyone assumed that Alexei just run away and i created a fantasy story. 
A few yaers later i started to think like this too. I just assumed it was all my dream.
    -> END
    }
    
    ->DONE
    
    
    
    
