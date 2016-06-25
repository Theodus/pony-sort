use "collections"

primitive BubbleSort[A: Comparable[A] val] is Sorter[A]
  """
  Bubble sort has many of the same properties as insertion sort, but has
  slightly higher overhead.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    var s = true
    while s do
      s = false
      for i in Range(1, a.size()) do
        if a(i) < a(i-1) then
          let t = a(i)
          a(i) = a(i-1)
          a(i-1) = t
          s = true
        end
      end
    end
    a
