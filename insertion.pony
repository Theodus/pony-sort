use "collections"

primitive InsertionSort[A: Comparable[A] val] is Sorter[A]
  """
  InsertionSort is the algorithm of choice either when the data is nearly sorted
  or when the problem size is small.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    _sort(a, a.size())
    a

  fun tag _sort(a: Seq[A], n: USize) ? =>
    if n > 1 then
      _sort(a, n-1)
      let k = a(n-1)
      var i = n.isize() - 2
      while (i >= 0) and (a(i.usize()) > k) do
        a(i.usize()+1) = a(i.usize())
        i = i - 1
      end
      a(i.usize()+1) = k
    end
