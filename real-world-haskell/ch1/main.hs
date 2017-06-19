
main = interact wordCount
  where wordCount = (++ "\n") .show . length 