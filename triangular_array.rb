class TriangularArray

	def initialize(rows)
		@values = []
		@values = Array.new(rows * (rows - 1)/ 2)
	end

	def map_row_column(row, col)
		if row < col
			tmp = row
			row = col
			col = tmp
		end	

		(row * (row -1) / 2) + col
	end

	def setValue(value, row, col)
		@values[map_row_column(row, col)] = value
	end

	def getValue(row, col)
		@values[map_row_column(row, col)]
	end

end


tri_array = TriangularArray.new(4)
tri_array.setValue(0,0,0)
tri_array.setValue(790,0,1)
tri_array.setValue(1745,0,2)
tri_array.setValue(1852,0,3)

tri_array.setValue(790,1,0)
tri_array.setValue(0,1,1)
tri_array.setValue(2776,1,2)
tri_array.setValue(2564,1,3)

p tri_array.getValue(0,3)


