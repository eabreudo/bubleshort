! bubblesort
program main

implicit none

! Declare the variables
    real :: a(5)
    integer :: i, j, swap_count
    real :: temp
    


! Fill array with random numbers
    call random_seed()      ! initialize RNG (processor dependent)
    call random_number(a)   ! fill a with random numbers in [0,1)

! Print the OG Array 
    print *, 'Original array:'
    print *, a

swap_count = 0



! Bubblesort 
do i = 1, 5 - 1
    do j = 1, 5 - i
        if (a(j) > a(j+1)) then
            temp   = a(j)
            a(j)   = a(j+1)
            a(j+1) = temp
            swap_count = swap_count + 1   ! count each swap
        end if
    end do
end do

print *, 'Sorted array:'
print *, a
print *, 'Total swaps =', swap_count

end program main 
