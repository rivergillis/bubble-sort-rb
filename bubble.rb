# A bubble sort implentation that works with simple data types
def bubble_sort(arr)
	sorted = false
	until sorted do
		sorted = true
		0.upto(arr.size - 2) do |n| #arr.size-1 will make the next call go over
			if arr[n] > arr[n + 1]
				temp = arr[n]
				arr[n] = arr[n + 1]
				arr[n + 1] = temp
				sorted = false
			end
		end
	end

	return arr
end

# This version uses a block to determine how to sort the data
def bubble_sort_by(arr)
	sorted = false
	until sorted do
		sorted = true
		0.upto(arr.size - 2) do |n|
			if yield(arr[n], arr[n + 1]) < 0
				temp = arr[n]
				arr[n] = arr[n + 1]
				arr[n + 1] = temp
				sorted = false
			end
		end
	end

	return arr

end

