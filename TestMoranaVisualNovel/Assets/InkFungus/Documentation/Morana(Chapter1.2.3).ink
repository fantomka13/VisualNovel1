//Variables
//main
VAR Fight_Skill = 0
VAR Knoweledge = 0
VAR Mushroom = 0
VAR VictorMonster = 0
VAR VictorHuman = 0
//Chapter1
VAR Alexei = 0
VAR AlexeiLife = true
VAR Light = 0
VAR Maze = 0
//Chapter 1.1 (introduction)
#backgroundfield1

->InsideCave
=== Chapter1 ===
#introductionmusic
This happened five years before the main events. 
Back then, I couldn't imagine what is going to happen to me and the terrible truth about myself that I would have to uncover, the choices I would have to make.
It all started in a small shelter where many children ended up being because they lost their parents during the war.
That morning turned out to be surprisingly good. We were eating our favorite food-potatos,when we started playing with it and been keaked out to stay outside.
Suddenly, Alexei "Hey, catch!" 
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
But Alexei wasn't afraid of getting into trouble. How many times were we left without dinner, but we were happy anyway.
And we are, the most active ones, were assigned to go to the forest to pick mushrooms so that we wouldn't get in the way.
* Go to the forest.
->ForestMushroom
== ForestMushroom ==
#backgroundforestmashroom
#forestnoice
I don't know why but the forest is truly an amazing place; I would say it feels like... 
home.
Alexei "Viktor, do you think there are wolves here?
*Of course, there are wolves here
Alexei knew i was joking but looked around just in case.
->RunningAway
*Are you scared of them?
~Alexei = Alexei - 1
Vladimir smiled" Hah do u really think i would be scared of puppies.
->RunningAway
 *No, if they were here, they would have already eaten someone as loud as you,
Vladimir" No, They probably noticed your horrible smell and run away.
~Alexei = Alexei + 1
  **Show a tongue.
->RunningAway
  **Through the stick at him

->RunningAway

==RunningAway
Alexei "Well, this place is so boring that doesnt even have wolfs, what about running away from here and going to the bigger village or even city? 
Im sure the life is going to be more interesting there than here just wandering between these three houses. 
Alexei "I dream of becoming a blacksmith,and here we dont have anyone to teach me. Only old farmers left here.This ploace is dying.
  *We can try in a couple of years? 
  Victor "When we grow up.
->NotTryRunAway
  *what's the point? 
They won't even hire us to clean the barn, and you're talking about actual job.
->NotTryRunAway
  *Yee lets do it tomorrow.
  Vladimir" I dont know about tommorow, i promised one grandma to help her to find her dog this week.
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


While I was collecting mushrooms, I heard Alexeys scream.
I started to worry about him getting into troubles.
*Run to check on him.
->CaveEntrance
Snee


//Chapter1.2 (Cave)
=== CaveEntrance ===

It turned out to be a scream of joy.
He was standing in front of the entrance to a cave, which wasn't so easy to notice behind the bushes. It was the first time I saw it, although we had walked here several times
before. Although, perhaps we just passed by without paying attention. In any case, it was clear from Alexei's face that he was going to enter it.
Alexei "Well, are you ready for an adventure?
+ Yes,of course.
"Whoever is last has to clean the room!" I shouted, and I was the first to enter the cave.
->InsideCave
Alexei ran after me
+ May be its better to go there another time.
I just don't want to miss lunch while we wander around.
Alexei "What if no one has been in this cave before us and take all the treasures that are buried here, like in that books we have been reading?"
->InsideCave

==InsideCave==
#backgroundcaveentrance
#musiccaveadventure
The two of us entered the cave. Inside, it was magical, covered in moss and other plants I didn't know.
But the further we went, the less light penetrated until we found ourselves in complete darkness.
Holding onto the wall, we continued moving forward, listening to each other's footsteps and trying not to get lost.
Suddenly, a flickering light appeared in the distance.
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
I stared at it and didn't notice that Vladimir wasn't next to me anymore.
->ShoutAlexei
=ShoutAlexei
  + Shout for Vladimir.
  After the fourth shout, my voice became hoarse, and I couldn't do it anymore.
->ShoutAlexei
  + Go to look for him.
->InsideMaze
=InsideMaze
I was walking for a while until noticed fork in the road.I knew i coulod get lost but the idea of not finding Alexei terrified me.
Choosing a way to go
->Maze1

==Maze1
#caveturn1
~ Maze=Maze+1
{ Maze <10:
Maze1
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
#caveturn2
~ Maze=Maze+1
{ Maze <10:
Maze2
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
{ Maze <100:
Maze3
+Climb up
->Maze16
+Going right
->Maze1
	- else:
	     
		-> MazeExit
	}
==Maze4
#caveturn1
Maze4
~ Maze=Maze+1
{ Maze <100:
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
{ Maze <100:
Maze5
+Turning left
->Maze4
+climb up
->Maze6
	- else:
	     
		-> MazeExit
	}
==Maze6
#caveturn2
~ Maze=Maze+1
{ Maze <100:
Maze6
+Turning left
->Maze7
+Climb down
->Maze5
	- else:
	     
		-> MazeExit
	}
==Maze7
#caveturn1
~ Maze=Maze+1
{ Maze <100:
Maze7
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
{ Maze <100:
Maze8
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
{ Maze <100:
Maze9
+Turning right
->Maze8
+climb up
->Maze13
+Turning left
->Maze10
+Climb down
->Maze4
	- else:
	     
		-> MazeExit
	}
==Maze10
#caveturn2
~ Maze=Maze+1
{ Maze <100:
Maze10
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
{ Maze <100:
Maze11
+Turning left
->Maze13
+Turning right
->Maze12
	- else:
	     
		-> MazeExit
	}
==Maze12
#caveturn1


	     
-> MazeExit
	
==Maze13
#caveturn2
~ Maze=Maze+1
{ Maze <100:
Maze13
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
{ Maze <100:
Maze14
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
{ Maze <100:
Maze15
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
{ Maze <100:
Maze16
+Turning left
->Maze16
+Turning right
->Maze4
+Climb up
->MazeSecretRoom
	- else:
	     
		-> MazeExit
	}

==MazeSecretRoom
The walls had a scratched map of the cave; surely someone had managed to escape from here.

*Examine the map.

->MazeSecretRoom
*Examine the bones
The bones were new and probably belonged to dog. It meant that any predator left this place not a long time ago.
~ Maze=Maze+1
{ Maze <10:
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
I heard a menacing hiss, and before me unfolded a horrifying scene. At that moment, I regretted that agreed to vladimirs idea to come here.
I intended to run back instantly, but the creature standing ahead noticed me and started approaching.
*Stand still
I was too scared to even move my finger.The creature turned his head towords me.
Creature"DO NOT MOVE!
The creature nput his clowes on Vladimirs neck
->SaveAlexei
*Run away
I tried to turn around but the moment i moved the creature shouted at me.
Dont move or i would rippe YOU apart
->SaveAlexei

==SaveAlexei
The creature was getting his mouth closer and closer. Alexei could hold himself anymore and started screaming.
*Stand and watch.
He started eating him slowly
  **Stand and watch
Alexei stopted screaming. Because of all blood i couldnt see his face.
   ***Stand and watched
The creature finished eating and came closer
Good boy. Now i will show you the exit. Next time when u will come here dont forget to bring your friends.
Victor"Why u didnt kill me.
Creature laughed
Creature"Hah so you dont know,then its not my job to tell u but one day u will understand 
->ExitingCave
   ***Run
I tried to run but it was alredy too late. Monster already finished with Alexei and jumped on top of me bringing his claws.
Creature"Stupid boy what did i tald you.
   **** Start crying
Creature looked at me with disgust and stabed.
I fell into darkness.
->VictorDied
   **** Try to fight
I tried to hit him with a stoun in my hand but it didnt work. He just lought at my face.
Creature" For now i will forgive you as you are just a child but if we meet at the future leasten to me or would end up on the another side.
Now im goimg to show you the exit.
->ExitingCave
  **Run
I started running as fast as i could while the creature was busy eating my friend even if i wanted to help i couldnt thats how im going to confort myself for the next years, his scream is going to follow me in my nightmares
->ExitingCave

//First Option
*Run
I started runniing as fast as i could but the creature noticed me immediately and attacked.
He was pushing me to the ground i could feel how his clowes goes deeper into mu body.
->DmitriyHelp

->DmitriyNotHelp

==DmitriyHelp
I was ready to die 
When suddenly i saw how dmitriy try to attack monster from behind.
->ExitingCave

==DmitriyNotHelp
I was looking around in hope that Alexei is going to save me but he disappeared. He left me alone with this creature.May be i deserve it.


*Attempt to help.
->END
==ExitingCave





->END
=== VictorDied ===
    -> END
    
    
    
    
    
