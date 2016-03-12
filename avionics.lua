size = { 2048, 2048 }

function createDataRef(drefNamec, drefLocalc)
    defineProperty(drefNamec, createGlobalPropertyf(drefLocalc))
	
	if default ~= nil then
		setf(drefLocalc, default)
	end

    return drefLocalc
end

function createDataRefi(drefNameI, drefLocalI, default)
    defineProperty(drefNameI, createGlobalPropertyi(drefLocalI))

	if default ~= nil then
		seti(drefLocalI, default)
	end

    return drefLocalI
end

function geti(name)
	return get(globalPropertyi(name))
end

function getf(name)
	return get(globalPropertyf(name))
end

function seti(name, val)
	set(globalPropertyi(name), val)
end

function setf(name, val)
	set(globalPropertyf(name), val)
end


-- Electrical

function newNode(dref, threshold)
	node = {}
	node.dref = dref
	node.power = 0
	node.threshold = 1
	node.failed = false
	node.nodes = {}

	if threshold ~= nil then
		node.threshold = threshold
	end

	return node
end

function addNodes(node, leaves)
	new = node

	for i, x in pairs(leaves) do
		new.nodes[i] = x
	end

	return new
end

function power_(node, power, set)
	if set then
		node.power = power
	else
		node.power = node.power + power
	end

	if node.failed then
		return
	end


	for i, n in pairs(node.nodes) do
		power_(n, power, set)
	end
end

function update_(node)
	if node.failed then
		return
	end

	if node.power >= node.threshold then
		seti(node.dref, 1)
	else
		seti(node.dref, 0)
	end

	for i, n in pairs(node.nodes) do
		update_(n)
	end
end

function updateNodes(nodes, powers)
	for i, n in pairs(nodes) do
		power_(n, 0, true)
	end

	for i, n in pairs(nodes) do
		power_(n, powers[i], false)
	end

	for i, n in pairs(nodes) do
		update_(n)
	end
end


-- csd
-- oil pressure
-- outlet temp
-- rise temp
-- speed
-- disconnect

dref_eng1_ac_load = createDataRef("eng1_ac_load", "dc10/engine/eng1_ac_load", 0)
dref_eng1_dc_load = createDataRef("eng1_dc_load", "dc10/engine/eng1_dc_load", 0)
dref_eng1_csd_bad = createDataRefi("eng1_csd_bad", "dc10/engine/eng1_csd_bad", 0)

dref_eng2_ac_load = createDataRef("eng2_ac_load", "dc10/engine/eng2_ac_load", 0)
dref_eng2_dc_load = createDataRef("eng2_dc_load", "dc10/engine/eng2_dc_load", 0)
dref_eng2_csd_bad = createDataRefi("eng2_csd_bad", "dc10/engine/eng2_csd_bad", 0)

dref_eng3_ac_load = createDataRef("eng3_ac_load", "dc10/engine/eng3_ac_load", 0)
dref_eng3_dc_load = createDataRef("eng3_dc_load", "dc10/engine/eng3_dc_load", 0)
dref_eng3_csd_bad = createDataRefi("eng3_csd_bad", "dc10/engine/eng3_csd_bad", 0)


dref_gen1_vac = createDataRefi("gen1_vac", "dc10/elec/gen1_vac", 115)
dref_gen1_hz = createDataRefi("gen1_hz", "dc10/elec/gen1_hz", 400)
dref_gen1_state = createDataRefi("gen1_vac", "dc10/elec/gen1_state", 0)
dref_gen1_bus = createDataRefi("gen1_bus", "dc10/elec/gen1_bus", 0)
dref_gen1_bus_bad = createDataRefi("gen1_bus_bad", "dc10/elec/gen1_bus_bad", 0)
dref_gen1_off = createDataRefi("gen1_off", "dc10/elec/gen1_off", 0)

dref_gen2_vac = createDataRefi("gen2_vac", "dc10/elec/gen2_vac", 115)
dref_gen2_hz = createDataRefi("gen2_hz", "dc10/elec/gen2_hz", 400)
dref_gen2_state = createDataRefi("gen2_vac", "dc10/elec/gen2_state", 0)
dref_gen2_bus = createDataRefi("gen2_bus", "dc10/elec/gen2_bus", 0)
dref_gen2_bus_bad = createDataRefi("gen2_bus_bad", "dc10/elec/gen2_bus_bad", 0)
dref_gen2_off = createDataRefi("gen2_off", "dc10/elec/gen2_off", 0)

dref_gen3_vac = createDataRefi("gen3_vac", "dc10/elec/gen3_vac", 115)
dref_gen3_hz = createDataRefi("gen3_hz", "dc10/elec/gen3_hz", 400)
dref_gen3_state = createDataRefi("gen3_vac", "dc10/elec/gen3_state", 0)
dref_gen3_bus = createDataRefi("gen3_bus", "dc10/elec/gen3_bus", 0)
dref_gen3_bus_bad = createDataRefi("gen3_bus_bad", "dc10/elec/gen3_bus_bad", 0)
dref_gen3_off = createDataRefi("gen3_off", "dc10/elec/gen3_off", 0)

dref_ac_bus1_isol = createDataRefi("ac_bus1_isol", "dc10/elec/ac_bus1_isol", 0)
dref_ac_bus1_isol_dual = createDataRefi("ac_bus1_isol_dual", "dc10/elec/ac_bus1_isol_dual", 0)
dref_ac_bus1_bad = createDataRefi("ac_bus1_bad", "dc10/elec/ac_bus_bad", 0)

dref_ac_bus2_isol = createDataRefi("ac_bus2_isol", "dc10/elec/ac_bus2_isol", 0)
dref_ac_bus2_isol_dual = createDataRefi("ac_bus2_isol_dual", "dc10/elec/ac_bus2_isol_dual", 0)
dref_ac_bus2_bad = createDataRefi("ac_bus2_bad", "dc10/elec/ac_bus_bad", 0)

dref_ac_bus3_isol = createDataRefi("ac_bus3_isol", "dc10/elec/ac_bus3_isol", 0)
dref_ac_bus3_isol_dual = createDataRefi("ac_bus3_isol_dual", "dc10/elec/ac_bus3_isol_dual", 0)
dref_ac_bus3_bad = createDataRefi("ac_bus3_bad", "dc10/elec/ac_bus_bad", 0)

dref_ac_tie_bus = createDataRefi("ac_tie_bus", "dc10/elec/ac_tie_bus", 0)


gen1_bus = 0
gen2_bus = 0
gen3_bus = 0

ac_tie_bus = newNode(dref_ac_tie_bus, 1)

function update()
	-- use sim/../N1_percent[0..2]
	engine1_speed = 100
	engine2_speed = 100
	engine3_speed = 100

	gen1_bus = geti(dref_gen1_bus)
	gen2_bus = geti(dref_gen2_bus)
	gen3_bus = geti(dref_gen3_bus)

	-- instead of true use the dual land dataref
	if true then
		seti(dref_ac_bus1_isol_dual, geti(dref_ac_bus1_isol))
	end

	if geti(dref_ac_bus2_isol) == 1 and true then
		seti(dref_ac_bus2_isol_dual, 1)
	end

	if geti(dref_ac_bus3_isol) == 1 and true then
		seti(dref_ac_bus3_isol_dual, 1)
	end

	if geti(dref_gen1_hz) ~= 400 or geti(dref_gen1_vac) ~= 115 then
		gen1_bus = 0
		seti(dref_eng1_csd_bad, 1)
	else
		seti(dref_eng1_csd_bad, 0)
	end

	if geti(dref_gen2_hz) ~= 400 or geti(dref_gen2_vac) ~= 115 then
		gen2_bus = 0
		seti(dref_eng2_csd_bad, 1)
	else
		seti(dref_eng2_csd_bad, 0)
	end

	if geti(dref_gen3_hz) ~= 400 or geti(dref_gen3_vac) ~= 115 then
		gen2_bus = 0
		seti(dref_eng3_csd_bad, 1)
	else
		seti(dref_eng3_csd_bad, 0)
	end

	if engine1_speed >= 100 and geti(dref_eng1_csd_bad) == 0 then
		seti(dref_gen1_state, 1)
	end

	if engine2_speed >= 100 and geti(dref_eng2_csd_bad) == 0 then
		seti(dref_gen2_state, 1)
	end

	if engine3_speed >= 100 and geti(dref_eng3_csd_bad) == 0 then
		seti(dref_gen3_state, 1)
	end

	ac_bus1_power = 0
	ac_bus2_power = 0
	ac_bus3_power = 0

	if geti(dref_gen1_state) == 1 then
		if gen1_bus == 1 then
			if geti(dref_ac_bus1_isol) == 0 then
				ac_bus1_power = 1
			end
		end
	end

	if geti(dref_gen2_state) == 1 then
		if gen2_bus == 1 then
			if geti(dref_ac_bus2_isol) == 0 then
				ac_bus2_power = 1
			end
		end
	end

	if geti(dref_gen3_state) == 1 then
		if gen3_bus == 1 then
			if geti(dref_ac_bus3_isol) == 0 then
				ac_bus3_power = 1
			end
		end
	end

	if ac_bus1_power == 0 then
		seti(dref_ac_bus1_bad, 1)
	end

	if ac_bus2_power == 0 then
		seti(dref_ac_bus2_bad, 1)
	end

	if ac_bus3_power == 0 then
		seti(dref_ac_bus3_bad, 1)
	end

	ac_tie_bus_power = ac_bus1_power + ac_bus2_power + ac_bus3_power

	updateNodes(
	{
		ac_tie_bus
	},
	{
		ac_tie_bus_power
	})
end
