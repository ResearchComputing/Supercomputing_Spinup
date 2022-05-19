import torch
a=torch.cuda.is_available()
print(a)
print(torch.rand(3,3).cuda())

