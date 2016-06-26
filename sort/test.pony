use "ponytest"
use "collections"

actor Main is TestList
  new create(env: Env) => PonyTest(env, this)
  new make() => None

  fun tag tests(test: PonyTest) =>
    test(_TestInsertionSort)
    test(_TestSelectionSort)
    test(_TestBubbleSort)
    test(_TestShellSort)
    test(_TestMergeSort)
    test(_TestHeapSort)
    test(_TestQuickSort)

class iso _TestInsertionSort is UnitTest
  fun name(): String => "InsertionSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(InsertionSort[I64], h)

class iso _TestSelectionSort is UnitTest
  fun name(): String => "SelectionSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(SelectionSort[I64], h)

class iso _TestBubbleSort is UnitTest
  fun name(): String => "BubbleSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(BubbleSort[I64], h)

class iso _TestShellSort is UnitTest
  fun name(): String => "ShellSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(ShellSort[I64], h)

class iso _TestMergeSort is UnitTest
  fun name(): String => "MergeSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(MergeSort[I64], h)

class iso _TestHeapSort is UnitTest
  fun name(): String => "HeapSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(HeapSort[I64], h)

class iso _TestQuickSort is UnitTest
  fun name(): String => "QuickSort"

  fun apply(h: TestHelper) ? =>
    _SortTest(QuickSort[I64], h)

primitive _SortTest
  fun apply(sorter: Sorter[I64] tag, h: TestHelper) ? =>
    let a: Array[I64] = [23, 26, 31, 41, 53, 58, 59, 84, 93, 97]
    let b: Array[I64] = [31, 41, 59, 26, 53, 58, 97, 93, 23, 84]
    sorter(b)
    for i in Range(0, a.size()) do
      h.assert_eq[I64](a(i), b(i))
    end
