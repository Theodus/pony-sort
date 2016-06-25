use "collections"

primitive ShellSort[A: Comparable[A] val] is Sorter[A]
  """
  ShellSort has low overhead, relatively simple implementation, adaptive
  properties, and sub-quadratic time complexity.
  """
  fun tag apply(a: Seq[A]): Seq[A] ? =>
    var d = a.size() / 2
    while d > 0 do
      for i in Range(d, a.size()) do
        var j = i
        while (j >= d) and (a(j-d) > a(j)) do
          let tmp = a(j)
          a(j) = a(j-d)
          a(j-d) = tmp
          j = j - d
        end
      end
      d = d / 2
    end
    a
