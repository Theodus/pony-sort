use "collections"

primitive MergeSort[A: Comparable[A] val] is Sorter[A]
  """
  MergeSort is the algorithm of choice when stability is required and when
  random access is much more expensive than sequential access.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    if a.size() <= 1 then
      return a
    end
    let m = a.size() / 2
    let l = Array[A](m)
    let r = Array[A](m)

    for i in Range(0, a.size()) do
      if i < m then
        l.push(a(i))
      else
        r.push(a(i))
      end
    end
    _merge(apply(l), apply(r), a.clear())


  fun tag _merge(l: Seq[A], r: Seq[A], res: Seq[A]): Seq[A] ? =>
    var li: USize = 0
    var ri: USize = 0

    while (li < l.size()) and (ri < r.size()) do
      if l(li) <= r(ri) then
        res.push(l(li))
        li = li + 1
      else
        res.push(r(ri))
        ri = ri + 1
      end
    end
    while li < l.size() do
      res.push(l(li))
      li = li + 1
    end
    while ri < r.size() do
      res.push(r(ri))
      ri = ri + 1
    end
    res
