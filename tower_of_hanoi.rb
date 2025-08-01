def tower_of_hanoi(n, source, destination, auxiliary)
  if n == 1
    puts "Move disk 1 from #{source} to #{destination}"
    return
  end

  tower_of_hanoi(n - 1, source, auxiliary, destination)
  puts "Move disk #{n} from #{source} to #{destination}"
  tower_of_hanoi(n - 1, auxiliary, destination, source)
end

# Example usage:
tower_of_hanoi(3, 'A', 'C', 'B')
