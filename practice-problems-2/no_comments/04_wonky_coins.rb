def wonky_coins(n)
 n == 0 ? 1 : (wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4))
end
  