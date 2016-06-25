
primitive QuickSort[A: Comparable[A] val] is Sorter[A]
  """
  QuickSort is an excellent general-purpose sort when a stable sort is not
  needed. Implemented with a 3-way partition.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    _sort(a, 0, a.size())
    a

  fun tag _sort(a: Seq[A], start: USize, stop: USize) ? =>
    if (stop - start) < 2 then return end
    let key = a(start + ((stop - start) / 2))
    var e = start
    var u = start
    var g = stop
    while u < g do
      if a(u) < key then
        _swap(a, u, e)
        e = e + 1
        u = u + 1
      elseif a(u) == key then
        u = u + 1
      else
        g = g - 1
        _swap(a, u, g)
      end
    end
    _sort(a, start, e)
    _sort(a, g, stop)

  fun tag _swap(a: Seq[A], i: USize, j: USize) ? =>
    let tmp = a(i)
    a(i) = a(j)
    a(j) = tmp
