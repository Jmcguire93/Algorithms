def compare_triplets(a, b)
  score = [0, 0]
  i = 0
  while i < a.length
    if a[i] > b[i]
      score[0] += 1
    elsif a[i] < b[i]
      score[1] += 1
    end
    i += 1
  end
  score
end

p compare_triplets([5, 6, 7], [3, 6, 10]) #=> [1, 1]
p compare_triplets([17, 28, 30], [99, 16, 8]) #=> [2, 1]

