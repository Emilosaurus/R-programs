data("mtcars")

set.seed(5)

split=sample(nrow(mtcars),size=0.7*nrow(mtcars))
train_data=mtcars[split,]
test_data=mtcars[-split,]

model=glm(am~mpg+disp+hp,data=train_data)

mpg=as.numeric(readline("Enter MPG:"))
disp=as.numeric(readline("Enter Disp:"))
hp=as.numeric(readline("Enter HP:"))

input_data=data.frame(mpg,disp,hp)
pred=predict(model,input_data)

bpred=ifelse(pred>0.5,1,0)
print(bpred)


if(bpred==0)
{
  print("Auto")
}else
{
  print("Manual")
}
plot(model,which=1)