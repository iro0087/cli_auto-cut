#!/bin/bash

output="out"

echo > order.txt

while getopts ":b:e:i:f:o:" options; do         
                                          
  case "${options}" in                     
    
    i)                                    
      name=${OPTARG}

      find $name > /dev/null 2>$1

      ex=$?

      if [ "$ex" -eq 1 ]
      then 
        echo "file does not exist"
        exit 1
      fi

      ;;

    b)
        beg=${OPTARG} 

        ;;

    e)

    ends=${OPTARG}

      ;;

    o)

    output=${OPTARG}

      ;;

    f)

            file=${OPTARG}

      ;;

    :)
            echo "options are -i (input file), -b (beginings) -e (ends) -f (filetype)"
      exit 1                      
      ;;

    *)

            echo "options are -i (input file), -b (beginings) -e (ends) -f (filetype)"
      exit 1
      ;;

  esac
done

var2=10
order=0

com=10
fin=${#beg}

while [ $var2 -ne 0 ]
do
        IFS=- read -r var1 var2 <<< $beg
        
        IFS=- read -r var1b var2 <<< $ends

        name_order="file ${order}.${file}"

        echo $name_order >> order.txt

        r_file="${order}.${file}"

        order=$((order+1))

        ffmpeg -i $name -ss $var1 -to $var1b -acodec copy $r_file  

        beg=$(echo $beg | cut -c $com-$fin)

        ends=$(echo $ends | cut -c $com-$fin)

        var2=${#var2}

done

output="${output}.${file}"

ffmpeg -f concat -safe 0 -i order.txt -c copy $output



