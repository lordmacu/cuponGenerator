#!/bin/sh

if [ -z $1 ]; then
    echo "Pass file size as initial parameter"
    exit
fi

SIZE=$1
items=$2

awk -v size="$SIZE" -v items="$items" '

BEGIN{ 
	for (o=1; o<=items; o++) {
	    srand(o);  
	    NUM=size;  
	    idx=0;  

	    #add_range(97,122)   # letters

	    idx=65;
	    while (idx <= 90) {
	        alphabet[idx] = sprintf("%c",idx)
	        idx+=1
	    }

	    idx=0
	    for (k in alphabet){
	        alphanums[idx]=alphabet[k]
	        idx+=1
	    }
	    alphabet_len = idx
	    i=0

	    # and iterate to random some characters
	    idx =0
	         #addprefix   printf("CO57")

	    while (idx < NUM){                         
	        dec =0
	        char_idx=int(rand() * alphabet_len)
	        char = alphanums[char_idx]
	        printf("%s",alphanums[char_idx])
	        idx+=1
	    } 

	    print("") 
    }
}  
' 
