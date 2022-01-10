ESX = exports['es_extended']:getSharedObject()

 
RegisterCommand('fps', function()
  FPSMenu()
end)

function FPSMenu() 

    local elements = {
      {label = 'ON',		value = 'on'}, 
      {label = 'OFF',		value = 'off'},   						          
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

             if data2.current.value == 'off' then
                SetTimecycleModifier()
                ClearTimecycleModifier()
                ClearExtraTimecycleModifier()
              elseif data2.current.value == 'on' then
                SetTimecycleModifier('yell_tunnel_nodirect')
              end
            end,
      function(data2, menu2)
        menu2.close()
      end)
  end
