
interface Sorter[A: Comparable[A] val]
  """
  A Sorter sorts a Seq of Comparable values from least to greatest in place.
  """
  fun tag apply(a: Seq[A]): Seq[A] ?
