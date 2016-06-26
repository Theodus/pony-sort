use "collections"

primitive HeapSort[A: Comparable[A] val] is Sorter[A]
  """
  HeapSort is simple to implement, performs an O(n·lg(n)) in-place sort,
  but is not stable.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    var i = (a.size().isize() - 2) / 2
    while i >= 0 do
      _sift(a, i.usize(), a.size())
      i = i - 1
    end
    i = a.size().isize() - 1
    while i >= 1 do
      let tmp = a(0)
      a(0) = a(i.usize())
      a(i.usize()) = tmp
      _sift(a, 0, i.usize())
      i = i - 1
    end
    a

  fun tag _sift(a: Seq[A], i': USize, len: USize) ? =>
    var i = i'
    var done = false
    while (((i * 2) + 1) < len) and not done do
      let n = (i * 2) + 1
      let max = if n == (len - 1) then
        n
      elseif a(n) > a(n+1) then
        n
      else
        n + 1
      end

      if a(i) < a(max) then
        let tmp = a(i)
        a(i) = a(max)
        a(max) = tmp
        i = max
      else
        done = true
      end
    end
