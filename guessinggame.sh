function ask {
        echo " can you correctly guess the amount of file in the 
directory? "
        read amount
    files=$(ls -l|wc -l)
}  

    ask 
   
    while [[ $amount -ne $files ]]; do
          if   [[ $amount -lt $files ]];
          then
             echo " Sorry try again. Your answer is less than the 
correct number."
          else
            echo " Sorry try again. Your answer is greater than the 
correct number."
          fi
          ask
done

echo "Congratulations! That is correct!"
