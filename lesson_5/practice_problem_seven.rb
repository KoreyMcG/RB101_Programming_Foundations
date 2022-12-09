a = 2
b = [5, 8]
arr = [a, b]

a.object_id
b.object_id
arr[0].object_id
arr[0] += 2
a
arr[0]

# arr = [2, [5, 8]]
# arr[0] += 2 => [4, [5, 8]]
# arr[1][0] -= a => [4, [3, 8]]

arr[0] += 2
arr[1][0] -= a
arr
