def wonky_coins(n)
     n == 0 ? 1 : (wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4))
     #if arg is 0, always return 1
     #otherwise get the denominations
end
    
p wonky_coins(6)