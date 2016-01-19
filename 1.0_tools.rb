# Mordheim Madness v 1.0

def border_big
  puts "-" * 70
end

def border_normal
  puts "-" * 30
end

def time_fill
  puts "+" * 70
end

# dice rolling code
def d6(rolls) 
  your_rolls = []
  rolls.to_i.times do |x|
    x = rand(1..6)
    your_rolls << x
  end
  puts "You rolled: #{your_rolls.join(" , ")}."
  return your_rolls
end

# dds can accept an argument from d6(x) and prints out totals.
def dds(roll)
    sum = 0
      roll.each do |i|
        sum += i
    end
    puts "For a total of #{sum}."
    return sum
end

#Glowing House randomization
def glowing_house
  happening = rand(1..6)
  border_big
  puts "\t" "\t" "      " "It seems you have rolled a #{happening}."
  border_big
  if happening == 1
    puts "\t" "\t" "\t" "        ""Look out!"
border_big
puts "The strange building is rickety and more unstable than assumed. The 
encountering model is immediately knocked down and will be stunned too 
unless that model can pass an initiative check!"
border_big
  elsif happening == 2 || happening == 3
    puts  "\t" "\t" "\t" "\t" "Wyrdstone!
                                  Uh oh."
    wyrd_roll
  elsif happening == 4
    border_big
    puts "\t" "\t" "\t" "    " "Could be worse.
                          You gain #{rand(1..10)} crowns."
    border_big
  elsif happening == 5
  puts "\t" "\t" "         " "Don't Stop Believing!"
  border_big
  puts "The would be plunderer goes on a Journey to the next closest 
glowing house. The frightening experince of interdimensional 
travel leaves the poor sod frightened for his or her life this 
model may move as normal during the next movement phase; however, 
characters immune to fear may not as their fealessness leaves 
them merely bewildered by what they just experienced. The link
between houses remains for the rest of the game.
"
  border_big
  elsif happening == 6
  puts "\t" "\t" "\t" "      " "It's a trap!"
  border_big
  puts "This abandoned house is not so abandoned the encountering model and 
encountering warband members within 8'' are attacked by #{rand(2..4)} Wyrdstone 
Cultists with the following charachteristics:

                        M  WS BS S  T  W  I  A Ld  Sv
                        4  2  2  2  3  1  4  1  5  -"
  border_big
  end
end

# When 17
def groovy_tools
  monster = [1,2,3,4].sample
  case monster
  when 1
    puts ""
    puts "\t" "\t" "\t" "    " "A T.Rex!"
    border_big
    sleep(2)
    puts "Yeah, you just spawned a T.Rex. Divide the board into quadrants, 
quadrant #{rand(1..4)} is where the T.Rex phases into existence and runs 
towards the closest model. T.Rex has the following charachteristics:

                    M  WS BS S  T  W  I  A Ld  Sv
                    5  4  0  5  5  3  4  2  5  +6

                            Large Target 
                                Fear  

If the beast is killed it may be skinned by any eligible model during 
the encountering player's next wyrdstone phase. A model eligible to
skin the T.Rex must not be in close combat, or hit by any missle 
weapon prior to the encountering player's next wyrdstone phase.
Did I mention that the hide of the beast is worth 80 crowns? "
border_big

  when 2
    puts ""
    puts  "\t" "\t" "\t" "     " "Padan Fain"
    border_big
    sleep(2)
    puts "The fusion of Mordeth and the Dark One's Hound drips and 
slides over the battlefield towards the closest warband leader armed
with the ruby hilted dagger from Shador Logoth. Apparently you're 
in the way of him killing the Dragon Reborn. 

Divide the map into quadrants. Padan Fain spawns on the board edge
of quadrant #{rand(1..4)} and runs towards the closest warband leader. 
Padain Fain has the following charachteristics:

                    M  WS BS S  T  W  I  A Ld  Sv
                    4  2  0  3  3  1  5  1 10   -

           Ruby Hilted Dagger: If Padan Fain successfully 
           hits a model that model is taken out of action.

           Sly: Padan Fain is a force of pure darkness
           and has proven to be quick with words and
           sickeningly charming to weaker minds. No 
           henchmen may engage Padan Fain. Only Heroes 
           may attack Padan Fain."
    border_big
 

  when 3
    puts ""
    puts "\t" "\t" "Boo the Minature Giant Space Hamster!"
    border_big
    sleep(2)
    puts "Companion of Minsc the ranger, Boo the minature giant space hamster 
goes for the encountering model's eyes. I don't think Minscis coming 
so that model will be indefinitely stunned unless a friendly model 
moves into contact with the affected model chasing Boo away. If the 
stunned model is charged by an enemy and taken out of action Boo will 
simply run off... waiting in the shadows..."
border_big

  when 4
    
    puts "\t" "\t" "\t" "   " "A Treasure Goblin!"
    border_big
    sleep(2)
    puts "Chase it down! Every time the treasure goblin is successfuly hit gain 
10 crowns. If the goblin is killed it drops 2 shards of wyrdstone. 
The treasure goblin knows it's a walking loot bag and will run to the 
closest board edge in order to escape.The treasure goblin has the 
following charachteristics: 

                    M  WS BS S  T  W  I  A Ld  Sv
                    5  2  2  2  5  3  7  1  4   - 

Run for Your Life: The treasure goblin will not engage in close 
combat and is running like his life depends on it, because it does. 
The goblin does not stick around to fight and moves during the 
wyrdstone phase of the encountering player. Subsequently the 
treasure goblin moves every wyrdstone phase until he escapes or is 
killed. Control of the goblin will be given to the the player whose 
turn occurs after the current player. Any model may charge and 
collect gold from the goblin upon a successful hit. If the goblin 
is hit or killed by a missle weapon the booty is left on the ground 
and may be collected by any model moving into contact with the dead
goblin's booty ;)"
border_big

  end
end

#random deletion method, also can be used to delete at specified places in an array!
# array.delete_at(rand(array.length))

#peepee movement
def peepee
  quads = ["quadrant 1", "quadrant 2", "quadrant 3", "quadrant 4"]
  puts "             Peepee moves from #{quads.delete_at(rand(quads.length))} to #{quads.delete_at(rand(quads.length))}."
end

 #formatting
def string_test
border_big
  
border_big

end

#wyrdstone scenarios


def wyrd_roll               
  scenario = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
  roll = scenario.sample
  border_big
  puts "\t" "\t" "\t" "\t" "  " "#{roll}
                  Why did you pick that thing up?"
  border_big
  sleep(1)
  time_fill
  sleep(1)
  time_fill
  sleep(1)
  time_fill
  sleep(1)
  case roll
    
    when 1

  border_big
  puts ""
  puts "\t" "\t" "\t" "    " "Earthquake"
  puts ""
  border_big
  puts ""
  puts "\n" "  " "All models in the encountering warband are knocked down this turn."
  puts ""
  border_big

  
    
    when 2

  border_big
  puts ""
  puts "\t" "\t" "\t" "  " "Terval and Lavret"
  puts ""
  border_big
  puts ""
  puts "Terval and Lavret leap from the shadows. The encontering model is 
immediately stunned; however, may be saved by a friendly warband member.
The savior in this instance must successfully charge the stunned model.
Alternatively an enemy model may charge Terval and Lavret's stunned 
victim, but must roll a 1d6 on a 4+ that model itself becomes assaulted
by Terval and Lavret. If no charges friendly or otherwise occur durying 
any movement phase that unfortunate sod is taken out of action at the 
start of the controlling player's next turn during the wryrdstone phase."
  puts ""
  border_big

  

    when 3
  border_big
  puts ""
  puts "\t" "\t" "\t" "\t" "Disco"
  puts ""
  border_big
  puts ""
  puts "Divide the board into quadrants, quadrant #{rand(1..4)} is the dance floor. Disco 
lasts until the activiating player's wyrdstone phase. During that time 
all models on the dance floor may not move, cast magic, or attack. 
But models not on the dance floor may attempt to ruin the party by 
engaging the dancers at a distance. A charge into the fray will 
result in the model being overcome with the urge to dance."
puts ""
border_big



    when 4 

  border_big
  puts ""
  puts "\t" "\t" "\t" "   " "Mass Teleport"
  puts ""
  border_big
  puts ""
  puts "  Divide the board into quadrants, the encountering warband deploys 
  on quadrant #{rand(1..4)}'s board edge. The depoloyemnt pattern is as follows: 

  1) Get a big blast template, or any other  5'' diameter circle. 
  2) Everyone agree on what the middle of the quadrant is 
  3) Redeploy during the wyrdstone phase redeploy your warband
   within the 5'' circle.

  This may take a while, so you might want to grab a beer or 
  something. The affected warband moves at half movement during 
  their upcoming movement phase."
puts ""
border_big



   when 5 

border_big
puts ""
puts "\t" "\t" "\t" "     " "Demon Fire"
puts ""
border_big
puts ""
puts "Divide the board into quadrants, all structures in quadrant #{rand(1..4)} are on 
fire. Any model that is withing 2'' of the sponatneous 'combustion' 
is hit with one str 3 hit. Any model outside 2'' but within 6'' must
pass a leadership test or otherwise flee in terror."
puts ""
border_big



   when 6
border_big
puts ""
puts "\t" "\t" "\t" "    " "Pick up Sticks"
puts ""
border_big
puts ""
puts "Divide the board into quadrants. All the bridges in quadrant #{rand(1..4)} are 
destroyed! If the quadrant called has already had its bridges blown up
roll the appropriate dice to randomize a new quadrant. "
puts ""
border_big

   

   when 7

border_big
puts ""
puts "\t" "\t" "\t" "  " "Maybe Black Mesa"
puts ""
border_big
puts ""
puts "The wyrdstone you found powers a strange device. The encountering model 
hefts the strange white firearm in awe and pulls the trigger at the 
cloeset flat surface perpendicular to the ground. A blue portal is 
created. This model may move on the same turn it picks up the 
wyrdstone. During the controlling player's magic phase he or she 
may have the model with the portal gun pull the trigger to create
an orange portal linked to the blue one. The orange portal may only 
be created on a flat surface. The range of the gun is 4''. Blue is 
connected to orange and vice versa. Any model may utilize the portals.
If the model carrying the portal gun is knocked down, stunned, or 
taken out of action the model responsible picks up the gun. 
Once one set of portals is established the gun may not be used again. 
Finally any model with the Stupidity rule or No Brain rule may not use 
the gun at all. They break the gun and retrieve the wyrdstone inside." 
puts ""
border_big



    when 8

  border_big
  puts ""
  puts "\t" "\t" "\t" "     " "Bounce House"
  puts ""
  border_big
  puts ""
  puts "    For the rest of the game jumping across gaps within a model's
                   movement occur automatically."
  puts ""
  border_big
  
 

    when 9 

  border_big
  puts ""
  puts "\t" "\t" "\t" "    " "Ten Minus One"
  puts ""
  border_big
  puts ""
  puts "All models in encountering warband have their movement doubled
                  during the next movement phase"
  puts ""
  border_big
  
  

    when 10
     
  border_big
  puts ""
  puts "\t" "\t" "  " "What are you going to do, bleed on me?"
  puts ""
  border_big
  puts ""
  puts "For the remainder of the game the encountering model loses all his limbs
save for one leg to hop around on. This model may not attack, shoot, 
or cast spells save for the following skill:"
puts ""
puts "\t" "\t" "\t" "\t"  "Bleed 
                          Difficulty - 4
                        range - hand to hand
            Any model hit by 'Bleed' is instantly stunned."
  puts ""
  border_big
  
 
    
    when 11
  border_big
  puts ""
  puts "\t" "\t" "\t" "     "   "Blizzard"
  puts ""
  border_big
  puts ""
puts "A torrent of ice and hail descends onto the battlefield making the 
next two turns particularly shitty. During these turns the entire map 
is difficult ground and unit vision is 3''; similarly, all ranged 
weapons and magic have their range changed to 3''. Any model wishing 
to charge must make an initiative check because it's a freaking blizzard."
puts ""
border_big

 

    when 12

  border_big
  puts ""
  puts "\t" "\t" "\t" "      " "Water Temple"
  puts ""
  border_big
  puts ""
  puts "Encountering model is charged by a mirror image of themselves
with the following charachteristics: M  WS BS S  T  W  I  A Ld  Sv
                                     3  3  3  3  3  1  4  1  4   6

If encountering model is taken out of action by the mirror image it 
disappears in a puff of smoke."
puts ""
border_big



    when 13

  border_big
  puts ""
  puts "\t" "\t" "    " "Ain't that a kick in the head?"
  puts ""
  border_big
  puts ""
  puts "      Your warband leader is repalced immediately by Frank Sinatra. 
           Frank Sinatra has the following charachteristics: 

                    M  WS BS S  T  W  I  A Ld  Sv
                    4  4  3  4  4  2  5  2  9  +5

           Weapons/Armor: Heavy Armor, Dual Clubs
      Skills: Combat Master, Street Wise, The Best is Yet to Come

The Best is Yet to Come: Frank may forgo his normal attacks to utterly
destroy one target in hand to hand combat. To do this he swings both of 
his clubs over his headand brings them both down simultaneously in one 
powerful attack. Frank must roll two hits on his target and land two 
unsaved wounds to pull off this feat. If successful roll D6 
         1-3 target is stunned 4-6 target is out of action."
puts ""
border_big



    when 14

  border_big
  puts ""
  puts "\t" "\t" "\t" "\t" " " "What?"
  puts ""
  border_big
  puts ""
  puts "\t" "      " "Encountering model winks out of existence. 
                   No you don't get the wyrdstone."
  puts ""
  border_big
  
 

    when 15

  border_big
  puts ""
  puts "\t" "\t" "\t" "      " "Free Beer!"
  puts ""
  border_big
  puts ""
  puts "In a stroke of luck the encountering model discovers a ruined brewerey.
With plenty of beer sitting around for the taking, any model may move 
into base contact with the brewerey. Upon doing so the model may choose 
to drink their fill of delicious alcohol. Any model who drinks at the 
brewerey will have the following charachteristic modifiers for the 
remainder of the battle:

Movement: -1
Strength: +1
Toughness: +1
Initiative: -1
Leadership: 5 (may not use warband leader's leadership for checks.)"
puts ""
border_big


    when 16
      
  fifty_fifty = [1,2].sample
  border_big
  puts ""
  puts "\t" "\t" "       " "Schrödinger's Wyrdstone"
  puts ""
  border_big
  puts ""
puts "\t" "\t" "   " "It's both in there and it isn't.  "
sleep(2)
  if fifty_fifty == 1
    puts "\t" "\t" "\t" "    " "You found it!"
  else
    puts "\t" "\t" "\t" "It wasn't in there :("
  end
puts ""
border_big



    when 17

  border_big
  puts ""
  puts "\t" "\t" "\t" "\t" "Groovy"
  puts ""
  border_big
  puts ""
  puts "Well, you've done it. The fabric of dimensions chafes uncomfortably
and a tear in spacetime produces..."
  sleep(4)
  groovy_tools
  


    when 18

  border_big
  puts ""
  puts "\t" "\t" "\t" "     " "Redemption"
  puts ""
  border_big
  puts ""
  puts "Death is avoided by one of the encountering player's models, this time.
Of the models who have been taken out of action randomly choose one
to retrun immediately to the battlefield within 2'' of the player's 
warband leader."
puts ""
border_big


    when 19

border_big
puts ""
puts "\t" "\t" "\t" "  " "Lapdogs All of You"
puts ""
border_big
puts ""
puts "Divide the board into quadrants, Edwin Van Cleef and a retinue of 
three Defias Bandits spawn in quadrant #{rand(1..4)}. They will run towards 
the closest members of any warband and engage them in close combat. 
Edwin and his cronies have the following charachteristics: 

                  M  WS BS S  T  W  I  A Ld  Sv
Edwin Van Cleef:  4  4  3  4  4  2  6  2  9  6+ 

                  M  WS BS S  T  W  I  A Ld  Sv
Defias Bandit:    4  3  3  3  3  1  5  1  6  6+

Weapons and Armor: Edwin and his followers are armed with one sword and
handgun apiece and they are all wearing leather armor."
puts ""
border_big


    when 20
      
      border_big
      puts ""
      puts "\t" "\t" "\t" " " "Oh yeah Ultra-peepee"
      puts ""
      border_big
      puts ""
      puts "Ultra-peepee meanders unknowingly through the battlefield in search of 
pellets. With a benign disregard for the tiny people below. His massive 
size allows him to crush any model under foot. Divide the map into 
quadrants. Use a 3'' diameter blast template to represent each gigantic 
footstep. Measure the length of his stride 5'' from the center of the 
first template to the center of the next. Then flip the template over to
the right so the right edge of the circle, flipped over, is now the left
side of the circle. For the next step flip the template over to the left.
Repeat this until his footfalls are no longer made withing the bounds of 
the map. His path is as follows:"
puts ""
sleep(3)
puts peepee
border_big
 end
end








  










