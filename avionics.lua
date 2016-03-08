size = { 2048, 2048 }

function createDataRef(drefNamec, drefLocalc)
    defineProperty(drefNamec, createGlobalPropertyf(drefLocalc))
    return drefLocalc
end

function createDataRefi(drefNameI, drefLocalI)
    defineProperty(drefNameI, createGlobalPropertyi(drefLocalI))
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

function newNode(dref)
	node = {}
	node.dref = dref
	node.power = 0
	node.nodes = {}
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

	for i, n in pairs(node.nodes) do
		power_(n, power, set)
	end
end

function update_(node)
	if node.power > 0 then
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


-- Hydraulics

drfoo = createDataRefi("foo", "dc10/foo")
drthing = createDataRefi("dr1", "dc10/dr1")
drgen1 = createDataRefi("dr2", "dc10/dr2")
drgen2 = createDataRefi("dr3", "dc10/dr3")
drapu = createDataRefi("dr4", "dc10/dr4")
drapuswitch = createDataRefi("dr5", "dc10/test")

thing = newNode(drthing)
gen1 = newNode(drgen1)
gen2 = newNode(drgen2)
apu = newNode(drapu)

gen1 = addNodes(gen1, { thing })
gen2 = addNodes(gen2, { thing })
apu = addNodes(apu, { thing })

foo = 0

apu_timer = 0

seti(drapuswitch, 1)

gen1_power = 0
gen2_power = 0
apu_power = 0

function update()
	print(geti(drapuswitch))

	if apu_timer > 88 then
		gen1_power = 1
		gen2_power = 1
	end

	if gen1_power == 0 and gen2_power == 0 then
		apu_power = geti(drapuswitch)
	else
		apu_power = 0
	end

	if apu_power > 0 then
		if apu_timer < 90 then
			apu_timer = apu_timer + 1
		end
	else
		apu_timer = apu_timer - 1
	end

	print("timer: ", apu_timer)

	updateNodes(
	{
		gen1,
		gen2,
		apu
	},
	{
		gen1_power,
		gen2_power,
		apu_power
	})

	print("thing power: ", thing.power, " apu: ", apu.power, " generators: ", geti(gen1.dref), geti(gen2.dref))

	if thing.power == 0 then
		if foo > 0 then
			foo = foo - 1
		end
	else
		if foo < 100 then
			foo = foo + 1
		end
	end

	seti(drfoo, foo)
end
