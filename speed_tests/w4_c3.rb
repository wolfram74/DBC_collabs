num_sample = [3,1,4,1,5,9,2,6,5,3,5,8,9,7,9,3,2,3,8,4,6,2,6,4,3,3,8,3,2,7,9,5,0,2,8,8,4,1,9,7,1,6,9,3,9,9,3,7,5,1,0,5,8,2,0,9,7,4,9,4,4,5,9,2,3,0,7,8,1,6,4,0,6,2,8,6,2,0,8,9,9,8,6,2,8,0,3,4,8,2,5,3,4,2,1,1,7,0,6,7,9]
word_sample = "THE DEVIL is touching up a few notes on his SULPHURIC TABLATURE.

He documents a tale which was [url=http://www.mspaintadventures.com/?s=4&p=001330]last updated[/url] in the TOME OF WAYFARING SOULS by a now rather preoccupied Death.

When Death had finished his last entry, DMK had just exposed his second face, Team Sleuth had invoked their GAMBIT SCHEMAS, HD and NB had begun wandering through the SLEAZY BROTHEL IN THE SKY, and AD was embarking upon a game of LIFE with DEATH.

It is that game where we pick up again.

The match began as a friendly one but became quickly reduced to a series of boorish tactics by AD, who stole all of Death's money while he was distracted. They pursued each other in their GAME PIECES, but AD struck a defenseless woman who was crossing the street. AD pleaded with Death to spare her life, but Death was nowhere to be seen. Miraculously, the woman survived, and then AD and WIFEHEARST became married.

With WIFEHEARST, AD sired the adorable SONHEARST. As a family they enjoyed years of peaceful, prosperous life, as AD built an empire on various illicit LEGITIMATE ESTABLISHMENTS. This activity caught the prying eye of some THUGS, who were none too pleased with AD muscling in on their boss's racket.

One day while taking a walk, AD's family was gunned down by the THUGS. AD AUTO-PARRIED a bullet to save SONHEARST, but WIFEHEARST was not so lucky and perished. This prompted the surviving family to seek vengeance as vigilantes. They became BATHEARST and PUNISHER DICK. Unfortunately the WHEEL OF LIFE had different plans for them. Rather than fighting crime, they would be heading WEST to the open frontier.

Tragically, BATHEARST drowned while they attempted to ford the river in their wagon. AD was inconsolable with grief and wandered the countryside, heartbroken and alone. Eventually he found a GUN underneath a TREE STUMP and shot himself.

With each successive misfortune befalling AD, DMK's EMOTIONS level increased, causing him to be susceptible to physical attacks. This allowed PS to inflict major damage through his GAMBIT SCHEMA -> CANDY CORN VAMPIRE, with its heightened attributes such as increased strength, endurance, and VAMPIRE FASTNESS.

His first move was to invoke COMBAT OPERANDI -> ARMISTYX, summoning Death, who was called away from his game of Life with AD. Death gave PS his SCYTHE to wield against DMK. PS utilized the SCYTHE in its various forms, culminating with the A-BOMB SCYTHE, completely wiping out one of DMK's two health meters, and well as permanently destroying the SCYTHE much to Death's sorrow.

Concurrently to this battle, HD and NB were trapped in the BROTHEL, equipped with a couple of special CORSETS. They were confronted with a very large FAN PLUG which they needed to find a way to plug in for some reason. This lead them on a journey through the brothel which involved conducting sultry performances in a series of PRIVATE BOOTHS, which involved using items on hand to either remove a small MURAL from a wall, or conceal it with a coat of paint, or generally deface it in a rather seductive fashion.

The performances were much to the delight of three GENTLEMAN, a MANNERLY HIGHBROW, a DAPPER SWAIN, and a CHURLISH TOFF, who each sat in their respective coin-operated viewing booths. Once the coin-op slot's time had expired, or became disabled in some way, the WINDOW no longer served to display the other side of the booth. Instead the windows served as portals to various TRUCKS, including a BREAD TRUCK, a CHEESE TRUCK, and a HAM TRUCK, and allowed someone to either exit the rear of the truck, or enter the cabin of the truck, depending on which side of the booth one enters from. This rear exit/cabin entrance polarity was controlled by a series of SWITCHES on the ceiling just out side the booths, accessible only to one with a significant HEIGHT attribute.

NB used these portals to thread the FAN PLUG through them, and out the backs of their corresponding trucks. Stepping through the differently shaped portals, as well as making adjustments to her ASPECT CORSET, served to modify her proportions as well as her VIM attribute, which was at times useful for carrying the plug. She also helped the Highbrow to drive the BREAD TRUCK, while HD also drove the CHEESE TRUCK with the Swain to various destinations to facilitate the threading process, at one point threading the cord through the eye of the HAM NEEDLE. ".split(" ")
p "#{word_sample.length} words, and 100 numbers"

def mode_mm (array) # Maurits Moeys
  frequency = Hash.new(0)
  array.each {|item| frequency[item] += 1}
  grouped_freq = frequency.group_by{|k,v| v}
  winner = grouped_freq.keys.sort[-1]
  return  grouped_freq[winner].map{|i| i[0]}
end

def mode_pnr(array) #peter and ram
  census={}
  output=[]
  top=0
  array.each {|x| census[x]=0}
  array.each {|x| census[x]+=1}
  census.each do |key, value|
    # puts "#{key}, #{value}"
    if(value>top)
      top=value
      output=[key]
    elsif (value==top)
      output << key
    end
  end
  return output
end


start_time = Time.now
1000.times do

end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx
#### template and prepwork

puts "maurits and peter method"
start_time = Time.now
1000.times do
mode_mm(num_sample)
end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

start_time = Time.now
1000.times do
mode_mm(word_sample)

end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

puts "ram and peter method"

start_time = Time.now
1000.times do
mode_pnr(num_sample)

end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx

start_time = Time.now
1000.times do
mode_pnr(word_sample)

end
end_time = Time.now

single_run_approx = (end_time-start_time)/1000
puts single_run_approx