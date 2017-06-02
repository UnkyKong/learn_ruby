#write your code here
def ftoc(ftemp)
    (ftemp.to_f - 32.0) * (5.0/9.0)
end

def ctof(ctemp)
    (ctemp / (5.0/9.0)) + 32.0
end
