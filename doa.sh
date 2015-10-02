#!/bin/sh

# get a randomish number
NUM=$RANDOM

# figure out last character index 
let i=${#NUM}-1


dead() {
cat << EOM

          /\    /\         
         /) \__/ (\        
   _     ~        ~        
  { \._  - X    X -  _./ } 
  /_"=-. -   ^^   - .-="_\ 
   _  _.  - _~~_ -  =._ _  
  (_'"_.-          -._"'_) 
   {_"      RIP       "_} 

EOM
}

alive1() {
cat <<EOM

          /\    /\  
         /) \__/ (\ 
 ------  ~        ~ 
| MEOW | - o)  o) - 
 ----- \ -   ^^   - 
          - _~~_ -  

EOM
}

alive2() {
cat <<EOM
          /\    /\  
         /) \__/ (\ 
 ------  ~        ~ 
| MEOW | - ()  () | 
 ----- \ -   ^^   - 
          - _~~_ -  

EOM
}

# check if cat is dead or alive
case ${NUM:$i} in
 [13579])
   dead
   exit 1
 ;;
 [026])
  alive1
  exit 0
 ;;
 [48])
  alive2
  exit 0
 ;;
esac

#EOF
