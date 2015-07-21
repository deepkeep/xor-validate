require 'torch'
require 'nn'
require 'nngraph'

local T = torch.Tensor
local net = torch.load('/project/trained-network.t7')

-- Normally, validation data would be something the network hasn't seen before
local validationData = {
  { x = torch.Tensor({ 0, 0 }), y = torch.Tensor({0}) },
  { x = torch.Tensor({ 0, 1 }), y = torch.Tensor({1}) },
  { x = torch.Tensor({ 1, 0 }), y = torch.Tensor({1}) },
  { x = torch.Tensor({ 1, 1 }), y = torch.Tensor({0}) },
}
local criterion = nn.MSECriterion()

-- Let's run through the validation data and compute an average error
local err = 0
for i, d in pairs(validationData) do
  err = err + criterion:forward(net:forward(d.x), d.y)
end
err = err / #validationData
print("## SCORE: " .. err)
