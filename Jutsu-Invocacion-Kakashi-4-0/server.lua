local tiempo = 3500

addCommandHandler("kuchiyose-ninken",
function( sourcePlayer )
if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,0,0,0,false) return end
if (getTickCount ( ) - tiempo > 10000) then
if exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,99) then
exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,5)
tiempo = getTickCount ( )
local x, y, z = getElementPosition ( sourcePlayer )
local m = math.random(-3,3)
local n = math.random(-4,4)
outputChatBox ( "!Kuchiyose Ninken¡", sourcePlayer, 0, 0, 0, false )
triggerClientEvent (sourcePlayer, "TextoinvoKakashi", sourcePlayer)
triggerClientEvent (sourcePlayer, "Sonidoinvokakashi", sourcePlayer)
triggerClientEvent (sourcePlayer, "ImagenSelloKakashi", sourcePlayer)
objeto = createObject( 2780, x, y - 2, z - 50, 0, 0, 0)  
setTimer(destroyElement, 6000, 1, objeto)
moveObject ( objeto, 4000, x , y - 2 , z - 2 )
setPedAnimation( sourcePlayer , "freeweights", "gym_free_pickup", -1, true, false, false )
setTimer (
        function ( )
            setPedAnimation(sourcePlayer,'BOMBER','BOM_Plant_2Idle',-1,false,false,false,false)
        end
        ,2100, 1
    )
setTimer (
        function ( )
			local dog1 = exports [ "SlothBot" ]:spawnBot (x+n,y-0.3,z,90,176,0,0,getPlayerTeam(sourcePlayer),0,"hunting")
			local dog2 = exports [ "SlothBot" ]:spawnBot (x,y+m,z,90,177,0,0,getPlayerTeam(sourcePlayer),0,"hunting")
			setTimer(destroyElement, 30000, 1, dog1)
			setTimer(destroyElement, 30000, 1, dog2)
        end
        ,3800, 1
    )	
else
outputChatBox("No tiene chakra suficiente!",sourcePlayer,0,0,0,false)
end
else
outputChatBox("Debes esperar 10 segundos para poder utilizar este jutsu!",sourcePlayer,255,0,0,false)
end
end)

