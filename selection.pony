use "collections"

primitive SelectionSort[A: Comparable[A] val] is Sorter[A]
  """
  SelectionSort is the algorithm of choice where the cost of swapping items is
  high.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    _sort(a, 0)
    a

  fun tag _sort(a: Seq[A], start: USize) ? =>
    if start >= (a.size() - 1) then return end
    var min = start
    for i in Range(start + 1, a.size()) do
      if a(i) < a(min) then
        min = i
      end
    end
    let tmp = a(start)
    a(start) = a(min)
    a(min) = tmp
    _sort(a, start + 1)
