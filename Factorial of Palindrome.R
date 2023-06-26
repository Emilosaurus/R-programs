num=readline("Enter no :")
fact=1
i=1

for(i in 1:num)
{
  fact=fact*i
}

cat("Factorial of ",num," is ",fact)
n_num=0
copy=fact
while(fact>0)
{
  n_num=n_num*10 +fact%%10
  fact=as.integer(fact/10)
}
{
if(copy==n_num){
  print("Palindrome")
}
else
{
  print("not Palindrome ")
}
}