function next() {
  number=`git br | grep \* | awk -F' ' '{print $2}' | awk -F'-' '{print $1}'`
  nextnum=$(($number + 1))
  next=""
  if [ $nextnum -lt 10 ]
  then
   next="0$nextnum"
  else
   next=$nextnum
  fi
  newbr=`git br | grep $next | xargs`
  git co $newbr
}

function prev() {
  number=`git br | grep \* | awk -F' ' '{print $2}' | awk -F'-' '{print $1}'`
  nextnum=$(($number - 1))
  next=""
  if [ $nextnum -lt 10 ]
  then
   next="0$nextnum"
  else
   next=$nextnum
  fi
  newbr=`git br | grep $next | xargs`
  git co $newbr
}