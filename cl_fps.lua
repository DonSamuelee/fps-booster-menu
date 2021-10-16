ESX = nil

Citizen.CreateThread(function()
      while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
      end
end)

RegisterNetEvent('fps:menu') 
AddEventHandler('fps:menu', function()
  FPSMenu()
end)

function FPSMenu() 

    local elements = {
      {label = 'OFF',		value = 'disattivato'},
      {label = 'ON',		value = 'attivato'},    						          
    }
  
    ESX.UI.Menu.CloseAll()
  
    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'donsamueloishere',
      {
        title    = 'FPS Menu',
        align    = 'top-left',
        elements = elements
        },
  
            function(data2, menu2)

             if data2.current.value == 'disattivato' then
                SetTimecycleModifier()
                ClearTimecycleModifier()
                ClearExtraTimecycleModifier()
              elseif data2.current.value == 'attivato' then
                SetTimecycleModifier('yell_tunnel_nodirect')
              end
            end,
      function(data2, menu2)
        menu2.close()
      end
    )
  end
  
