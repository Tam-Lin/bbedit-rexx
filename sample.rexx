/*rexx program bubbsort. it illustrates a bubble sort */

/* load the array 
   may also be loaded by execio, or a call outtrap
*/
name.1 = "marie"
name.2 = "beth"
name.3 = "linda"
name.4 = "maria"
name.5 = "nadia"
name.6 = "angela"
name.7 = "michelle"
count_of_elements = 7

/* loop through the array (count_of_elements - 1) ** 2 times */
do i = 1 to  (count_of_elements - 1)
   do j = 1 to (count_of_elements - 1)
      j_plus1 = j + 1
      /* if an element is greater than the next one higher, 
         interchange them */
      if name.j > name.j_plus1 then call flipem
   end j
end i

/* show results*/
do i = 1 to count_of_elements
   say name.i
end i

exit

flipem:
/* reverse the order of the two elements */
temp = name.j
name.j = name.j_plus1
name.j_plus1 = temp
return