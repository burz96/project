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

components = {
	electrical {}
}

function update()
	updateAll(components)
end
