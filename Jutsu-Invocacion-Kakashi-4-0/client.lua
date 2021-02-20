local tunaColor = tocolor(0, 0, 0, 255)

function SonidoKakashi ()
    local sound = playSound("invoc.mp3",false)
    setSoundVolume(sound, 0.9)
	--setTimer (
        --function ( )
		--local sounda = playSound("Puff.mp3",false)
        --end
        --,2000, 1
    --)
end
addEvent ("Sonidoinvokakashi", true)
addEventHandler ("Sonidoinvokakashi", root, SonidoKakashi)


function Kakashiinvotext(p)
		addEventHandler ("onClientRender", getRootElement(), textDxEnma)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),textDxEnma) end,8000,1)
end
addEvent ("TextoinvoKakashi", true)
addEventHandler ("TextoinvoKakashi", root, Kakashiinvotext)

function textDxEnma ()
		dxDrawText("!Kuchiyose Ninken¡", 212, 611, 820, 646, tunaColor, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end




local white = tocolor(255,255,255,255)
local x, y, z = getElementPosition(getLocalPlayer())
local zdj = dxCreateTexture("Selloinvoc.png")
 
function dxDrawImage3D(x,y,z,w,h,m,c,r,...)
        local lx, ly, lz = x+w, y+h, (z+tonumber(r or 0)) or z
    return dxDrawMaterialLine3D(x,y,z, lx, ly, lz, m, h, c or white, ...)
end
 
function imagemns()
	setTimer (
        function ( )
			local gx, gy, gz = getPedBonePosition(localPlayer, 44)
			dxDrawImage3D(gx - 2.5, gy - 2, gz , 5, 5, zdj, tocolor(255,255,255,255), 0, gx-1.5, gy-1.5, gz+50 )
        end
        ,500, 1
    )
end

function ImagenSelloKakashi ()
addEventHandler("onClientPreRender", root, imagemns)
setTimer(function() removeEventHandler("onClientPreRender",getRootElement(),imagemns) end,3000,1)
end

addEvent( "ImagenSelloKakashi", true)
addEventHandler( "ImagenSelloKakashi", getRootElement(), ImagenSelloKakashi)