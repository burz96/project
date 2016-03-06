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

-- Electrical systems

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

dr1 = createDataRefi("dr1", "shaz/dr1")
dr2 = createDataRefi("dr2", "shaz/dr2")
dr3 = createDataRefi("dr3", "shaz/dr3")

foo = newNode(dr1)
bar = newNode(dr2)
qux = newNode(dr3)

bar = addNodes(bar, { foo })
qux = addNodes(qux, { foo })

function update()
	updateNodes(
	{
		bar,
		qux
	},
	{
		0,
		1
	})
end
