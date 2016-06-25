# pony-sort
Common sorting algorithms for Pony

## The following algorithms are provided:

### Insertion Sort
Although it is one of the elementary sorting algorithms with O(n^2) worst-case time, insertion sort is the algorithm of choice either when the data is nearly sorted (because it is adaptive) or when the problem size is small (because it has low overhead).

[(sorting-algorithms.com/insertion-sort)](www.sorting-algorithms.com/insertion-sort)

### Selection Sort
Selection sort has the property of minimizing the number of swaps. In applications where the cost of swapping items is high, selection sort very well may be the algorithm of choice.

[(sorting-algorithms.com/selection-sort)](www.sorting-algorithms.com/selection-sort)

### Bubble Sort
Bubble sort has many of the same properties as insertion sort, but has slightly higher overhead. In the case of nearly sorted data, bubble sort takes O(n) time, but requires at least 2 passes through the data (whereas insertion sort requires something more like 1 pass).

[(sorting-algorithms.com/bubble-sort)](www.sorting-algorithms.com/bubble-sort)

### Shell Sort
Because of its low overhead, relatively simple implementation, adaptive properties, and sub-quadratic time complexity, shell sort may be a viable alternative to the O(n·log(n)) sorting algorithms for some applications when the data to be sorted is not very large.

[(sorting-algorithms.com/shell-sort)](www.sorting-algorithms.com/shell-sort)

### Merge Sort
Merge sort is the algorithm of choice for a variety of situations: when stability is required, when sorting linked lists, and when random access is much more expensive than sequential access.

[(sorting-algorithms.com/merge-sort)](www.sorting-algorithms.com/merge-sort)

### Heap Sort
Heap sort is simple to implement, performs an O(n·log(n)) in-place sort, but is not stable.

[(sorting-algorithms.com/heap-sort)](www.sorting-algorithms.com/heap-sort)

### Quick Sort
When stability is not required, quick sort is the general purpose sorting algorithm of choice. The 3-way partition variation of quick sort has slightly higher overhead compared to the standard 2-way partition version. Both have the same best, typical, and worst case time bounds, but this version is highly adaptive in the very common case of sorting with few unique keys.

[(sorting-algorithms.com/quick-sort-3-way)](www.sorting-algorithms.com/quick-sort-3-way)
