--互动面板
fireproximityprompt(workspace.Shops["黑市"].Interaction)--打开黑市
fireproximityprompt(workspace.Shops["五金店"].Interaction)--打开五金店
fireproximityprompt(workspace.Shops["药店"].Interaction)--打开药店
fireproximityprompt(workspace.Shops["超市"].Interaction)--打开超市
--传送
game.Players.LocalPlayer:MoveTo(workspace.WeaponVender.VenderRig.HumanoidRootPart.Position)--传送黑市武器商
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["奇怪集装箱"].l1.CFrame--奇怪集装箱
--自动刷钱
spawn(function()
    while true do wait()
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Deliverys.Get.GLoc.CFrame
            fireproximityprompt(workspace.Deliverys.Get.GLoc.Attachment.ProximityPrompt)
            for _,v, in pairs(workspace.Deliverys.Random:GetChildren()) do
                if v.Name == "DeliveryPoint" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    fireproximityprompt(v.ProximityPrompt)
                end
            end
        end)
    end
end)
--自动拾取掉落的金钱
spawn(function()
    while true do wait()
        pcall(function()
            for _,v in pairs(workspace.Money_Drop:GetChildren()) do
                firetouchinterest(v.TouchInterest)
            end
        end)
    end
end)