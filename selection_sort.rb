def selection_sort(a)
	n=a.length
   for i in 0...n 
    min=i
    for j in (i+1)...n
        if a[j]<a[min]
            temp=a[j]
            a[j]=a[min]
            a[min]=temp
        end
    end
   end
   return a
end

array = [10,5,8,93,6,2]
print selection_sort(array)