pid=$1

# function pop {
#     local local_queue=$1
#     first=`echo ${local_queue} | cut -f 1`
#     local_queue=${local_queue#* }
#     echo ${local_queue}
# }


function list_offspring {
  tp=`pgrep -P $1`          #get childs pids of parent pid
  for i in $tp; do          #loop through childs
    if [ -z $i ]; then      #check if empty list
      exit                  #if empty: exit
    else                    #else
      echo "$i "         #print childs pid
      list_offspring $i     #call list_offspring again with child pid as the parent
    fi;
  done
}

echo ${pid}
list_offspring ${pid}
