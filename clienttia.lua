ESX = nil

















local PlayerData = {}



Citizen.CreateThread(function()



	while ESX == nil do

		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

		Citizen.Wait(0)

	end



end)



RegisterNetEvent('esx:playerLoaded')

AddEventHandler('esx:playerLoaded', function(xPlayer)

  PlayerData = xPlayer

end)



RegisterNetEvent('esx:setJob')

AddEventHandler('esx:setJob', function(job)

  PlayerData.job = job

end)



--Config

local gunshotAlert = true 

local carJackingAlert = true 

local aserobAlert = true

local caraserobAlert = true

local huumeAlert = true

local myyntiAlert = true

local blipGunTime = 30 

local blipJackingTime = 30

local blipaseRob = 45

local blipcaraseRob = 45

local blipHuumeTime = 30

local blipMyyntiTime = 30



RegisterNetEvent('outlawNotify')

AddEventHandler('outlawNotify', function(alert)

		if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

			ESX.ShowAdvancedNotification('Ilmoitus', alert, '', "CHAR_CALL911", 1)

			--PlaySound(-1, "Hang_Up", "Phone_SoundSet_Michael", 0, 0, 1)

        end

end)



RegisterNetEvent('thiefPlace')

AddEventHandler('thiefPlace', function(tx, ty, tz)

	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

		if carJackingAlert then

			local transT = 400

			local thiefBlip = AddBlipForCoord(tx, ty, tz)

			SetBlipSprite(thiefBlip,  225)

			SetBlipDisplay(thiefBlip, 4)

			SetBlipColour(thiefBlip,  1)

			SetBlipScale(thiefBlip, 0.7)

			SetBlipAlpha(thiefBlip,  transT)

			--SetBlipFlashes(thiefBlip, true)

			SetBlipAsShortRange(thiefBlip,  true)



			BeginTextCommandSetBlipName("STRING")

    		AddTextComponentString(('Autovarkaus'))

    		EndTextCommandSetBlipName(thiefBlip)

			while transT ~= 0 do

				Wait(blipJackingTime * 4)

				transT = transT - 1

				SetBlipAlpha(thiefBlip,  transT)

				if transT == 0 then

					SetBlipSprite(thiefBlip,  2)

					return

				end

			end

			

		end

	end

end)



RegisterNetEvent('gunshotPlace')

AddEventHandler('gunshotPlace', function(gx, gy, gz)

	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

		if gunshotAlert then

			local transG = 400

			local gunshotBlip = AddBlipForCoord(gx, gy, gz)

			SetBlipSprite(gunshotBlip,  313)

			SetBlipDisplay(gunshotBlip, 4)

			SetBlipColour(gunshotBlip,  1)

			SetBlipScale(gunshotBlip, 0.6)

			SetBlipAlpha(gunshotBlip,  transG)

			--SetBlipFlashes(gunshotBlip, true)

			SetBlipAsShortRange(gunshotBlip,  true)



			BeginTextCommandSetBlipName("STRING")

    		AddTextComponentString(('Ampumavälikohtaus'))

    		EndTextCommandSetBlipName(gunshotBlip)

			while transG ~= 0 do

				Wait(blipGunTime * 4)

				transG = transG - 1

				SetBlipAlpha(gunshotBlip,  transG)

				if transG == 0 then

					SetBlipSprite(gunshotBlip,  2)

					return

				end

			end

		   

		end

	end

end)



RegisterNetEvent('asePlace')

AddEventHandler('asePlace', function(ex, ey, ez)

	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

		if aserobAlert then

			local transG = 400

			local aseBlip = AddBlipForCoord(ex, ey, ez)

			SetBlipSprite(aseBlip, 409)

			SetBlipDisplay(aseBlip, 4)

			SetBlipColour(aseBlip, 1)

			SetBlipScale(aseBlip, 0.8)

			SetBlipAlpha(aseBlip, transG)

			--SetBlipFlashes(aseBlip, true)

			SetBlipAsShortRange(aseBlip,  true)



			BeginTextCommandSetBlipName("STRING")

    		AddTextComponentString(('Aseellinen Ryöstö'))

    		EndTextCommandSetBlipName(aseBlip)

			while transG ~= 0 do

				Wait(blipaseRob * 4)

				transG = transG - 1

				SetBlipAlpha(aseBlip, transG)

				if transG == 0 then

					SetBlipSprite(aseBlip, 2)

					return

				end

			end

		   

		end

	end

end)



RegisterNetEvent('carPlace')

AddEventHandler('carPlace', function(sx, sy, sz)

	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

		if caraserobAlert then

			local transG = 400

			local caraseBlip = AddBlipForCoord(sx, sy, sz)

			SetBlipSprite(caraseBlip,  229)

			SetBlipDisplay(caraseBlip, 4)

			SetBlipColour(caraseBlip,  1)

			SetBlipScale(caraseBlip, 0.8)

			SetBlipAlpha(caraseBlip,  transG)

			--SetBlipFlashes(caraseBlip, true)

			SetBlipAsShortRange(caraseBlip,  true)



			BeginTextCommandSetBlipName("STRING")

    		AddTextComponentString(('Aseellinen Ajoneuvovarkaus'))

    		EndTextCommandSetBlipName(caraseBlip)

			while transG ~= 0 do

				Wait(blipcaraseRob * 4)

				transG = transG - 1

				SetBlipAlpha(caraseBlip,  transG)

				if transG == 0 then

					SetBlipSprite(caraseBlip,  2)

					return

				end

			end

		   

		end

	end

end)



RegisterNetEvent('huumeMyynti')

AddEventHandler('huumeMyynti', function(bx, by, bz)

	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

		if huumeAlert then

			local transG = 400

			local huumeBlip = AddBlipForCoord(bx, by, bz)

			SetBlipSprite(huumeBlip,  403)

			SetBlipDisplay(huumeBlip, 4)

			SetBlipColour(huumeBlip,  1)

			SetBlipScale(huumeBlip, 0.8)

			SetBlipAlpha(huumeBlip,  transG)

			--SetBlipFlashes(huumeBlip, true)

			SetBlipAsShortRange(huumeBlip,  true)



			BeginTextCommandSetBlipName("STRING")

    		AddTextComponentString(('Huumemyynti'))

    		EndTextCommandSetBlipName(huumeBlip)

			while transG ~= 0 do

				Wait(blipHuumeTime * 4)

				transG = transG - 1

				SetBlipAlpha(huumeBlip,  transG)

				if transG == 0 then

					SetBlipSprite(huumeBlip,  2)

					return

				end

			end

		   

		end

	end

end)



RegisterNetEvent('laitonMyynti')

AddEventHandler('laitonMyynti', function(dx, dy, dz)

	if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

		if myyntiAlert then

			local transG = 400

			local myyntiBlip = AddBlipForCoord(dx, dy, dz)

			SetBlipSprite(myyntiBlip,  500)

			SetBlipDisplay(myyntiBlip, 4)

			SetBlipColour(myyntiBlip,  1)

			SetBlipScale(myyntiBlip, 0.8)

			SetBlipAlpha(myyntiBlip,  transG)

			--SetBlipFlashes(myyntiBlip, true)

			SetBlipAsShortRange(myyntiBlip,  true)



			BeginTextCommandSetBlipName("STRING")

    		AddTextComponentString(('Laiton Katukauppa'))

    		EndTextCommandSetBlipName(myyntiBlip)

			while transG ~= 0 do

				Wait(blipMyyntiTime * 4)

				transG = transG - 1

				SetBlipAlpha(myyntiBlip,  transG)

				if transG == 0 then

					SetBlipSprite(myyntiBlip,  2)

					return

				end

			end

		   

		end

	end

end)



Citizen.CreateThread(function()

	while true do

		Citizen.Wait(1)

		local pelaaja = GetPlayerPed(-1)

		if IsPedShooting(pelaaja) then

			if IsPedCurrentWeaponSilenced(pelaaja) == false and GetSelectedPedWeapon(pelaaja) == GetHashKey('WEAPON_STUNGUN') == false then

				local pelpos = GetEntityCoords(pelaaja,  true)

				TriggerServerEvent('esx_rikosilmotukset:ammuntakohta', pelpos.x, pelpos.y, pelpos.x)

				TriggerServerEvent('esx_rikosilmotukset:ilmoitus', "~r~Ampumavälikohtaus")

				Citizen.Wait(1500)

			end

		end

	end

end)



Citizen.CreateThread(function()

	while true do

		Citizen.Wait(1)

		local pelaaja = GetPlayerPed(-1)

		if DoesEntityExist(GetVehiclePedIsTryingToEnter(pelaaja)) then

			local auto = GetVehiclePedIsTryingToEnter(pelaaja)

			local pedd = GetPedInVehicleSeat(auto, -1)

			if DoesEntityExist(pedd) then

				if not IsPedAPlayer(pedd) then

					Citizen.Wait(5000)

					if not IsPedSittingInAnyVehicle(pedd) then

						GiveWeaponToPed(pedd, GetHashKey("weapon_pistol"), 250, false)

						SetAiWeaponDamageModifier(1.0)

						SetPedAccuracy(pedd, 100)

						SetPedShootRate(pedd, 1000)

						TaskShootAtEntity(pedd, pelaaja, 30000, 0xC6EE6B4C)

						local pelpos = GetEntityCoords(pelaaja, true)

						TriggerServerEvent('esx_rikosilmotukset:varkauskohta', pelpos.x, pelpos.y, pelpos.x)

						TriggerServerEvent('esx_rikosilmotukset:ilmoitus', "~r~Ajoneuvovarkaus")

						SetPedAsNoLongerNeeded(pedd)

					end

				end

			end

		end

	end

end)
