ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--------- Menu -------

RMenu.Add('K_Touches', 'main', RageUI.CreateMenu("Menu Touches", "Menu Interaction"))
RMenu.Add('K_Touches', 'Touches', RageUI.CreateSubMenu(RMenu:Get('K_Touches', 'main'), "Touches", "Touches"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('K_Touches', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~h~~r~Touches~r~", nil, {RightLabel = "~o~→~o~"}, true, function(Hovered, Active, Selected)
            end, RMenu:Get('K_Touches', 'Touches'))

        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('K_Touches', 'Touches'), true, true, true, function()


                RageUI.Separator("~y~~h~↓ Touches : ↓~y~")
        RageUI.ButtonWithStyle("~b~Téléphone~b~","Le téléphone vous sert pour envoyer des smg et appeller des amis ect",{RightLabel = "F1"}, true, function(Hovered, Active, Selected)
        end)
                        RageUI.Separator("~r~------------------------~r~")
        RageUI.ButtonWithStyle("~b~Inventaire~b~", "L'inventaire sert a manger et boire quand vous avez besoin de manger et boire",{RightLabel = "F2"}, true, function(Hovered, Active, Selected)
        end)
                        RageUI.Separator("~r~------------------------~r~")
        RageUI.ButtonWithStyle("~b~PorteFeuille~b~", "Ceci sert a voir votre montant d'argent",{RightLabel = "F5"}, true, function(Hovered, Active, Selected)
        end)
                        RageUI.Separator("~r~------------------------~r~")
        RageUI.ButtonWithStyle("~b~Menu Job~b~", "Pour ouvrir votre menu job et interagir avec d'autres personnes",{RightLabel = "F6"}, true, function(Hovered, Active, Selected)
        end)
                        RageUI.Separator("~r~------------------------~r~")
        RageUI.ButtonWithStyle("~b~Menu Touches~b~", "Ceci sert a voir les touches du serveur",{RightLabel = "F11"}, true, function(Hovered, Active, Selected)
        end)



            end, function()
            end)

            Citizen.Wait(0)
        end
    end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 344) then
            RageUI.Visible(RMenu:Get('K_Touches', 'main'), not RageUI.Visible(RMenu:Get('K_Touches', 'main')))
        end
    end
end)