#!/bin/bash

sum=0;

for ((i = 0; i<100; i++))
do
    is_prime=true;
    if ((i > 1))
    then 
        for ((j = 2; j<= (i / 2); j++))
        do
            # echo $j
            if ((i%j == 0))
            then
                is_prime=false;
                break;
            fi
        done

        if $is_prime
        then 
            # echo $i
            sum=$((sum + i))
        fi
    fi
done
echo $sum

    