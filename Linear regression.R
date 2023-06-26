ht=c(151,174,138,128,136,179)
wt=c(63,56,91,47,57,76)

relation=lm(wt~ht)
print(relation)

a=as.numeric(readline(prompt = "Enter ht val: "))
pred= data.frame(ht=a)
result=predict(relation,pred)
print(result)

plot(wt,ht,main="weight vs Height ",
     abline(lm(ht~wt),cex=1.3,pch=16))