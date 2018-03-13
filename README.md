# 8086 Programs for Evaluation - I

## [Arithmetic](https://github.com/jacobjohn2016/8086-Programs/tree/master/Arithmetic)
1. Addition of 2 8b numbers [18_add_8b_2.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/18_add_8b_2.asm)
2. Subtraction [19_sub_8b.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/19_sub_8b.asm)
3. Multiplication [24_multiply_8b.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/24_multiply_8b.asm)
4. Division of 16b with 8b number [25_divide_16b_by_8b.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/25_divide_16b_by_8b.asm)
5. Addition of 2 16b [17_add_8b_16b.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/17_add_8b_16b.asm)
6. Multiplication of 2 32b [28_multiply_2_32b.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/28_multiply_2_32b.asm)

## [Expression](https://github.com/jacobjohn2016/8086-Programs/tree/master/Expression)
7. ALP to find the Greatest Common Divisor of two unsigned integer.[29_gcd_two.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Expression/29_gcd_two.asm)
8. ALP to find the Sum and average of unsigned integer. [30_sum_average_unsigned.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Expression/30_sum_average_unsigned.asm)
9. Develop and execute an ALP to compute factorial of a positive integer number using recursive procedure. [31_fact.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Expression/31_fact.asm)

## [Conversion](https://github.com/jacobjohn2016/8086-Programs/tree/master/Conversion)
10. ALP for conversion of 16-bit HEX number into its equivalent BCD number.[31_hex_bcd.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Conversion/31_hex_bcd.asm)
11. ALP for conversion of 16-bit BCD number into its equivalent HEX number. [32_bcd_hex.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Conversion/32_bcd_hex.asm)
12. ALP for conversion BCD number 7-Segment String. [33_seven_segment.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Conversion/33_seven_segment.asm)
13. ALP to copy the string of successive memory locations from one memory to other.

    a. Using string instructions [34_copy_string_instruction.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Conversion/34_copy_string_instruction.asm)
    
    b. Without using string instruction [34_copy_without_string_instruction.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Conversion/34_copy_without_string_instruction.asm)

## [Sorting](https://github.com/jacobjohn2016/8086-Programs/tree/master/Sorting)
14. ALP to Sort a set of unsigned integer numbers in ascending/ descending order using Bubble sort algorithm. [35_bubble_sort.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Sorting/35_bubble_sort.asm)

## [Searching](https://github.com/jacobjohn2016/8086-Programs/tree/master/Searching)
15. Develop and execute ALP that implements Binary search algorithm. The data consists of sorted 16 bit unsigned integers. The search key is also a 16 bit unsigned integer. [36_binary_search.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Searching/36_binary_search.asm)


# Assessment Programs

1. Emulate a counter on emu8086, to count the no. of 1’s (binary) in the given input value. [22_count_1s.asm](https://github.com/jacobjohn2016/8086-Programs/blob/master/Arithmetic/22_count_1s.asm)
2. Emulate water level controller on emu8086 for the following Specifications:
    a. No. of water levels in the overhead tank is 8
    b. Display the current level of water with a buzzer
    c. Switch on the motor if the water level is 1
    d. Switch off the motor if the water level is 8
    e. Switch on the buzzer on water overflow